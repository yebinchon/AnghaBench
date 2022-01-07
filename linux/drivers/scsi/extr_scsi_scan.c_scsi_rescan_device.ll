; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_rescan_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_rescan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_device*)* }
%struct.scsi_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_rescan_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.scsi_device* @to_scsi_device(%struct.device* %5)
  store %struct.scsi_device* %6, %struct.scsi_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @device_lock(%struct.device* %7)
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = call i32 @scsi_attach_vpd(%struct.scsi_device* %9)
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %19, align 8
  %21 = icmp ne i32 (%struct.scsi_device*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %26, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = call i32 %27(%struct.scsi_device* %28)
  br label %30

30:                                               ; preds = %22, %15, %1
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @try_module_get(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  %44 = load %struct.device*, %struct.device** %2, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call %struct.scsi_driver* @to_scsi_driver(%struct.TYPE_4__* %46)
  store %struct.scsi_driver* %47, %struct.scsi_driver** %4, align 8
  %48 = load %struct.scsi_driver*, %struct.scsi_driver** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %48, i32 0, i32 0
  %50 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %49, align 8
  %51 = icmp ne i32 (%struct.device.0*)* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.scsi_driver*, %struct.scsi_driver** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %53, i32 0, i32 0
  %55 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %54, align 8
  %56 = load %struct.device*, %struct.device** %2, align 8
  %57 = bitcast %struct.device* %56 to %struct.device.0*
  %58 = call i32 %55(%struct.device.0* %57)
  br label %59

59:                                               ; preds = %52, %43
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @module_put(i32 %64)
  br label %66

66:                                               ; preds = %59, %35, %30
  %67 = load %struct.device*, %struct.device** %2, align 8
  %68 = call i32 @device_unlock(%struct.device* %67)
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @scsi_attach_vpd(%struct.scsi_device*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local %struct.scsi_driver* @to_scsi_driver(%struct.TYPE_4__*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
