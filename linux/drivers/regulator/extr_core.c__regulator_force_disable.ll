; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_force_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_force_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REGULATOR_EVENT_FORCE_DISABLE = common dso_local global i32 0, align 4
@REGULATOR_EVENT_PRE_DISABLE = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to force disable\0A\00", align 1
@REGULATOR_EVENT_ABORT_DISABLE = common dso_local global i32 0, align 4
@REGULATOR_EVENT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @_regulator_force_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_force_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held_once(i32* %7)
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = load i32, i32* @REGULATOR_EVENT_FORCE_DISABLE, align 4
  %11 = load i32, i32* @REGULATOR_EVENT_PRE_DISABLE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @_notifier_call_chain(%struct.regulator_dev* %9, i32 %12, i32* null)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = call i32 @_regulator_do_disable(%struct.regulator_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %28 = call i32 @rdev_err(%struct.regulator_dev* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %30 = load i32, i32* @REGULATOR_EVENT_FORCE_DISABLE, align 4
  %31 = load i32, i32* @REGULATOR_EVENT_ABORT_DISABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @_notifier_call_chain(%struct.regulator_dev* %29, i32 %32, i32* null)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %37 = load i32, i32* @REGULATOR_EVENT_FORCE_DISABLE, align 4
  %38 = load i32, i32* @REGULATOR_EVENT_DISABLE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @_notifier_call_chain(%struct.regulator_dev* %36, i32 %39, i32* null)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %26, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @_notifier_call_chain(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @_regulator_do_disable(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
