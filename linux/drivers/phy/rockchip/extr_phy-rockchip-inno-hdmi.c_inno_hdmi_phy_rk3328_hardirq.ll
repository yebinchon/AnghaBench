; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32 }

@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @inno_hdmi_phy_rk3328_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_rk3328_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inno_hdmi_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.inno_hdmi_phy*
  store %struct.inno_hdmi_phy* %11, %struct.inno_hdmi_phy** %6, align 8
  %12 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %13 = call i32 @inno_read(%struct.inno_hdmi_phy* %12, i32 4)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %15 = call i32 @inno_read(%struct.inno_hdmi_phy* %14, i32 6)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %17 = call i32 @inno_read(%struct.inno_hdmi_phy* %16, i32 8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @inno_write(%struct.inno_hdmi_phy* %21, i32 4, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @inno_write(%struct.inno_hdmi_phy* %28, i32 6, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @inno_write(%struct.inno_hdmi_phy* %35, i32 8, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41, %38
  %48 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @inno_read(%struct.inno_hdmi_phy*, i32) #1

declare dso_local i32 @inno_write(%struct.inno_hdmi_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
