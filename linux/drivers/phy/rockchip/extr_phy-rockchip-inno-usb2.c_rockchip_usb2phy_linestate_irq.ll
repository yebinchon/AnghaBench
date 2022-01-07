; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_linestate_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_linestate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy_port = type { i64, %struct.TYPE_8__, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rockchip_usb2phy = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@USB2PHY_PORT_HOST = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_usb2phy_linestate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_linestate_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rockchip_usb2phy_port*, align 8
  %7 = alloca %struct.rockchip_usb2phy*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rockchip_usb2phy_port*
  store %struct.rockchip_usb2phy_port* %9, %struct.rockchip_usb2phy_port** %6, align 8
  %10 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %11 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rockchip_usb2phy* @dev_get_drvdata(i32 %15)
  store %struct.rockchip_usb2phy* %16, %struct.rockchip_usb2phy** %7, align 8
  %17 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %7, align 8
  %18 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %21 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = call i32 @property_enabled(i32 %19, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %30 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %7, align 8
  %33 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %36 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = call i32 @property_enable(i32 %34, i32* %38, i32 0)
  %40 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %7, align 8
  %41 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %44 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @property_enable(i32 %42, i32* %46, i32 1)
  %48 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %49 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %28
  %56 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %57 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB2PHY_PORT_HOST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %63 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @rockchip_usb2phy_sm_work(i32* %64)
  br label %66

66:                                               ; preds = %61, %55, %28
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.rockchip_usb2phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @property_enabled(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @property_enable(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rockchip_usb2phy_sm_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
