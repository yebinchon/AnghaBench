; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_probe_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_probe_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.scsi_cmnd = type { void (%struct.scsi_device*)*, i32, %struct.TYPE_4__, %struct.scsi_cmnd*, i32, i64, %struct.TYPE_3__ }
%struct.scsi_device = type { {}*, i32, %struct.TYPE_4__, %struct.scsi_device*, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aac_probe_container_callback1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_probe_container(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.scsi_device* @kmalloc(i32 48, i32 %9)
  %11 = bitcast %struct.scsi_device* %10 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.scsi_device* @kmalloc(i32 48, i32 %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %7, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = icmp ne %struct.scsi_cmnd* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %18 = icmp ne %struct.scsi_device* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = bitcast %struct.scsi_cmnd* %20 to %struct.scsi_device*
  %22 = call i32 @kfree(%struct.scsi_device* %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %24 = call i32 @kfree(%struct.scsi_device* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %16
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i64, i64* @aac_probe_container_callback1, align 8
  %32 = inttoptr i64 %31 to void (%struct.scsi_cmnd*)*
  %33 = bitcast void (%struct.scsi_cmnd*)* %32 to void (%struct.scsi_device*)*
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  store void (%struct.scsi_device*)* %33, void (%struct.scsi_device*)** %35, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %37 = bitcast %struct.scsi_device* %36 to %struct.scsi_cmnd*
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 3
  store %struct.scsi_cmnd* %37, %struct.scsi_cmnd** %39, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %46 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %51 = bitcast %struct.scsi_cmnd* %50 to %struct.scsi_device*
  %52 = load i64, i64* @aac_probe_container_callback1, align 8
  %53 = call i64 @_aac_probe_container(%struct.scsi_device* %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %63, %55
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 3
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %58, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %61 = bitcast %struct.scsi_device* %60 to %struct.scsi_cmnd*
  %62 = icmp eq %struct.scsi_cmnd* %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (...) @schedule()
  br label %56

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %27
  %67 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %68 = call i32 @kfree(%struct.scsi_device* %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = bitcast %struct.scsi_cmnd* %73 to %struct.scsi_device*
  %75 = call i32 @kfree(%struct.scsi_device* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.scsi_device* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_device*) #1

declare dso_local i64 @_aac_probe_container(%struct.scsi_device*, i64) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
