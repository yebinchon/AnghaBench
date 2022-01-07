; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_disable_deferred.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_disable_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_disable_deferred(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator*, %struct.regulator** %4, align 8
  %8 = getelementptr inbounds %struct.regulator, %struct.regulator* %7, i32 0, i32 1
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  store %struct.regulator_dev* %9, %struct.regulator_dev** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.regulator*, %struct.regulator** %4, align 8
  %14 = call i32 @regulator_disable(%struct.regulator* %13)
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %17 = call i32 @regulator_lock(%struct.regulator_dev* %16)
  %18 = load %struct.regulator*, %struct.regulator** %4, align 8
  %19 = getelementptr inbounds %struct.regulator, %struct.regulator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @system_power_efficient_wq, align 4
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = call i32 @mod_delayed_work(i32 %22, i32* %24, i32 %26)
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %29 = call i32 @regulator_unlock(%struct.regulator_dev* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
