; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }

@WL1271_PRE_POWER_ON_SLEEP = common dso_local global i32 0, align 4
@WL1271_POWER_ON_SLEEP = common dso_local global i32 0, align 4
@PART_BOOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl12xx_set_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_set_power_on(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %5 = load i32, i32* @WL1271_PRE_POWER_ON_SLEEP, align 4
  %6 = call i32 @msleep(i32 %5)
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = call i32 @wl1271_power_on(%struct.wl1271* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @WL1271_POWER_ON_SLEEP, align 4
  %14 = call i32 @msleep(i32 %13)
  %15 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %16 = call i32 @wl1271_io_reset(%struct.wl1271* %15)
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = call i32 @wl1271_io_init(%struct.wl1271* %17)
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @PART_BOOT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @wlcore_set_partition(%struct.wl1271* %19, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %38

29:                                               ; preds = %12
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = call i32 @wlcore_fw_wakeup(%struct.wl1271* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %34, %28
  %39 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %40 = call i32 @wl1271_power_off(%struct.wl1271* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wl1271_power_on(%struct.wl1271*) #1

declare dso_local i32 @wl1271_io_reset(%struct.wl1271*) #1

declare dso_local i32 @wl1271_io_init(%struct.wl1271*) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_fw_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_power_off(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
