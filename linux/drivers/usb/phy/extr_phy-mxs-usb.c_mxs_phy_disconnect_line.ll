; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_disconnect_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_disconnect_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_phy*, i32)* @mxs_phy_disconnect_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_phy_disconnect_line(%struct.mxs_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxs_phy* %0, %struct.mxs_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %17 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %39

21:                                               ; preds = %15
  %22 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %23 = call i32 @mxs_phy_get_vbus_status(%struct.mxs_phy* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %31 = call i32 @mxs_phy_is_otg_host(%struct.mxs_phy* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %35 = call i32 @__mxs_phy_disconnect_line(%struct.mxs_phy* %34, i32 1)
  br label %39

36:                                               ; preds = %29, %26, %21
  %37 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %38 = call i32 @__mxs_phy_disconnect_line(%struct.mxs_phy* %37, i32 0)
  br label %39

39:                                               ; preds = %14, %20, %36, %33
  ret void
}

declare dso_local i32 @mxs_phy_get_vbus_status(%struct.mxs_phy*) #1

declare dso_local i32 @mxs_phy_is_otg_host(%struct.mxs_phy*) #1

declare dso_local i32 @__mxs_phy_disconnect_line(%struct.mxs_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
