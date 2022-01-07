; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_initialize_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_initialize_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.regmap* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.regmap = type { i32 }

@PVTCTLEN = common dso_local global i64 0, align 8
@PVTCTLEN_EN = common dso_local global i32 0, align 4
@TMODCOEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"socionext,tmod-calibration\00", align 1
@TMODSETUP0_EN = common dso_local global i32 0, align 4
@TMODSETUP1_EN = common dso_local global i32 0, align 4
@PVTCTLMODE = common dso_local global i64 0, align 8
@PVTCTLMODE_MASK = common dso_local global i32 0, align 4
@PVTCTLMODE_TEMPMON = common dso_local global i32 0, align 4
@EMONREPEAT = common dso_local global i64 0, align 8
@EMONREPEAT_ENDLESS = common dso_local global i32 0, align 4
@EMONREPEAT_PERIOD = common dso_local global i32 0, align 4
@EMONREPEAT_PERIOD_1000000 = common dso_local global i32 0, align 4
@PVTCTLSEL = common dso_local global i64 0, align 8
@PVTCTLSEL_MASK = common dso_local global i32 0, align 4
@PVTCTLSEL_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_tm_dev*)* @uniphier_tm_initialize_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_tm_initialize_sensor(%struct.uniphier_tm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_tm_dev*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.uniphier_tm_dev* %0, %struct.uniphier_tm_dev** %3, align 8
  %8 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %8, i32 0, i32 2
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %13 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PVTCTLEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @PVTCTLEN_EN, align 4
  %20 = call i32 @regmap_write_bits(%struct.regmap* %11, i64 %18, i32 %19, i32 0)
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %23 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TMODCOEF, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @regmap_read(%struct.regmap* %21, i64 %28, i32* %5)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %108

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %34
  %38 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %39 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = call i32 @of_property_read_u32_array(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %43, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %37
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %54 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TMODSETUP0_EN, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TMODSETUP0_VAL(i32 %60)
  %62 = or i32 %58, %61
  %63 = load i32, i32* @TMODSETUP1_EN, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @TMODSETUP1_VAL(i32 %66)
  %68 = or i32 %64, %67
  %69 = call i32 @regmap_write(%struct.regmap* %52, i32 %57, i32 %68)
  br label %70

70:                                               ; preds = %51, %34
  %71 = load %struct.regmap*, %struct.regmap** %4, align 8
  %72 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %73 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PVTCTLMODE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* @PVTCTLMODE_MASK, align 4
  %80 = load i32, i32* @PVTCTLMODE_TEMPMON, align 4
  %81 = call i32 @regmap_write_bits(%struct.regmap* %71, i64 %78, i32 %79, i32 %80)
  %82 = load %struct.regmap*, %struct.regmap** %4, align 8
  %83 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %84 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EMONREPEAT, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* @EMONREPEAT_ENDLESS, align 4
  %91 = load i32, i32* @EMONREPEAT_PERIOD, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @EMONREPEAT_ENDLESS, align 4
  %94 = load i32, i32* @EMONREPEAT_PERIOD_1000000, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @regmap_write_bits(%struct.regmap* %82, i64 %89, i32 %92, i32 %95)
  %97 = load %struct.regmap*, %struct.regmap** %4, align 8
  %98 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %3, align 8
  %99 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PVTCTLSEL, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32, i32* @PVTCTLSEL_MASK, align 4
  %106 = load i32, i32* @PVTCTLSEL_MONITOR, align 4
  %107 = call i32 @regmap_write_bits(%struct.regmap* %97, i64 %104, i32 %105, i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %70, %49, %32
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @regmap_write_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @TMODSETUP0_VAL(i32) #1

declare dso_local i32 @TMODSETUP1_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
