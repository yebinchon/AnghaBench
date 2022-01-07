; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_suspend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_suspend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_state = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regulator_state, %struct.regulator_state, %struct.regulator_state }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator_state* (%struct.regulator_dev*, i32)* @regulator_get_suspend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_state*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %7 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.regulator_state* null, %struct.regulator_state** %3, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %28 [
    i32 128, label %13
    i32 129, label %18
    i32 130, label %23
  ]

13:                                               ; preds = %11
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.regulator_state* %17, %struct.regulator_state** %3, align 8
  br label %29

18:                                               ; preds = %11
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.regulator_state* %22, %struct.regulator_state** %3, align 8
  br label %29

23:                                               ; preds = %11
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.regulator_state* %27, %struct.regulator_state** %3, align 8
  br label %29

28:                                               ; preds = %11
  store %struct.regulator_state* null, %struct.regulator_state** %3, align 8
  br label %29

29:                                               ; preds = %28, %23, %18, %13, %10
  %30 = load %struct.regulator_state*, %struct.regulator_state** %3, align 8
  ret %struct.regulator_state* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
