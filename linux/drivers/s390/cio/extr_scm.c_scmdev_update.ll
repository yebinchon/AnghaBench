; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scmdev_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scmdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sale = type { i64, i64 }
%struct.scm_driver = type { i32 (%struct.scm_device.0*, i32)* }
%struct.scm_device.0 = type opaque

@SCM_CHANGE = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_device*, %struct.sale*)* @scmdev_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmdev_update(%struct.scm_device* %0, %struct.sale* %1) #0 {
  %3 = alloca %struct.scm_device*, align 8
  %4 = alloca %struct.sale*, align 8
  %5 = alloca %struct.scm_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.scm_device* %0, %struct.scm_device** %3, align 8
  store %struct.sale* %1, %struct.sale** %4, align 8
  %7 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %8 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %7, i32 0, i32 0
  %9 = call i32 @device_lock(%struct.TYPE_5__* %8)
  %10 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %11 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sale*, %struct.sale** %4, align 8
  %15 = getelementptr inbounds %struct.sale, %struct.sale* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %20 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sale*, %struct.sale** %4, align 8
  %24 = getelementptr inbounds %struct.sale, %struct.sale* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br label %27

27:                                               ; preds = %18, %2
  %28 = phi i1 [ true, %2 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.sale*, %struct.sale** %4, align 8
  %31 = getelementptr inbounds %struct.sale, %struct.sale* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %34 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.sale*, %struct.sale** %4, align 8
  %37 = getelementptr inbounds %struct.sale, %struct.sale* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %40 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %43 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %27
  br label %70

48:                                               ; preds = %27
  %49 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %50 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.scm_driver* @to_scm_drv(i32 %52)
  store %struct.scm_driver* %53, %struct.scm_driver** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %58 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %57, i32 0, i32 0
  %59 = load i32 (%struct.scm_device.0*, i32)*, i32 (%struct.scm_device.0*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.scm_device.0*, i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %63 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %62, i32 0, i32 0
  %64 = load i32 (%struct.scm_device.0*, i32)*, i32 (%struct.scm_device.0*, i32)** %63, align 8
  %65 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %66 = bitcast %struct.scm_device* %65 to %struct.scm_device.0*
  %67 = load i32, i32* @SCM_CHANGE, align 4
  %68 = call i32 %64(%struct.scm_device.0* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %56, %48
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %72 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %71, i32 0, i32 0
  %73 = call i32 @device_unlock(%struct.TYPE_5__* %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %78 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* @KOBJ_CHANGE, align 4
  %81 = call i32 @kobject_uevent(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @device_lock(%struct.TYPE_5__*) #1

declare dso_local %struct.scm_driver* @to_scm_drv(i32) #1

declare dso_local i32 @device_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
