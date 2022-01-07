; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vmmdev_hgcm_disconnect = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@VMMDEVREQ_HGCM_DISCONNECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VINF_HGCM_ASYNC_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_hgcm_disconnect(%struct.vbg_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbg_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vmmdev_hgcm_disconnect*, align 8
  %11 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.vmmdev_hgcm_disconnect* null, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %12 = load i32, i32* @VMMDEVREQ_HGCM_DISCONNECT, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.vmmdev_hgcm_disconnect* @vbg_req_alloc(i32 24, i32 %12, i32 %13)
  store %struct.vmmdev_hgcm_disconnect* %14, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %15 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %16 = icmp ne %struct.vmmdev_hgcm_disconnect* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %22 = getelementptr inbounds %struct.vmmdev_hgcm_disconnect, %struct.vmmdev_hgcm_disconnect* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %26 = getelementptr inbounds %struct.vmmdev_hgcm_disconnect, %struct.vmmdev_hgcm_disconnect* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %28 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %29 = call i32 @vbg_req_perform(%struct.vbg_dev* %27, %struct.vmmdev_hgcm_disconnect* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @VINF_HGCM_ASYNC_EXECUTE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %35 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %38 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %39 = getelementptr inbounds %struct.vmmdev_hgcm_disconnect, %struct.vmmdev_hgcm_disconnect* %38, i32 0, i32 0
  %40 = call i32 @hgcm_req_done(%struct.vbg_dev* %37, %struct.TYPE_2__* %39)
  %41 = call i32 @wait_event(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %33, %20
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %47 = getelementptr inbounds %struct.vmmdev_hgcm_disconnect, %struct.vmmdev_hgcm_disconnect* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.vmmdev_hgcm_disconnect*, %struct.vmmdev_hgcm_disconnect** %10, align 8
  %52 = call i32 @vbg_req_free(%struct.vmmdev_hgcm_disconnect* %51, i32 24)
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.vmmdev_hgcm_disconnect* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_hgcm_disconnect*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @hgcm_req_done(%struct.vbg_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_hgcm_disconnect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
