; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_cancel_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_cancel_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, %struct.vmmdev_hgcm_call* }
%struct.vmmdev_hgcm_call = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VERR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@VMMDEV_HGCM_REQ_CANCELLED = common dso_local global i32 0, align 4
@VMMDEVREQ_HGCM_CANCEL = common dso_local global i32 0, align 4
@VERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VERR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vmmdev_hgcm_call*)* @hgcm_cancel_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgcm_cancel_call(%struct.vbg_dev* %0, %struct.vmmdev_hgcm_call* %1) #0 {
  %3 = alloca %struct.vbg_dev*, align 8
  %4 = alloca %struct.vmmdev_hgcm_call*, align 8
  %5 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %3, align 8
  store %struct.vmmdev_hgcm_call* %1, %struct.vmmdev_hgcm_call** %4, align 8
  %6 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %4, align 8
  %10 = call i32 @virt_to_phys(%struct.vmmdev_hgcm_call* %9)
  %11 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %11, i32 0, i32 1
  %13 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %12, align 8
  %14 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %16 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %16, i32 0, i32 1
  %18 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %19 = call i32 @vbg_req_perform(%struct.vbg_dev* %15, %struct.vmmdev_hgcm_call* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VERR_NOT_IMPLEMENTED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load i32, i32* @VMMDEV_HGCM_REQ_CANCELLED, align 4
  %28 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %4, align 8
  %29 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @VMMDEVREQ_HGCM_CANCEL, align 4
  %34 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %4, align 8
  %35 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %39 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %4, align 8
  %40 = call i32 @vbg_req_perform(%struct.vbg_dev* %38, %struct.vmmdev_hgcm_call* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @VERR_INVALID_PARAMETER, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @VERR_NOT_FOUND, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %26
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @VMMDEV_HGCM_REQ_CANCELLED, align 4
  %52 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %4, align 8
  %53 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @virt_to_phys(%struct.vmmdev_hgcm_call*) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_hgcm_call*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
