; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpcap_regulator = type { i32, i32 }

@CPCAP_REG_OFF_MODE_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @cpcap_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.cpcap_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.cpcap_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.cpcap_regulator* %8, %struct.cpcap_regulator** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @regulator_enable_regmap(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CPCAP_REG_OFF_MODE_SEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %29 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %32 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %35 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_update_bits(i32 %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %42 = call i32 @regulator_disable_regmap(%struct.regulator_dev* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %24
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.cpcap_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_enable_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_disable_regmap(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
