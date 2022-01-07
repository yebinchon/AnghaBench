; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_fps_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_fps_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32*, i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Reg 0x%02x read failed %d\0A\00", align 1
@MAX77620_FPS_SRC_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid FPS %d for regulator %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Reg 0x%02x update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32, i32)* @max77620_regulator_set_fps_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_set_fps_src(%struct.max77620_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77620_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %12 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %11, i32 0, i32 3
  %13 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %13, i64 %15
  %17 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %16, align 8
  store %struct.max77620_regulator_info* %17, %struct.max77620_regulator_info** %8, align 8
  %18 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %19 = icmp ne %struct.max77620_regulator_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %57 [
    i32 132, label %23
    i32 131, label %23
    i32 130, label %23
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %21, %21, %21, %21
  br label %66

24:                                               ; preds = %21
  %25 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %26 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %29 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %36 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %39 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %24
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAX77620_FPS_SRC_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @MAX77620_FPS_SRC_SHIFT, align 4
  %49 = lshr i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %52 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %98

57:                                               ; preds = %21
  %58 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %59 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %98

66:                                               ; preds = %23
  %67 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %68 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %71 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MAX77620_FPS_SRC_MASK, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MAX77620_FPS_SRC_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = call i32 @regmap_update_bits(i32 %69, i32 %72, i32 %73, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %66
  %81 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %82 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %85 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %98

90:                                               ; preds = %66
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %93 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %90, %80, %57, %44, %34, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
