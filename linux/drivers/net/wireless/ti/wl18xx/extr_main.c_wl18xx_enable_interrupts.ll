; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@WL18XX_ACX_EVENTS_VECTOR = common dso_local global i32 0, align 4
@WL18XX_INTR_MASK = common dso_local global i32 0, align 4
@REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_enable_interrupts(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %7 = load i32, i32* @WL18XX_ACX_EVENTS_VECTOR, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @WL18XX_INTR_MASK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = load i32, i32* @REG_INTERRUPT_MASK, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @wlcore_write_reg(%struct.wl1271* %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = call i32 @wlcore_enable_interrupts(%struct.wl1271* %17)
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = load i32, i32* @REG_INTERRUPT_MASK, align 4
  %21 = load i32, i32* @WL1271_ACX_INTR_ALL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @wlcore_write_reg(%struct.wl1271* %19, i32 %20, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %28
  %32 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %33 = call i32 @wlcore_disable_interrupts(%struct.wl1271* %32)
  br label %34

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @wlcore_write_reg(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wlcore_enable_interrupts(%struct.wl1271*) #1

declare dso_local i32 @wlcore_disable_interrupts(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
