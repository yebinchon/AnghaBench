; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_m54xx_wdt.c_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_m54xx_wdt.c_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_GPT_GMS0 = common dso_local global i32 0, align 4
@MCF_GPT_GMS_TMS_GPIO = common dso_local global i32 0, align 4
@MCF_GPT_GMS_GPIO_MASK = common dso_local global i32 0, align 4
@MCF_GPT_GMS_OD = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@MCF_BUSCLK = common dso_local global i32 0, align 4
@MCF_GPT_GCIR0 = common dso_local global i32 0, align 4
@MCF_GPT_GMS_WDEN = common dso_local global i32 0, align 4
@MCF_GPT_GMS_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MCF_GPT_GMS0, align 4
  %3 = call i32 @__raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MCF_GPT_GMS_TMS_GPIO, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @MCF_GPT_GMS_TMS_GPIO, align 4
  %10 = load i32, i32* @MCF_GPT_GMS_GPIO_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MCF_GPT_GMS_OD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %1, align 4
  br label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @MCF_GPT_GMS_TMS_GPIO, align 4
  %18 = load i32, i32* @MCF_GPT_GMS_OD, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %16, %8
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @MCF_GPT_GMS0, align 4
  %23 = call i32 @__raw_writel(i32 %21, i32 %22)
  %24 = load i32, i32* @heartbeat, align 4
  %25 = load i32, i32* @MCF_BUSCLK, align 4
  %26 = sdiv i32 %25, 65535
  %27 = mul nsw i32 %24, %26
  %28 = call i32 @MCF_GPT_GCIR_PRE(i32 %27)
  %29 = call i32 @MCF_GPT_GCIR_CNT(i32 65535)
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MCF_GPT_GCIR0, align 4
  %32 = call i32 @__raw_writel(i32 %30, i32 %31)
  %33 = call i32 @MCF_GPT_GMS_OCPW(i32 165)
  %34 = load i32, i32* @MCF_GPT_GMS_WDEN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MCF_GPT_GMS_CE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @MCF_GPT_GMS0, align 4
  %42 = call i32 @__raw_writel(i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @MCF_GPT_GCIR_PRE(i32) #1

declare dso_local i32 @MCF_GPT_GCIR_CNT(i32) #1

declare dso_local i32 @MCF_GPT_GMS_OCPW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
