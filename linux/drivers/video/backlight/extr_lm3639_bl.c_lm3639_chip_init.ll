; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3639_chip_data = type { i32, i32, %struct.lm3639_platform_data* }
%struct.lm3639_platform_data = type { i32, i32, i32, i32, i32, i32 }

@REG_BL_CONF_1 = common dso_local global i32 0, align 4
@REG_IO_CTRL = common dso_local global i32 0, align 4
@REG_BL_CONF_4 = common dso_local global i32 0, align 4
@REG_BL_CONF_3 = common dso_local global i32 0, align 4
@REG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3639_chip_data*)* @lm3639_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3639_chip_init(%struct.lm3639_chip_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3639_chip_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm3639_platform_data*, align 8
  store %struct.lm3639_chip_data* %0, %struct.lm3639_chip_data** %3, align 8
  %7 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %7, i32 0, i32 2
  %9 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %8, align 8
  store %struct.lm3639_platform_data* %9, %struct.lm3639_platform_data** %6, align 8
  %10 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REG_BL_CONF_1, align 4
  %14 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 8, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %23 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 64
  %26 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %35 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @REG_IO_CTRL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 124, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %103

43:                                               ; preds = %21
  %44 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %45 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @REG_BL_CONF_4, align 4
  %48 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %49 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_write(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %103

55:                                               ; preds = %43
  %56 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %57 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @REG_BL_CONF_3, align 4
  %60 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_write(i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %103

67:                                               ; preds = %55
  %68 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %69 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %77 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %91

81:                                               ; preds = %67
  %82 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 1
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %81, %72
  %92 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %93 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @REG_ENABLE, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 121, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %109

103:                                              ; preds = %100, %66, %54, %42, %20
  %104 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %3, align 8
  %105 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %101
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
