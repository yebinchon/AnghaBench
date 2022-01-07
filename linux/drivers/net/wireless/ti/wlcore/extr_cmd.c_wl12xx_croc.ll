; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_croc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_croc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_croc(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @wl12xx_cmd_croc(%struct.wl1271* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__clear_bit(i32 %26, i32 %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %35 = call i64 @find_first_bit(i32 %33, i64 %34)
  %36 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %40 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %39)
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_cmd_croc(%struct.wl1271*, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
