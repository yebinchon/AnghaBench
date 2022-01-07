; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_encrypt_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_encrypt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.kek_mgmt_req = type { i32, i32 }

@OPC_INB_KEK_MANAGEMENT = common dso_local global i32 0, align 4
@KEK_MGMT_SUBOP_KEYCARDUPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_encrypt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_encrypt_update(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.kek_mgmt_req, align 4
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %9 = load i32, i32* @OPC_INB_KEK_MANAGEMENT, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @memset(%struct.kek_mgmt_req* %4, i32 0, i32 8)
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 0
  %19 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %18, align 8
  %20 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %19, i64 0
  store %struct.inbound_queue_table* %20, %struct.inbound_queue_table** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.kek_mgmt_req, %struct.kek_mgmt_req* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @KEK_MGMT_SUBOP_KEYCARDUPDATE, align 4
  %25 = or i32 16843008, %24
  %26 = getelementptr inbounds %struct.kek_mgmt_req, %struct.kek_mgmt_req* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %27, %struct.inbound_queue_table* %28, i32 %29, %struct.kek_mgmt_req* %4, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %16
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.kek_mgmt_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.kek_mgmt_req*, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
