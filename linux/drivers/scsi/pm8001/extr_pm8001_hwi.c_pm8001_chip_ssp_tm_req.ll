; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_ssp_tm_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_ssp_tm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i32, %struct.sas_task* }
%struct.sas_task = type { %struct.TYPE_2__, %struct.domain_device* }
%struct.TYPE_2__ = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.pm8001_tmf_task = type { i32, i32 }
%struct.ssp_ini_tm_start_req = type { i32, i8*, i32, i8*, i8*, i8* }

@OPC_INB_SSPINITMSTART = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_ssp_tm_req(%struct.pm8001_hba_info* %0, %struct.pm8001_ccb_info* %1, %struct.pm8001_tmf_task* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_ccb_info*, align 8
  %6 = alloca %struct.pm8001_tmf_task*, align 8
  %7 = alloca %struct.sas_task*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.pm8001_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca %struct.ssp_ini_tm_start_req, align 8
  %13 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pm8001_ccb_info* %1, %struct.pm8001_ccb_info** %5, align 8
  store %struct.pm8001_tmf_task* %2, %struct.pm8001_tmf_task** %6, align 8
  %14 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %15 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %14, i32 0, i32 1
  %16 = load %struct.sas_task*, %struct.sas_task** %15, align 8
  store %struct.sas_task* %16, %struct.sas_task** %7, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %18 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %17, i32 0, i32 1
  %19 = load %struct.domain_device*, %struct.domain_device** %18, align 8
  store %struct.domain_device* %19, %struct.domain_device** %8, align 8
  %20 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %21 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %20, i32 0, i32 0
  %22 = load %struct.pm8001_device*, %struct.pm8001_device** %21, align 8
  store %struct.pm8001_device* %22, %struct.pm8001_device** %9, align 8
  %23 = load i32, i32* @OPC_INB_SSPINITMSTART, align 4
  store i32 %23, i32* %10, align 4
  %24 = call i32 @memset(%struct.ssp_ini_tm_start_req* %12, i32 0, i32 48)
  %25 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %26 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 5
  store i8* %28, i8** %29, align 8
  %30 = load %struct.pm8001_tmf_task*, %struct.pm8001_tmf_task** %6, align 8
  %31 = getelementptr inbounds %struct.pm8001_tmf_task, %struct.pm8001_tmf_task* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load %struct.pm8001_tmf_task*, %struct.pm8001_tmf_task** %6, align 8
  %36 = getelementptr inbounds %struct.pm8001_tmf_task, %struct.pm8001_tmf_task* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %43 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %41, i32 %45, i32 8)
  %47 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %48 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @chip_8001, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.ssp_ini_tm_start_req, %struct.ssp_ini_tm_start_req* %12, i32 0, i32 0
  store i32 8, i32* %58, align 8
  br label %59

59:                                               ; preds = %57, %3
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %61 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %60, i32 0, i32 1
  %62 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %61, align 8
  %63 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %62, i64 0
  store %struct.inbound_queue_table* %63, %struct.inbound_queue_table** %11, align 8
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %65 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %64, %struct.inbound_queue_table* %65, i32 %66, %struct.ssp_ini_tm_start_req* %12, i32 0)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.ssp_ini_tm_start_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.ssp_ini_tm_start_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
