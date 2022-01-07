; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_thermal_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_thermal_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.set_ctrl_cfg_req = type { i32*, i32 }

@OPC_INB_SET_CONTROLLER_CONFIG = common dso_local global i32 0, align 4
@THERMAL_PAGE_CODE_7H = common dso_local global i32 0, align 4
@THERMAL_PAGE_CODE_8H = common dso_local global i32 0, align 4
@THERMAL_LOG_ENABLE = common dso_local global i32 0, align 4
@THERMAL_ENABLE = common dso_local global i32 0, align 4
@LTEMPHIL = common dso_local global i32 0, align 4
@RTEMPHIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm80xx_set_thermal_config(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.set_ctrl_cfg_req, align 8
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %10 = load i32, i32* @OPC_INB_SET_CONTROLLER_CONFIG, align 4
  store i32 %10, i32* %8, align 4
  %11 = call i32 @memset(%struct.set_ctrl_cfg_req* %4, i32 0, i32 16)
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %13 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 1
  %20 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %19, align 8
  %21 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %20, i64 0
  store %struct.inbound_queue_table* %21, %struct.inbound_queue_table** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_SPCV_12G(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @THERMAL_PAGE_CODE_7H, align 4
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @THERMAL_PAGE_CODE_8H, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @THERMAL_LOG_ENABLE, align 4
  %36 = shl i32 %35, 9
  %37 = load i32, i32* @THERMAL_ENABLE, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %36, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @LTEMPHIL, align 4
  %46 = shl i32 %45, 24
  %47 = load i32, i32* @RTEMPHIL, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %53, %struct.inbound_queue_table* %54, i32 %55, %struct.set_ctrl_cfg_req* %4, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %34
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %34
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.set_ctrl_cfg_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @IS_SPCV_12G(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.set_ctrl_cfg_req*, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
