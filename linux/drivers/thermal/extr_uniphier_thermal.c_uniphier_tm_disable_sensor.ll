; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_disable_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_disable_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.regmap = type { i32 }

@PMALERTINTCTL = common dso_local global i64 0, align 8
@PMALERTINTCTL_MASK = common dso_local global i32 0, align 4
@PVTCTLEN = common dso_local global i64 0, align 8
@PVTCTLEN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_tm_dev*)* @uniphier_tm_disable_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_tm_disable_sensor(%struct.uniphier_tm_dev* %0) #0 {
  %2 = alloca %struct.uniphier_tm_dev*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.uniphier_tm_dev* %0, %struct.uniphier_tm_dev** %2, align 8
  %4 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %4, i32 0, i32 1
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %9 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PMALERTINTCTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @PMALERTINTCTL_MASK, align 4
  %16 = call i32 @regmap_write_bits(%struct.regmap* %7, i64 %14, i32 %15, i32 0)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PVTCTLEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @PVTCTLEN_EN, align 4
  %26 = call i32 @regmap_write_bits(%struct.regmap* %17, i64 %24, i32 %25, i32 0)
  %27 = call i32 @usleep_range(i32 1000, i32 2000)
  ret void
}

declare dso_local i32 @regmap_write_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
