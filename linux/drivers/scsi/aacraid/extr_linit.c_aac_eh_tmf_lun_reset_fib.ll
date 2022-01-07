; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_tmf_lun_reset_fib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_tmf_lun_reset_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_hba_map_info = type { i32 }
%struct.fib = type { i32, i64, i64 }
%struct.aac_hba_tm_req = type { i8*, i8*, i8*, i64, i32, i32 }
%struct.scsi_lun = type { i32 }

@HBA_TMF_LUN_RESET = common dso_local global i32 0, align 4
@FW_ERROR_BUFFER_SIZE = common dso_local global i32 0, align 4
@HBA_IU_TYPE_SCSI_TM_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_hba_map_info*, %struct.fib*, i32)* @aac_eh_tmf_lun_reset_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_eh_tmf_lun_reset_fib(%struct.aac_hba_map_info* %0, %struct.fib* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_hba_map_info*, align 8
  %5 = alloca %struct.fib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_hba_tm_req*, align 8
  %8 = alloca i32, align 4
  store %struct.aac_hba_map_info* %0, %struct.aac_hba_map_info** %4, align 8
  store %struct.fib* %1, %struct.fib** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fib*, %struct.fib** %5, align 8
  %10 = getelementptr inbounds %struct.fib, %struct.fib* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.aac_hba_tm_req*
  store %struct.aac_hba_tm_req* %12, %struct.aac_hba_tm_req** %7, align 8
  %13 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %14 = call i32 @memset(%struct.aac_hba_tm_req* %13, i32 0, i32 40)
  %15 = load i32, i32* @HBA_TMF_LUN_RESET, align 4
  %16 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %17 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %4, align 8
  %19 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %22 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %25 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_lun*
  %28 = call i32 @int_to_scsilun(i32 %23, %struct.scsi_lun* %27)
  %29 = load %struct.fib*, %struct.fib** %5, align 8
  %30 = getelementptr inbounds %struct.fib, %struct.fib* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 32
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %37 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %41 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @FW_ERROR_BUFFER_SIZE, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %7, align 8
  %45 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.fib*, %struct.fib** %5, align 8
  %47 = getelementptr inbounds %struct.fib, %struct.fib* %46, i32 0, i32 0
  store i32 40, i32* %47, align 8
  %48 = load i32, i32* @HBA_IU_TYPE_SCSI_TM_REQ, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.aac_hba_tm_req*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
