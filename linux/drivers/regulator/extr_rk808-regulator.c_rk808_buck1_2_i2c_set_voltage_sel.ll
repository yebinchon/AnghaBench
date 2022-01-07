; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_i2c_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_i2c_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_STEPS_ONE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rk808_buck1_2_i2c_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_buck1_2_i2c_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %19, i32 %24, i32* %10)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @ffs(i32 %38)
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %8, align 4
  %42 = lshr i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %50, %30
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_STEPS_ONE_TIME, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i32, i32* @MAX_STEPS_ONE_TIME, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ffs(i32 %55)
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 %54, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %66 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @regmap_write(i32 %64, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %7, align 4
  br label %46

75:                                               ; preds = %46
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ffs(i32 %76)
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %85 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %88 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @regmap_write(i32 %86, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = call i32 @udelay(i32 1)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %75, %28
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
