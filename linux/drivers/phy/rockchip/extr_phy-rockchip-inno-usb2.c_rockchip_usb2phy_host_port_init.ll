; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_host_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_host_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rockchip_usb2phy_port = type { i64, i32, i64, i32, i32, i32* }
%struct.device_node = type { i32 }

@USB2PHY_PORT_HOST = common dso_local global i64 0, align 8
@rockchip_usb2phy_sm_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"linestate\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no linestate irq provided\0A\00", align 1
@rockchip_usb2phy_linestate_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"rockchip_usb2phy\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to request linestate irq handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_usb2phy*, %struct.rockchip_usb2phy_port*, %struct.device_node*)* @rockchip_usb2phy_host_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_host_port_init(%struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy_port* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_usb2phy*, align 8
  %6 = alloca %struct.rockchip_usb2phy_port*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy** %5, align 8
  store %struct.rockchip_usb2phy_port* %1, %struct.rockchip_usb2phy_port** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %9 = load i64, i64* @USB2PHY_PORT_HOST, align 8
  %10 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %11 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %13 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @USB2PHY_PORT_HOST, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %20 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %22 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %24 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %27 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %26, i32 0, i32 3
  %28 = load i32, i32* @rockchip_usb2phy_sm_work, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i64 @of_irq_get_byname(%struct.device_node* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %33 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %35 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %40 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %44 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %3
  %48 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %49 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @rockchip_usb2phy_linestate_irq, align 4
  %56 = load i32, i32* @IRQF_ONESHOT, align 4
  %57 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %6, align 8
  %58 = call i32 @devm_request_threaded_irq(i32 %50, i32 %54, i32* null, i32 %55, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.rockchip_usb2phy_port* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %63 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %38
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.rockchip_usb2phy_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
