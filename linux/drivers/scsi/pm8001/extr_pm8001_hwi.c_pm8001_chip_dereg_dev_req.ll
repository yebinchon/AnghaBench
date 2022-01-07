; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_dereg_dev_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_dereg_dev_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.dereg_dev_req = type { i8*, i8* }

@OPC_INB_DEREG_DEV_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unregister device device_id = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_dereg_dev_req(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dereg_dev_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inbound_queue_table*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @OPC_INB_DEREG_DEV_HANDLE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 0
  %12 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %13 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %12, i64 0
  store %struct.inbound_queue_table* %13, %struct.inbound_queue_table** %8, align 8
  %14 = call i32 @memset(%struct.dereg_dev_req* %5, i32 0, i32 16)
  %15 = call i8* @cpu_to_le32(i32 1)
  %16 = getelementptr inbounds %struct.dereg_dev_req, %struct.dereg_dev_req* %5, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.dereg_dev_req, %struct.dereg_dev_req* %5, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %20, i32 %22)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %24, %struct.inbound_queue_table* %25, i32 %26, %struct.dereg_dev_req* %5, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @memset(%struct.dereg_dev_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.dereg_dev_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
