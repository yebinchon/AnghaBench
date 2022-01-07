; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ad5398_chip_info = type { i16, i16, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ad5398_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5398_get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ad5398_chip_info*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.ad5398_chip_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.ad5398_chip_info* %9, %struct.ad5398_chip_info** %4, align 8
  %10 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %4, align 8
  %11 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = call i32 @ad5398_read_reg(%struct.i2c_client* %13, i16* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %4, align 8
  %23 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = and i32 %21, %25
  %27 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %4, align 8
  %28 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %26, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ad5398_calc_current(%struct.ad5398_chip_info* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ad5398_chip_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ad5398_read_reg(%struct.i2c_client*, i16*) #1

declare dso_local i32 @ad5398_calc_current(%struct.ad5398_chip_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
