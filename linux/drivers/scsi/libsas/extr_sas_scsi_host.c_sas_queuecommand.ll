; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }
%struct.sas_internal = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.sas_task*, i32)* }
%struct.sas_task = type { i32 }
%struct.domain_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SAS_DEV_GONE = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lldd_execute_task returned: %d\0A\00", align 1
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4
@DID_SOFT_ERROR = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.sas_internal*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sas_internal* @to_sas_internal(i32 %12)
  store %struct.sas_internal* %13, %struct.sas_internal** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = call %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd* %14)
  store %struct.domain_device* %15, %struct.domain_device** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @SAS_DEV_GONE, align 4
  %17 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @DID_BAD_TARGET, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %96

26:                                               ; preds = %2
  %27 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %28 = call i64 @dev_is_sata(%struct.domain_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %32 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_lock_irq(i32 %36)
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @ata_sas_queuecmd(%struct.scsi_cmnd* %38, %struct.TYPE_6__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %45 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @spin_unlock_irq(i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %102

52:                                               ; preds = %26
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %54 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.sas_task* @sas_create_task(%struct.scsi_cmnd* %53, %struct.domain_device* %54, i32 %55)
  store %struct.sas_task* %56, %struct.sas_task** %8, align 8
  %57 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %58 = icmp ne %struct.sas_task* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %60, i32* %3, align 4
  br label %102

61:                                               ; preds = %52
  %62 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %63 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.sas_task*, i32)*, i32 (%struct.sas_task*, i32)** %65, align 8
  %67 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 %66(%struct.sas_task* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %74

73:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %102

74:                                               ; preds = %72
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = call i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd* %77, i32* null)
  %79 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %80 = call i32 @sas_free_task(%struct.sas_task* %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @DID_SOFT_ERROR, align 4
  %87 = shl i32 %86, 16
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %95

90:                                               ; preds = %74
  %91 = load i32, i32* @DID_ERROR, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %21
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 1
  %99 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %98, align 8
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %101 = call i32 %99(%struct.scsi_cmnd* %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %73, %59, %30
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @ata_sas_queuecmd(%struct.scsi_cmnd*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.sas_task* @sas_create_task(%struct.scsi_cmnd*, %struct.domain_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
