; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_fps_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_fps_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Reg 0x%02x read failed %d\0A\00", align 1
@MAX77620_FPS_SRC_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32)* @max77620_regulator_get_fps_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_get_fps_src(%struct.max77620_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %10 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %9, i32 0, i32 2
  %11 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %11, i64 %13
  %15 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %14, align 8
  store %struct.max77620_regulator_info* %15, %struct.max77620_regulator_info** %6, align 8
  %16 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %17 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %20 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_read(i32 %18, i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %27 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %30 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAX77620_FPS_SRC_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @MAX77620_FPS_SRC_SHIFT, align 4
  %40 = lshr i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
