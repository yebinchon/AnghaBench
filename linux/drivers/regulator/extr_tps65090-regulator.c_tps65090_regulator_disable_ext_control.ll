; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_regulator_disable_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_regulator_disable_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65090_regulator = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tps65090_regulator_plat_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Error in set reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65090_regulator*, %struct.tps65090_regulator_plat_data*)* @tps65090_regulator_disable_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_regulator_disable_ext_control(%struct.tps65090_regulator* %0, %struct.tps65090_regulator_plat_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65090_regulator*, align 8
  %5 = alloca %struct.tps65090_regulator_plat_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.tps65090_regulator* %0, %struct.tps65090_regulator** %4, align 8
  store %struct.tps65090_regulator_plat_data* %1, %struct.tps65090_regulator_plat_data** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %4, align 8
  %10 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %4, align 8
  %15 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %5, align 8
  %20 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %5, align 8
  %28 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26, %2
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @tps65090_set_bits(%struct.device* %35, i32 %36, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %4, align 8
  %42 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %4, align 8
  %50 = call i32 @tps65090_config_ext_control(%struct.tps65090_regulator* %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @tps65090_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @tps65090_config_ext_control(%struct.tps65090_regulator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
