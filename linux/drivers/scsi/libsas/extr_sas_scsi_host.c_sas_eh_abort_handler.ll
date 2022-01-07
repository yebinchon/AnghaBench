; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32 }
%struct.sas_task = type { i32 }
%struct.domain_device = type { i32 }
%struct.sas_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sas_task*)* }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no task to abort\0A\00", align 1
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.sas_internal*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = call %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd* %11)
  store %struct.sas_task* %12, %struct.sas_task** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = call %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd* %18)
  store %struct.domain_device* %19, %struct.domain_device** %7, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sas_internal* @to_sas_internal(i32 %22)
  store %struct.sas_internal* %23, %struct.sas_internal** %8, align 8
  %24 = load %struct.sas_internal*, %struct.sas_internal** %8, align 8
  %25 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %27, align 8
  %29 = icmp ne i32 (%struct.sas_task*)* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @FAILED, align 4
  store i32 %31, i32* %2, align 4
  br label %83

32:                                               ; preds = %1
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %39 = call i64 @dev_is_sata(%struct.domain_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  %52 = load i32, i32* @FAILED, align 4
  store i32 %52, i32* %2, align 4
  br label %83

53:                                               ; preds = %41, %32
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  %59 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %60 = icmp ne %struct.sas_task* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.sas_internal*, %struct.sas_internal** %8, align 8
  %63 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %65, align 8
  %67 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %68 = call i32 %66(%struct.sas_task* %67)
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %53
  %70 = call i32 @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %61
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @FAILED, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %79, %46, %30
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd*) #1

declare dso_local %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
