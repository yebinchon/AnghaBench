; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_otg_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_otg_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.rockchip_usb2phy_port = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@USB2PHY_PORT_OTG = common dso_local global i64 0, align 8
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@rockchip_chg_detect_work = common dso_local global i32 0, align 4
@rockchip_usb2phy_otg_sm_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"otg-mux\00", align 1
@rockchip_usb2phy_otg_mux_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rockchip_usb2phy_otg\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to request otg-mux irq handle\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"otg-bvalid\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no vbus valid irq provided\0A\00", align 1
@rockchip_usb2phy_bvalid_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"rockchip_usb2phy_bvalid\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to request otg-bvalid irq handle\0A\00", align 1
@rockchip_otg_event = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"register USB HOST notifier failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_usb2phy*, %struct.rockchip_usb2phy_port*, %struct.device_node*)* @rockchip_usb2phy_otg_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_otg_port_init(%struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy_port* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.rockchip_usb2phy*, align 8
  %5 = alloca %struct.rockchip_usb2phy_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy** %4, align 8
  store %struct.rockchip_usb2phy_port* %1, %struct.rockchip_usb2phy_port** %5, align 8
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %8 = load i64, i64* @USB2PHY_PORT_OTG, align 8
  %9 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %10 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %12 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @USB2PHY_PORT_OTG, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %19 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %18, i32 0, i32 11
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %21 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %24 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %28 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %27, i32 0, i32 9
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i64 @of_usb_get_dr_mode_by_phy(%struct.device_node* %30, i32 -1)
  %32 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %33 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %35 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %3
  %40 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %41 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %3
  store i32 0, i32* %7, align 4
  br label %151

46:                                               ; preds = %39
  %47 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %48 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %47, i32 0, i32 8
  %49 = load i32, i32* @rockchip_chg_detect_work, align 4
  %50 = call i32 @INIT_DELAYED_WORK(i32* %48, i32 %49)
  %51 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %51, i32 0, i32 7
  %53 = load i32, i32* @rockchip_usb2phy_otg_sm_work, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = call i8* @of_irq_get_byname(%struct.device_node* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %59 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %61 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %46
  %65 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %66 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %69 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @rockchip_usb2phy_otg_mux_irq, align 4
  %73 = load i32, i32* @IRQF_ONESHOT, align 4
  %74 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %75 = call i32 @devm_request_threaded_irq(i32 %67, i32 %71, i32* null, i32 %72, i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.rockchip_usb2phy_port* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %80 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %151

83:                                               ; preds = %64
  br label %121

84:                                               ; preds = %46
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = call i8* @of_irq_get_byname(%struct.device_node* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %89 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %91 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %96 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %100 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %7, align 4
  br label %151

102:                                              ; preds = %84
  %103 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %104 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %107 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @rockchip_usb2phy_bvalid_irq, align 4
  %110 = load i32, i32* @IRQF_ONESHOT, align 4
  %111 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %112 = call i32 @devm_request_threaded_irq(i32 %105, i32 %108, i32* null, i32 %109, i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), %struct.rockchip_usb2phy_port* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %102
  %116 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %117 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %151

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120, %83
  %122 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %123 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IS_ERR(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %150, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @rockchip_otg_event, align 4
  %129 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %130 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %133 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %136 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @EXTCON_USB_HOST, align 4
  %139 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %5, align 8
  %140 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %139, i32 0, i32 6
  %141 = call i32 @devm_extcon_register_notifier(i32 %134, i32 %137, i32 %138, %struct.TYPE_4__* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %127
  %145 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %146 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %127
  br label %150

150:                                              ; preds = %149, %121
  br label %151

151:                                              ; preds = %150, %115, %94, %78, %45
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_usb_get_dr_mode_by_phy(%struct.device_node*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.rockchip_usb2phy_port*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_register_notifier(i32, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
