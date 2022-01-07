; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }

@HDMI_IRQ_LINK_CONNECT = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_DISCONNECT = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_LDOON = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_TXON = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdmi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hdmi_wp_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hdmi_wp_data*
  store %struct.hdmi_wp_data* %8, %struct.hdmi_wp_data** %5, align 8
  %9 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %10 = call i32 @hdmi_wp_get_irqstatus(%struct.hdmi_wp_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %25 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %26 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %24, i32 %25)
  %27 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %28 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %29 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %27, i32 %30)
  %32 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %33 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %34 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %32, i32 %33)
  br label %55

35:                                               ; preds = %18, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %42 = load i32, i32* @HDMI_PHYPWRCMD_TXON, align 4
  %43 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %41, i32 %42)
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %51 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %52 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @hdmi_wp_get_irqstatus(%struct.hdmi_wp_data*) #1

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data*, i32) #1

declare dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
