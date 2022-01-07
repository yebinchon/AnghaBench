; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_fw_flash_update_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_fw_flash_update_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.fw_flash_Update_req = type { i8*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.fw_flash_updata_info = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OPC_INB_FW_FLASH_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_fw_flash_update_build(%struct.pm8001_hba_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_flash_Update_req, align 8
  %8 = alloca %struct.fw_flash_updata_info*, align 8
  %9 = alloca %struct.inbound_queue_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @OPC_INB_FW_FLASH_UPDATE, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 @memset(%struct.fw_flash_Update_req* %7, i32 0, i32 56)
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %15 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %14, i32 0, i32 0
  %16 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %15, align 8
  %17 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %16, i64 0
  store %struct.inbound_queue_table* %17, %struct.inbound_queue_table** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.fw_flash_updata_info*
  store %struct.fw_flash_updata_info* %19, %struct.fw_flash_updata_info** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 6
  store i8* %21, i8** %22, align 8
  %23 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %24 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %29 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %34 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %39 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %45 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.fw_flash_updata_info*, %struct.fw_flash_updata_info** %8, align 8
  %53 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le64_to_cpu(i32 %55)
  %57 = call i32 @upper_32_bits(i32 %56)
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.fw_flash_Update_req, %struct.fw_flash_Update_req* %7, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %61 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %60, %struct.inbound_queue_table* %61, i32 %62, %struct.fw_flash_Update_req* %7, i32 0)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.fw_flash_Update_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.fw_flash_Update_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
