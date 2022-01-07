; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_ldo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_ldo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.da9055_volt_reg }
%struct.da9055_volt_reg = type { i32, i32 }

@DA9055_LDO_MODE_SYNC = common dso_local global i32 0, align 4
@DA9055_LDO_MODE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9055_ldo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_ldo_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9055_regulator*, align 8
  %6 = alloca %struct.da9055_regulator_info*, align 8
  %7 = alloca %struct.da9055_volt_reg, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da9055_regulator* %10, %struct.da9055_regulator** %5, align 8
  %11 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %12 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %11, i32 0, i32 1
  %13 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %12, align 8
  store %struct.da9055_regulator_info* %13, %struct.da9055_regulator_info** %6, align 8
  %14 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %15 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %14, i32 0, i32 0
  %16 = bitcast %struct.da9055_volt_reg* %7 to i8*
  %17 = bitcast %struct.da9055_volt_reg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @DA9055_LDO_MODE_SYNC, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DA9055_LDO_MODE_SLEEP, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %2, %21, %19
  %24 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %25 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %32, %34
  %36 = call i32 @da9055_reg_update(i32 %26, i32 %28, i32 %31, i32 %35)
  ret i32 %36
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
