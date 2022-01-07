; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_musb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_musb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.da8xx_glue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @da8xx_musb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_musb_exit(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca %struct.da8xx_glue*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.da8xx_glue* @dev_get_drvdata(i32 %8)
  store %struct.da8xx_glue* %9, %struct.da8xx_glue** %3, align 8
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 1
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.da8xx_glue*, %struct.da8xx_glue** %3, align 8
  %14 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_power_off(i32 %15)
  %17 = load %struct.da8xx_glue*, %struct.da8xx_glue** %3, align 8
  %18 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_exit(i32 %19)
  %21 = load %struct.da8xx_glue*, %struct.da8xx_glue** %3, align 8
  %22 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load %struct.musb*, %struct.musb** %2, align 8
  %26 = getelementptr inbounds %struct.musb, %struct.musb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_put_phy(i32 %27)
  ret i32 0
}

declare dso_local %struct.da8xx_glue* @dev_get_drvdata(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @usb_put_phy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
