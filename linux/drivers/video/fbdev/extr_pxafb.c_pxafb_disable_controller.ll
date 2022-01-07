; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32, i32, i32, i32 }

@LCSR = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0_DIS = common dso_local global i32 0, align 4
@LCCR0_LCDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*)* @pxafb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxafb_disable_controller(%struct.pxafb_info* %0) #0 {
  %2 = alloca %struct.pxafb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pxafb_info* %0, %struct.pxafb_info** %2, align 8
  %4 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %5 = load i32, i32* @LCSR, align 4
  %6 = call i32 @lcd_writel(%struct.pxafb_info* %4, i32 %5, i32 -1)
  %7 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %8 = load i32, i32* @LCCR0, align 4
  %9 = call i32 @lcd_readl(%struct.pxafb_info* %7, i32 %8)
  %10 = load i32, i32* @LCCR0_LDM, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %14 = load i32, i32* @LCCR0, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @lcd_writel(%struct.pxafb_info* %13, i32 %14, i32 %15)
  %17 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %18 = load i32, i32* @LCCR0, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LCCR0_DIS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @lcd_writel(%struct.pxafb_info* %17, i32 %18, i32 %21)
  %23 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %24 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %23, i32 0, i32 2
  %25 = call i32 @msecs_to_jiffies(i32 200)
  %26 = call i32 @wait_for_completion_timeout(i32* %24, i32 %25)
  %27 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %28 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  ret void
}

declare dso_local i32 @lcd_writel(%struct.pxafb_info*, i32, i32) #1

declare dso_local i32 @lcd_readl(%struct.pxafb_info*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
