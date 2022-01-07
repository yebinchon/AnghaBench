; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_get_ctrl_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_get_ctrl_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.sis_sync_cmd_params = type { i32* }

@SIS_CMD_GET_ADAPTER_PROPERTIES = common dso_local global i32 0, align 4
@SIS_EXTENDED_PROPERTIES_SUPPORTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SIS_REQUIRED_EXTENDED_PROPERTIES = common dso_local global i32 0, align 4
@SIS_PQI_RESET_QUIESCE_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sis_get_ctrl_properties(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sis_sync_cmd_params, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %8 = call i32 @memset(%struct.sis_sync_cmd_params* %7, i32 0, i32 8)
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %10 = load i32, i32* @SIS_CMD_GET_ADAPTER_PROPERTIES, align 4
  %11 = call i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info* %9, i32 %10, %struct.sis_sync_cmd_params* %7)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SIS_EXTENDED_PROPERTIES_SUPPORTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %7, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SIS_REQUIRED_EXTENDED_PROPERTIES, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SIS_REQUIRED_EXTENDED_PROPERTIES, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %28
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SIS_PQI_RESET_QUIESCE_SUPPORTED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %48 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %38, %25, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.sis_sync_cmd_params*, i32, i32) #1

declare dso_local i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info*, i32, %struct.sis_sync_cmd_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
