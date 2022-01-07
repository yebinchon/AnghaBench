; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_handle_consumer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_handle_consumer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i64, %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*)* @_regulator_handle_consumer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_handle_consumer_enable(%struct.regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  %5 = load %struct.regulator*, %struct.regulator** %3, align 8
  %6 = getelementptr inbounds %struct.regulator, %struct.regulator* %5, i32 0, i32 2
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  store %struct.regulator_dev* %7, %struct.regulator_dev** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held_once(i32* %10)
  %12 = load %struct.regulator*, %struct.regulator** %3, align 8
  %13 = getelementptr inbounds %struct.regulator, %struct.regulator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.regulator*, %struct.regulator** %3, align 8
  %17 = getelementptr inbounds %struct.regulator, %struct.regulator* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.regulator*, %struct.regulator** %3, align 8
  %22 = getelementptr inbounds %struct.regulator, %struct.regulator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = call i32 @drms_uA_update(%struct.regulator_dev* %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @drms_uA_update(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
