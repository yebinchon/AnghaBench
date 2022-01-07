; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_cmd_role_enable = type { i64, i64, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cmd role enable\00", align 1
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_ROLE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initiate cmd role enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_enable(%struct.wl1271* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.wl12xx_cmd_role_enable*, align 8
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* @DEBUG_CMD, align 4
  %13 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %83

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.wl12xx_cmd_role_enable* @kzalloc(i32 24, i32 %25)
  store %struct.wl12xx_cmd_role_enable* %26, %struct.wl12xx_cmd_role_enable** %10, align 8
  %27 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %28 = icmp ne %struct.wl12xx_cmd_role_enable* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %81

32:                                               ; preds = %24
  %33 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %37 = call i64 @find_first_zero_bit(i32 %35, i64 %36)
  %38 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %39 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %41 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %78

48:                                               ; preds = %32
  %49 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %50 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %51, i64* %52, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %57 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %59 = load i32, i32* @CMD_ROLE_ENABLE, align 4
  %60 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %61 = call i32 @wl1271_cmd_send(%struct.wl1271* %58, i32 %59, %struct.wl12xx_cmd_role_enable* %60, i32 24, i32 0)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %78

66:                                               ; preds = %48
  %67 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %68 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__set_bit(i64 %69, i32 %72)
  %74 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %75 = getelementptr inbounds %struct.wl12xx_cmd_role_enable, %struct.wl12xx_cmd_role_enable* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %64, %45
  %79 = load %struct.wl12xx_cmd_role_enable*, %struct.wl12xx_cmd_role_enable** %10, align 8
  %80 = call i32 @kfree(%struct.wl12xx_cmd_role_enable* %79)
  br label %81

81:                                               ; preds = %78, %29
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %21
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wl12xx_cmd_role_enable* @kzalloc(i32, i32) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_enable*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_enable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
