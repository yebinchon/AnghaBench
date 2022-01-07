; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_abx500_get_regulator_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_abx500_get_regulator_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i8*, i8* }
%struct.ab8500 = type { i32 }

@ab8505_regulator_info = common dso_local global i8* null, align 8
@abx500_regulator = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ab8505_reg_init = common dso_local global i32 0, align 4
@AB8505_NUM_REGULATOR_REGISTERS = common dso_local global i32 0, align 4
@ab8505_regulator_match = common dso_local global i8* null, align 8
@ab8500_regulator_info = common dso_local global i8* null, align 8
@ab8500_reg_init = common dso_local global i32 0, align 4
@AB8500_NUM_REGULATOR_REGISTERS = common dso_local global i32 0, align 4
@ab8500_regulator_match = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500*)* @abx500_get_regulator_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_get_regulator_info(%struct.ab8500* %0) #0 {
  %2 = alloca %struct.ab8500*, align 8
  store %struct.ab8500* %0, %struct.ab8500** %2, align 8
  %3 = load %struct.ab8500*, %struct.ab8500** %2, align 8
  %4 = call i64 @is_ab8505(%struct.ab8500* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i8*, i8** @ab8505_regulator_info, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 5), align 8
  %8 = load i8*, i8** @ab8505_regulator_info, align 8
  %9 = call i8* @ARRAY_SIZE(i8* %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 4), align 8
  %10 = load i32, i32* @ab8505_reg_init, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 3), align 4
  %11 = load i32, i32* @AB8505_NUM_REGULATOR_REGISTERS, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 2), align 8
  %12 = load i8*, i8** @ab8505_regulator_match, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 1), align 8
  %13 = load i8*, i8** @ab8505_regulator_match, align 8
  %14 = call i8* @ARRAY_SIZE(i8* %13)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 0), align 8
  br label %24

15:                                               ; preds = %1
  %16 = load i8*, i8** @ab8500_regulator_info, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 5), align 8
  %17 = load i8*, i8** @ab8500_regulator_info, align 8
  %18 = call i8* @ARRAY_SIZE(i8* %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 4), align 8
  %19 = load i32, i32* @ab8500_reg_init, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 3), align 4
  %20 = load i32, i32* @AB8500_NUM_REGULATOR_REGISTERS, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 2), align 8
  %21 = load i8*, i8** @ab8500_regulator_match, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 1), align 8
  %22 = load i8*, i8** @ab8500_regulator_match, align 8
  %23 = call i8* @ARRAY_SIZE(i8* %22)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @abx500_regulator, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %15, %6
  ret void
}

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
