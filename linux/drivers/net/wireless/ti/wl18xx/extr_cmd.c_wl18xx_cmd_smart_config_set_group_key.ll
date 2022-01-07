; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_smart_config_set_group_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_smart_config_set_group_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl18xx_cmd_smart_config_set_group_key = type { i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cmd smart config set group key id=0x%x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid group key size: %d\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SMART_CONFIG_SET_GROUP_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to send smart config set group key cmd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_cmd_smart_config_set_group_key(%struct.wl1271* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wl18xx_cmd_smart_config_set_group_key*, align 8
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @DEBUG_CMD, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @E2BIG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.wl18xx_cmd_smart_config_set_group_key* @kzalloc(i32 8, i32 %24)
  store %struct.wl18xx_cmd_smart_config_set_group_key* %25, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %26 = load %struct.wl18xx_cmd_smart_config_set_group_key*, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %27 = icmp ne %struct.wl18xx_cmd_smart_config_set_group_key* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.wl18xx_cmd_smart_config_set_group_key*, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %35 = getelementptr inbounds %struct.wl18xx_cmd_smart_config_set_group_key, %struct.wl18xx_cmd_smart_config_set_group_key* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl18xx_cmd_smart_config_set_group_key*, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %37 = getelementptr inbounds %struct.wl18xx_cmd_smart_config_set_group_key, %struct.wl18xx_cmd_smart_config_set_group_key* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %43 = load i32, i32* @CMD_SMART_CONFIG_SET_GROUP_KEY, align 4
  %44 = load %struct.wl18xx_cmd_smart_config_set_group_key*, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %45 = call i32 @wl1271_cmd_send(%struct.wl1271* %42, i32 %43, %struct.wl18xx_cmd_smart_config_set_group_key* %44, i32 8, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %51

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %48
  %52 = load %struct.wl18xx_cmd_smart_config_set_group_key*, %struct.wl18xx_cmd_smart_config_set_group_key** %10, align 8
  %53 = call i32 @kfree(%struct.wl18xx_cmd_smart_config_set_group_key* %52)
  br label %54

54:                                               ; preds = %51, %28
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local %struct.wl18xx_cmd_smart_config_set_group_key* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl18xx_cmd_smart_config_set_group_key*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_cmd_smart_config_set_group_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
