; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpcap_regulator = type { i32, i32 }

@CPCAP_REG_OFF_MODE_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @cpcap_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_regulator_disable(%struct.regulator_dev* %0) #0 {
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
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CPCAP_REG_OFF_MODE_SEC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %22 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %25 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_update_bits(i32 %20, i32 %23, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %35 = call i32 @regulator_disable_regmap(%struct.regulator_dev* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CPCAP_REG_OFF_MODE_SEC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %52 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %55 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %4, align 8
  %58 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regmap_update_bits(i32 %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %47, %38, %33
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %30
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.cpcap_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_disable_regmap(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
