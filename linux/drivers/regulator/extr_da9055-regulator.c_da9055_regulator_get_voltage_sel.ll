; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_2__, %struct.da9055_volt_reg }
%struct.TYPE_2__ = type { i32, i32 }
%struct.da9055_volt_reg = type { i32, i32, i32 }

@DA9055_REGUALTOR_SET_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9055_regulator_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_regulator_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9055_regulator*, align 8
  %5 = alloca %struct.da9055_regulator_info*, align 8
  %6 = alloca %struct.da9055_volt_reg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da9055_regulator* %10, %struct.da9055_regulator** %4, align 8
  %11 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %11, i32 0, i32 1
  %13 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %12, align 8
  store %struct.da9055_regulator_info* %13, %struct.da9055_regulator_info** %5, align 8
  %14 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %15 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %14, i32 0, i32 1
  %16 = bitcast %struct.da9055_volt_reg* %6 to i8*
  %17 = bitcast %struct.da9055_volt_reg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %19 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %22 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @da9055_reg_read(i32 %20, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %1
  %31 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %32 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DA9055_REGUALTOR_SET_A, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %42 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %6, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @da9055_reg_read(i32 %43, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %30
  %48 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %49 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @da9055_reg_read(i32 %50, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds %struct.da9055_volt_reg, %struct.da9055_volt_reg* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %60, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %57, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da9055_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
