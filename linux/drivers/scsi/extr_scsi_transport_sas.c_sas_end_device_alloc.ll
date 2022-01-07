; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_end_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_end_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sas_port = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_end_device = type { %struct.sas_rphy }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_end_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"end_device-%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"end_device-%d:%d\00", align 1
@SAS_END_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_rphy* @sas_end_device_alloc(%struct.sas_port* %0) #0 {
  %2 = alloca %struct.sas_rphy*, align 8
  %3 = alloca %struct.sas_port*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_end_device*, align 8
  %6 = alloca %struct.sas_rphy*, align 8
  store %struct.sas_port* %0, %struct.sas_port** %3, align 8
  %7 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %8 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %7, i32 0, i32 1
  %9 = call %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_9__* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sas_end_device* @kzalloc(i32 16, i32 %10)
  store %struct.sas_end_device* %11, %struct.sas_end_device** %5, align 8
  %12 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %13 = icmp ne %struct.sas_end_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sas_rphy* null, %struct.sas_rphy** %2, align 8
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %17 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %17, i32 0, i32 0
  %19 = call i32 @device_initialize(%struct.TYPE_8__* %18)
  %20 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %21 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %20, i32 0, i32 1
  %22 = call i32 @get_device(%struct.TYPE_9__* %21)
  %23 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %24 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @sas_end_device_release, align 4
  %28 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %29 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %33 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @scsi_is_sas_expander_device(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %15
  %39 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %40 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.sas_rphy* @dev_to_rphy(i32 %42)
  store %struct.sas_rphy* %43, %struct.sas_rphy** %6, align 8
  %44 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %45 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %45, i32 0, i32 0
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %51 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %54 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  br label %68

57:                                               ; preds = %15
  %58 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %59 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %59, i32 0, i32 0
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  %65 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %38
  %69 = load i32, i32* @SAS_END_DEVICE, align 4
  %70 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %71 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %75 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %74, i32 0, i32 0
  %76 = call i32 @sas_rphy_initialize(%struct.sas_rphy* %75)
  %77 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %78 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %78, i32 0, i32 0
  %80 = call i32 @transport_setup_device(%struct.TYPE_8__* %79)
  %81 = load %struct.sas_end_device*, %struct.sas_end_device** %5, align 8
  %82 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %81, i32 0, i32 0
  store %struct.sas_rphy* %82, %struct.sas_rphy** %2, align 8
  br label %83

83:                                               ; preds = %68, %14
  %84 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  ret %struct.sas_rphy* %84
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_9__*) #1

declare dso_local %struct.sas_end_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @get_device(%struct.TYPE_9__*) #1

declare dso_local i64 @scsi_is_sas_expander_device(i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32, ...) #1

declare dso_local i32 @sas_rphy_initialize(%struct.sas_rphy*) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
