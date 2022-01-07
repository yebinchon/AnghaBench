; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_set_dvm_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_set_dvm_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8925_regulator_info = type { i32, i32 }

@SD1_DVM_VMIN = common dso_local global i32 0, align 4
@SD1_DVM_VMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SD1_DVM_STEP = common dso_local global i32 0, align 4
@SD1_DVM_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8925_set_dvm_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_set_dvm_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8925_regulator_info*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.max8925_regulator_info* %10, %struct.max8925_regulator_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SD1_DVM_VMIN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SD1_DVM_VMAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SD1_DVM_VMIN, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* @SD1_DVM_STEP, align 4
  %26 = call zeroext i8 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i8 %26, i8* %7, align 1
  %27 = load i8, i8* @SD1_DVM_SHIFT, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* @SD1_DVM_SHIFT, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 3, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %8, align 1
  %37 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %6, align 8
  %38 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %6, align 8
  %41 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8, i8* %8, align 1
  %44 = load i8, i8* %7, align 1
  %45 = call i32 @max8925_set_bits(i32 %39, i32 %42, i8 zeroext %43, i8 zeroext %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %21, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local zeroext i8 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
