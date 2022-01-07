; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_chip = type { i32, %struct.lm3630a_platform_data* }
%struct.lm3630a_platform_data = type { i32, i32, i32, i32, i32 }

@REG_FILTER_STRENGTH = common dso_local global i32 0, align 4
@REG_CONFIG = common dso_local global i32 0, align 4
@REG_BOOST = common dso_local global i32 0, align 4
@REG_I_A = common dso_local global i32 0, align 4
@REG_I_B = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@REG_BRT_A = common dso_local global i32 0, align 4
@REG_BRT_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3630a_chip*)* @lm3630a_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_chip_init(%struct.lm3630a_chip* %0) #0 {
  %2 = alloca %struct.lm3630a_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3630a_platform_data*, align 8
  store %struct.lm3630a_chip* %0, %struct.lm3630a_chip** %2, align 8
  %5 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %6 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %5, i32 0, i32 1
  %7 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %6, align 8
  store %struct.lm3630a_platform_data* %7, %struct.lm3630a_platform_data** %4, align 8
  %8 = call i32 @usleep_range(i32 1000, i32 2000)
  %9 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %10 = load i32, i32* @REG_FILTER_STRENGTH, align 4
  %11 = call i32 @lm3630a_write(%struct.lm3630a_chip* %9, i32 %10, i32 3)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %13 = load i32, i32* @REG_CONFIG, align 4
  %14 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lm3630a_update(%struct.lm3630a_chip* %12, i32 %13, i32 7, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %21 = load i32, i32* @REG_BOOST, align 4
  %22 = call i32 @lm3630a_write(%struct.lm3630a_chip* %20, i32 %21, i32 56)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %26 = load i32, i32* @REG_I_A, align 4
  %27 = call i32 @lm3630a_update(%struct.lm3630a_chip* %25, i32 %26, i32 31, i32 31)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %31 = load i32, i32* @REG_I_B, align 4
  %32 = call i32 @lm3630a_write(%struct.lm3630a_chip* %30, i32 %31, i32 31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %36 = load i32, i32* @REG_CTRL, align 4
  %37 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lm3630a_update(%struct.lm3630a_chip* %35, i32 %36, i32 20, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %44 = load i32, i32* @REG_CTRL, align 4
  %45 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lm3630a_update(%struct.lm3630a_chip* %43, i32 %44, i32 11, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = call i32 @usleep_range(i32 1000, i32 2000)
  %52 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %53 = load i32, i32* @REG_BRT_A, align 4
  %54 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lm3630a_write(%struct.lm3630a_chip* %52, i32 %53, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %61 = load i32, i32* @REG_BRT_B, align 4
  %62 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %63 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @lm3630a_write(%struct.lm3630a_chip* %60, i32 %61, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %1
  %71 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %2, align 8
  %72 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %1
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lm3630a_write(%struct.lm3630a_chip*, i32, i32) #1

declare dso_local i32 @lm3630a_update(%struct.lm3630a_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
