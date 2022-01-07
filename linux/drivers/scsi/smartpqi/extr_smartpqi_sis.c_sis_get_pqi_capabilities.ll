; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_get_pqi_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_get_pqi_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i32, i32, i32 }
%struct.sis_sync_cmd_params = type { i32* }

@SIS_CMD_GET_PQI_CAPABILITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sis_get_pqi_capabilities(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sis_sync_cmd_params, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = call i32 @memset(%struct.sis_sync_cmd_params* %5, i32 0, i32 8)
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %8 = load i32, i32* @SIS_CMD_GET_PQI_CAPABILITIES, align 4
  %9 = call i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info* %7, i32 %8, %struct.sis_sync_cmd_params* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %5, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %20 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %5, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %26 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %5, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %32 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %5, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %38 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %44 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %14, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.sis_sync_cmd_params*, i32, i32) #1

declare dso_local i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info*, i32, %struct.sis_sync_cmd_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
