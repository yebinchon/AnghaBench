; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy0_update_iscr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy0_update_iscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun4i_usb_phy = type { i32 }
%struct.sun4i_usb_phy_data = type { i64 }

@REG_ISCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*, i32, i32)* @sun4i_usb_phy0_update_iscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_usb_phy0_update_iscr(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sun4i_usb_phy*, align 8
  %8 = alloca %struct.sun4i_usb_phy_data*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.phy*, %struct.phy** %4, align 8
  %11 = call %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy* %10)
  store %struct.sun4i_usb_phy* %11, %struct.sun4i_usb_phy** %7, align 8
  %12 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %7, align 8
  %13 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %12)
  store %struct.sun4i_usb_phy_data* %13, %struct.sun4i_usb_phy_data** %8, align 8
  %14 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %8, align 8
  %15 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_ISCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %8, align 8
  %29 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_ISCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret void
}

declare dso_local %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
