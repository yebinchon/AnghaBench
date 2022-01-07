; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_set_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_set_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@SETALERT0 = common dso_local global i64 0, align 8
@SETALERT_EN = common dso_local global i32 0, align 4
@SETALERT_TEMP_OVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_tm_dev*, i32, i32)* @uniphier_tm_set_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_tm_set_alert(%struct.uniphier_tm_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uniphier_tm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  store %struct.uniphier_tm_dev* %0, %struct.uniphier_tm_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %4, align 8
  %9 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %7, align 8
  %11 = load %struct.regmap*, %struct.regmap** %7, align 8
  %12 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %4, align 8
  %13 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SETALERT0, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @SETALERT_EN, align 4
  %24 = load i32, i32* @SETALERT_TEMP_OVF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SETALERT_EN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 1000
  %29 = call i32 @SETALERT_TEMP_OVF_VALUE(i32 %28)
  %30 = or i32 %26, %29
  %31 = call i32 @regmap_write_bits(%struct.regmap* %11, i64 %22, i32 %25, i32 %30)
  ret void
}

declare dso_local i32 @regmap_write_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @SETALERT_TEMP_OVF_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
