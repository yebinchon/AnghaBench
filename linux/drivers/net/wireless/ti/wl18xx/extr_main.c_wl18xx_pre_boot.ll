; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }

@WL18XX_WELP_ARM_COMMAND = common dso_local global i32 0, align 4
@WELP_ARM_COMMAND_VAL = common dso_local global i32 0, align 4
@PART_BOOT = common dso_local global i64 0, align 8
@REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_pre_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_pre_boot(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = call i32 @wl18xx_set_clk(%struct.wl1271* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = load i32, i32* @WL18XX_WELP_ARM_COMMAND, align 4
  %12 = load i32, i32* @WELP_ARM_COMMAND_VAL, align 4
  %13 = call i32 @wlcore_write32(%struct.wl1271* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %40

17:                                               ; preds = %9
  %18 = call i32 @udelay(i32 500)
  %19 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @PART_BOOT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @wlcore_set_partition(%struct.wl1271* %19, i32* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %40

29:                                               ; preds = %17
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @REG_INTERRUPT_MASK, align 4
  %32 = load i32, i32* @WL1271_ACX_INTR_ALL, align 4
  %33 = call i32 @wlcore_write_reg(%struct.wl1271* %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = call i32 @wl18xx_boot_soft_reset(%struct.wl1271* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %36, %28, %16, %8
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @wl18xx_set_clk(%struct.wl1271*) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_write_reg(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl18xx_boot_soft_reset(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
