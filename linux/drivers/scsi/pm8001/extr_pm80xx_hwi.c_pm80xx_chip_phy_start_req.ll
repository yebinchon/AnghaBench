; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_3__*, i32, %struct.inbound_queue_table* }
%struct.TYPE_3__ = type { i32 }
%struct.inbound_queue_table = type { i32 }
%struct.phy_start_req = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@OPC_INB_PHYSTART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PHY START REQ for phy_id %d\0A\00", align 1
@SPINHOLD_DISABLE = common dso_local global i64 0, align 8
@LINKMODE_AUTO = common dso_local global i64 0, align 8
@LINKRATE_15 = common dso_local global i64 0, align 8
@LINKRATE_30 = common dso_local global i64 0, align 8
@LINKRATE_60 = common dso_local global i64 0, align 8
@LINKRATE_120 = common dso_local global i64 0, align 8
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i64)* @pm80xx_chip_phy_start_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_phy_start_req(%struct.pm8001_hba_info* %0, i64 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.phy_start_req, align 8
  %6 = alloca %struct.inbound_queue_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %8, align 8
  %10 = load i64, i64* @OPC_INB_PHYSTART, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %11, i32 0, i32 2
  %13 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %12, align 8
  %14 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %13, i64 0
  store %struct.inbound_queue_table* %14, %struct.inbound_queue_table** %6, align 8
  %15 = call i32 @memset(%struct.phy_start_req* %5, i32 0, i32 40)
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @cpu_to_le32(i64 %16)
  %18 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %19, i32 %21)
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IS_SPCV_12G(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* @SPINHOLD_DISABLE, align 8
  %30 = load i64, i64* @LINKMODE_AUTO, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @LINKRATE_15, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @LINKRATE_30, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @LINKRATE_60, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* %4, align 8
  %39 = or i64 %37, %38
  %40 = call i8* @cpu_to_le32(i64 %39)
  %41 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  br label %58

42:                                               ; preds = %2
  %43 = load i64, i64* @SPINHOLD_DISABLE, align 8
  %44 = load i64, i64* @LINKMODE_AUTO, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @LINKRATE_15, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* @LINKRATE_30, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @LINKRATE_60, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @LINKRATE_120, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* %4, align 8
  %55 = or i64 %53, %54
  %56 = call i8* @cpu_to_le32(i64 %55)
  %57 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %42, %28
  %59 = load i32, i32* @SAS_END_DEVICE, align 4
  %60 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %63 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %69 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %75 = call i32 @memcpy(i32 %67, i32* %73, i32 %74)
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %80 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %79, %struct.inbound_queue_table* %80, i64 %81, %struct.phy_start_req* %5, i32 0)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.phy_start_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64) #1

declare dso_local i32 @IS_SPCV_12G(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.phy_start_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
