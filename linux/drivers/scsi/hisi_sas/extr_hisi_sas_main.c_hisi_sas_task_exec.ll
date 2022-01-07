; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_task_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_task_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32 (%struct.sas_task*)*, %struct.task_status_struct, %struct.domain_device* }
%struct.task_status_struct = type { i32, i32 }
%struct.domain_device = type { i64, %struct.asd_sas_port* }
%struct.asd_sas_port = type { i32 }
%struct.hisi_sas_tmf_task = type { i32 }
%struct.hisi_hba = type { %struct.TYPE_2__*, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_sas_dq*)* }
%struct.hisi_sas_dq = type { i32 }
%struct.device = type { i32 }

@SAS_TASK_UNDELIVERED = common dso_local global i32 0, align 4
@SAS_PHY_DOWN = common dso_local global i32 0, align 4
@SAS_SATA_DEV = common dso_local global i64 0, align 8
@ECOMM = common dso_local global i32 0, align 4
@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"task exec: failed[%d]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*, i32, i32, %struct.hisi_sas_tmf_task*)* @hisi_sas_task_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_task_exec(%struct.sas_task* %0, i32 %1, i32 %2, %struct.hisi_sas_tmf_task* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_tmf_task*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.hisi_hba*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.domain_device*, align 8
  %16 = alloca %struct.asd_sas_port*, align 8
  %17 = alloca %struct.hisi_sas_dq*, align 8
  %18 = alloca %struct.task_status_struct*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hisi_sas_tmf_task* %3, %struct.hisi_sas_tmf_task** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 2
  %21 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  store %struct.domain_device* %21, %struct.domain_device** %15, align 8
  %22 = load %struct.domain_device*, %struct.domain_device** %15, align 8
  %23 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %22, i32 0, i32 1
  %24 = load %struct.asd_sas_port*, %struct.asd_sas_port** %23, align 8
  store %struct.asd_sas_port* %24, %struct.asd_sas_port** %16, align 8
  store %struct.hisi_sas_dq* null, %struct.hisi_sas_dq** %17, align 8
  %25 = load %struct.asd_sas_port*, %struct.asd_sas_port** %16, align 8
  %26 = icmp ne %struct.asd_sas_port* %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %4
  %28 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 1
  store %struct.task_status_struct* %29, %struct.task_status_struct** %18, align 8
  %30 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %31 = load %struct.task_status_struct*, %struct.task_status_struct** %18, align 8
  %32 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @SAS_PHY_DOWN, align 4
  %34 = load %struct.task_status_struct*, %struct.task_status_struct** %18, align 8
  %35 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.domain_device*, %struct.domain_device** %15, align 8
  %37 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SAS_SATA_DEV, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %43 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %42, i32 0, i32 0
  %44 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %43, align 8
  %45 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %46 = call i32 %44(%struct.sas_task* %45)
  br label %47

47:                                               ; preds = %41, %27
  %48 = load i32, i32* @ECOMM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %108

50:                                               ; preds = %4
  %51 = load %struct.domain_device*, %struct.domain_device** %15, align 8
  %52 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %51)
  store %struct.hisi_hba* %52, %struct.hisi_hba** %13, align 8
  %53 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  %54 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %53, i32 0, i32 3
  %55 = load %struct.device*, %struct.device** %54, align 8
  store %struct.device* %55, %struct.device** %14, align 8
  %56 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %57 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  %58 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %57, i32 0, i32 2
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %50
  %63 = call i64 (...) @in_softirq()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %108

68:                                               ; preds = %62
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  %70 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %69, i32 0, i32 1
  %71 = call i32 @down(i32* %70)
  %72 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  %73 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %72, i32 0, i32 1
  %74 = call i32 @up(i32* %73)
  br label %75

75:                                               ; preds = %68, %50
  %76 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %9, align 8
  %79 = call i32 @hisi_sas_task_prep(%struct.sas_task* %76, %struct.hisi_sas_dq** %17, i32 %77, %struct.hisi_sas_tmf_task* %78, i32* %11)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.device*, %struct.device** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %17, align 8
  %92 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %91, i32 0, i32 0
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  %96 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.hisi_sas_dq*)*, i32 (%struct.hisi_sas_dq*)** %98, align 8
  %100 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %17, align 8
  %101 = call i32 %99(%struct.hisi_sas_dq* %100)
  %102 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %17, align 8
  %103 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %102, i32 0, i32 0
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  br label %106

106:                                              ; preds = %90, %86
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %65, %47
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @in_softirq(...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @hisi_sas_task_prep(%struct.sas_task*, %struct.hisi_sas_dq**, i32, %struct.hisi_sas_tmf_task*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
