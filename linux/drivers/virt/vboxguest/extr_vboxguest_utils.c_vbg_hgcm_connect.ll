; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vmmdev_hgcm_service_location = type { i32 }
%struct.vmmdev_hgcm_connect = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@VMMDEVREQ_HGCM_CONNECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VINF_HGCM_ASYNC_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_hgcm_connect(%struct.vbg_dev* %0, i64 %1, %struct.vmmdev_hgcm_service_location* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vbg_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmmdev_hgcm_service_location*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vmmdev_hgcm_connect*, align 8
  %13 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.vmmdev_hgcm_service_location* %2, %struct.vmmdev_hgcm_service_location** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.vmmdev_hgcm_connect* null, %struct.vmmdev_hgcm_connect** %12, align 8
  %14 = load i32, i32* @VMMDEVREQ_HGCM_CONNECT, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.vmmdev_hgcm_connect* @vbg_req_alloc(i32 32, i32 %14, i64 %15)
  store %struct.vmmdev_hgcm_connect* %16, %struct.vmmdev_hgcm_connect** %12, align 8
  %17 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %18 = icmp ne %struct.vmmdev_hgcm_connect* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %64

22:                                               ; preds = %5
  %23 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %24 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %27 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %26, i32 0, i32 2
  %28 = load %struct.vmmdev_hgcm_service_location*, %struct.vmmdev_hgcm_service_location** %9, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.vmmdev_hgcm_service_location* %28, i32 4)
  %30 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %31 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.vbg_dev*, %struct.vbg_dev** %7, align 8
  %33 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %34 = call i32 @vbg_req_perform(%struct.vbg_dev* %32, %struct.vmmdev_hgcm_connect* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @VINF_HGCM_ASYNC_EXECUTE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load %struct.vbg_dev*, %struct.vbg_dev** %7, align 8
  %40 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vbg_dev*, %struct.vbg_dev** %7, align 8
  %43 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %44 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %43, i32 0, i32 0
  %45 = call i32 @hgcm_req_done(%struct.vbg_dev* %42, %struct.TYPE_2__* %44)
  %46 = call i32 @wait_event(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %22
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %52 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %56 = getelementptr inbounds %struct.vmmdev_hgcm_connect, %struct.vmmdev_hgcm_connect* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.vmmdev_hgcm_connect*, %struct.vmmdev_hgcm_connect** %12, align 8
  %61 = call i32 @vbg_req_free(%struct.vmmdev_hgcm_connect* %60, i32 32)
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %19
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.vmmdev_hgcm_connect* @vbg_req_alloc(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.vmmdev_hgcm_service_location*, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_hgcm_connect*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @hgcm_req_done(%struct.vbg_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_hgcm_connect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
