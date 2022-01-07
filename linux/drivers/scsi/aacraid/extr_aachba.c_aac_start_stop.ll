; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_6__, {}*, %struct.scsi_device* }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.fib = type { i32 }
%struct.aac_power_management = type { i8*, i8*, i8*, i8*, i8* }
%struct.aac_dev = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AAC_OPTION_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@VM_ContainerConfig = common dso_local global i32 0, align 4
@CT_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@CT_PM_START_UNIT = common dso_local global i32 0, align 4
@CT_PM_STOP_UNIT = common dso_local global i32 0, align 4
@CT_PM_UNIT_IMMEDIATE = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@aac_start_stop_callback = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aac_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_start_stop(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib*, align 8
  %6 = alloca %struct.aac_power_management*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.aac_dev*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %7, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.aac_dev*
  store %struct.aac_dev* %17, %struct.aac_dev** %8, align 8
  %18 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %19 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AAC_OPTION_POWER_MANAGEMENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* @COMMAND_COMPLETE, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* @SAM_STAT_GOOD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 3
  %37 = bitcast {}** %36 to i32 (%struct.scsi_cmnd*)**
  %38 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %37, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = call i32 %38(%struct.scsi_cmnd* %39)
  store i32 0, i32* %2, align 4
  br label %124

41:                                               ; preds = %1
  %42 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %41
  %49 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = call %struct.fib* @aac_fib_alloc_tag(%struct.aac_dev* %49, %struct.scsi_cmnd* %50)
  store %struct.fib* %51, %struct.fib** %5, align 8
  %52 = load %struct.fib*, %struct.fib** %5, align 8
  %53 = call i32 @aac_fib_init(%struct.fib* %52)
  %54 = load %struct.fib*, %struct.fib** %5, align 8
  %55 = call %struct.aac_power_management* @fib_data(%struct.fib* %54)
  store %struct.aac_power_management* %55, %struct.aac_power_management** %6, align 8
  %56 = load i32, i32* @VM_ContainerConfig, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %59 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @CT_POWER_MANAGEMENT, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %63 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %48
  %72 = load i32, i32* @CT_PM_START_UNIT, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  br label %77

74:                                               ; preds = %48
  %75 = load i32, i32* @CT_PM_STOP_UNIT, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i8* [ %73, %71 ], [ %76, %74 ]
  %79 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %80 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %82 = call i32 @sdev_id(%struct.scsi_device* %81)
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %85 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @CT_PM_UNIT_IMMEDIATE, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  br label %97

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i8* [ %95, %93 ], [ null, %96 ]
  %99 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %100 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @ContainerCommand, align 4
  %106 = load %struct.fib*, %struct.fib** %5, align 8
  %107 = load i32, i32* @FsaNormal, align 4
  %108 = load i64, i64* @aac_start_stop_callback, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = bitcast %struct.scsi_cmnd* %110 to i8*
  %112 = call i32 @aac_fib_send(i32 %105, %struct.fib* %106, i32 40, i32 %107, i32 0, i32 1, i32 %109, i8* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @EINPROGRESS, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %124

118:                                              ; preds = %97
  %119 = load %struct.fib*, %struct.fib** %5, align 8
  %120 = call i32 @aac_fib_complete(%struct.fib* %119)
  %121 = load %struct.fib*, %struct.fib** %5, align 8
  %122 = call i32 @aac_fib_free(%struct.fib* %121)
  %123 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %118, %117, %46, %25
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.fib* @aac_fib_alloc_tag(%struct.aac_dev*, %struct.scsi_cmnd*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local %struct.aac_power_management* @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
