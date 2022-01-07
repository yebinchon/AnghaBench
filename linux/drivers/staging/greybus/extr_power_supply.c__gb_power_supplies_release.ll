; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supplies_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supplies_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supplies = type { i32, i32, %struct.gb_power_supplies* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supplies*)* @_gb_power_supplies_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_power_supplies_release(%struct.gb_power_supplies* %0) #0 {
  %2 = alloca %struct.gb_power_supplies*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_power_supplies* %0, %struct.gb_power_supplies** %2, align 8
  %4 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %5 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %4, i32 0, i32 2
  %6 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %7 = icmp ne %struct.gb_power_supplies* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %11 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %27, %9
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %16 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %21 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %20, i32 0, i32 2
  %22 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %22, i64 %24
  %26 = call i32 @_gb_power_supply_release(%struct.gb_power_supplies* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %32 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %31, i32 0, i32 2
  %33 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %32, align 8
  %34 = call i32 @kfree(%struct.gb_power_supplies* %33)
  %35 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %36 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %2, align 8
  %39 = call i32 @kfree(%struct.gb_power_supplies* %38)
  br label %40

40:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_gb_power_supply_release(%struct.gb_power_supplies*) #1

declare dso_local i32 @kfree(%struct.gb_power_supplies*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
