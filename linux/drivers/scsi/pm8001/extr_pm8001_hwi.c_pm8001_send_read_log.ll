; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_send_read_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_send_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table*, %struct.pm8001_ccb_info* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i64, %struct.sas_task*, %struct.pm8001_device* }
%struct.sas_task = type { %struct.domain_device*, i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i64, i32 }
%struct.sata_start_req = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.host_to_dev_fis = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@OPC_INB_SATA_HOST_OPSTART = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot allocate task !!!\0A\00", align 1
@pm8001_task_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot allocate tag !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Domain device cannot be allocated\0A\00", align 1
@NCQ_READ_LOG_FLAG = common dso_local global i32 0, align 4
@NCQ_2ND_RLE_FLAG = common dso_local global i32 0, align 4
@ATA_CMD_READ_LOG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, %struct.pm8001_device*)* @pm8001_send_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_send_read_log(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_device*, align 8
  %5 = alloca %struct.sata_start_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  %9 = alloca %struct.sas_task*, align 8
  %10 = alloca %struct.host_to_dev_fis, align 8
  %11 = alloca %struct.domain_device*, align 8
  %12 = alloca %struct.inbound_queue_table*, align 8
  %13 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %4, align 8
  store %struct.sas_task* null, %struct.sas_task** %9, align 8
  %14 = load i64, i64* @OPC_INB_SATA_HOST_OPSTART, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sas_task* @sas_alloc_slow_task(i32 %15)
  store %struct.sas_task* %16, %struct.sas_task** %9, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %18 = icmp ne %struct.sas_task* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %20, i32 %21)
  br label %125

23:                                               ; preds = %2
  %24 = load i32, i32* @pm8001_task_done, align 4
  %25 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %27, i64* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %33 = call i32 @sas_free_task(%struct.sas_task* %32)
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %34, i32 %35)
  br label %125

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.domain_device* @kzalloc(i32 8, i32 %38)
  store %struct.domain_device* %39, %struct.domain_device** %11, align 8
  %40 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  %41 = icmp ne %struct.domain_device* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %44 = call i32 @sas_free_task(%struct.sas_task* %43)
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %45, i64 %46)
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %49 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %48, i32 %49)
  br label %125

51:                                               ; preds = %37
  %52 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  %53 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %54 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %53, i32 0, i32 0
  store %struct.domain_device* %52, %struct.domain_device** %54, align 8
  %55 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %56 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %57 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %56, i32 0, i32 0
  %58 = load %struct.domain_device*, %struct.domain_device** %57, align 8
  %59 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %58, i32 0, i32 0
  store %struct.pm8001_device* %55, %struct.pm8001_device** %59, align 8
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %60, i32 0, i32 1
  %62 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %62, i64 %63
  store %struct.pm8001_ccb_info* %64, %struct.pm8001_ccb_info** %8, align 8
  %65 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %66 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %67 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %66, i32 0, i32 2
  store %struct.pm8001_device* %65, %struct.pm8001_device** %67, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %70 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %72 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %73 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %72, i32 0, i32 1
  store %struct.sas_task* %71, %struct.sas_task** %73, align 8
  %74 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %75 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %76 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @NCQ_2ND_RLE_FLAG, align 4
  %80 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %81 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = call i32 @memset(%struct.sata_start_req* %5, i32 0, i32 48)
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %85, i32 0, i32 0
  %87 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %86, align 8
  %88 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %87, i64 0
  store %struct.inbound_queue_table* %88, %struct.inbound_queue_table** %12, align 8
  %89 = bitcast %struct.host_to_dev_fis* %10 to %struct.sata_start_req*
  %90 = call i32 @memset(%struct.sata_start_req* %89, i32 0, i32 48)
  %91 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 0
  store i32 39, i32* %91, align 8
  %92 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 1
  store i32 128, i32* %92, align 4
  %93 = load i32, i32* @ATA_CMD_READ_LOG_EXT, align 4
  %94 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 8
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 2
  store i32 16, i32* %95, align 8
  %96 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i8* @cpu_to_le32(i64 %97)
  %99 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 7
  store i8* %98, i8** %99, align 8
  %100 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %101 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @cpu_to_le32(i64 %102)
  %104 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 6
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, 2688
  store i32 %107, i32* %105, align 8
  %108 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 5
  %109 = bitcast %struct.host_to_dev_fis* %10 to %struct.sata_start_req*
  %110 = call i32 @memcpy(i32* %108, %struct.sata_start_req* %109, i32 48)
  %111 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %112 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %111, %struct.inbound_queue_table* %112, i64 %113, %struct.sata_start_req* %5, i32 0)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %51
  %118 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %119 = call i32 @sas_free_task(%struct.sas_task* %118)
  %120 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %120, i64 %121)
  %123 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  %124 = call i32 @kfree(%struct.domain_device* %123)
  br label %125

125:                                              ; preds = %19, %31, %42, %117, %51
  ret void
}

declare dso_local %struct.sas_task* @sas_alloc_slow_task(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

declare dso_local %struct.domain_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @memset(%struct.sata_start_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.sata_start_req*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.sata_start_req*, i32) #1

declare dso_local i32 @kfree(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
