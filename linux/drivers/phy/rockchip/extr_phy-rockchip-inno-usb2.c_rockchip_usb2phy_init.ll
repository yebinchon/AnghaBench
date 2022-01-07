; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rockchip_usb2phy_port = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rockchip_usb2phy = type { i32 }

@USB2PHY_PORT_OTG = common dso_local global i64 0, align 8
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@OTG_SCHEDULE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mode %d\0A\00", align 1
@USB2PHY_PORT_HOST = common dso_local global i64 0, align 8
@SCHEDULE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_usb2phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_usb2phy_port*, align 8
  %4 = alloca %struct.rockchip_usb2phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.rockchip_usb2phy_port* @phy_get_drvdata(%struct.phy* %6)
  store %struct.rockchip_usb2phy_port* %7, %struct.rockchip_usb2phy_port** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %2, align 8
  %9 = getelementptr inbounds %struct.phy, %struct.phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rockchip_usb2phy* @dev_get_drvdata(i32 %11)
  store %struct.rockchip_usb2phy* %12, %struct.rockchip_usb2phy** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USB2PHY_PORT_OTG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %1
  %22 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %23 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %29 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %35 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = call i32 @property_enable(i32 %36, i32* %40, i32 1)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %110

45:                                               ; preds = %33
  %46 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %47 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %50 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %49, i32 0, i32 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = call i32 @property_enable(i32 %48, i32* %52, i32 1)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %110

57:                                               ; preds = %45
  %58 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %59 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %58, i32 0, i32 6
  %60 = load i32, i32* @OTG_SCHEDULE_DELAY, align 4
  %61 = mul nsw i32 %60, 3
  %62 = call i32 @schedule_delayed_work(i32* %59, i32 %61)
  br label %72

63:                                               ; preds = %27, %21
  %64 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %65 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %64, i32 0, i32 5
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %69 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %63, %57
  br label %109

73:                                               ; preds = %1
  %74 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %75 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @USB2PHY_PORT_HOST, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %81 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %84 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = call i32 @property_enable(i32 %82, i32* %86, i32 1)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %110

91:                                               ; preds = %79
  %92 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %4, align 8
  %93 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %96 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @property_enable(i32 %94, i32* %98, i32 1)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %110

103:                                              ; preds = %91
  %104 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %105 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %104, i32 0, i32 3
  %106 = load i32, i32* @SCHEDULE_DELAY, align 4
  %107 = call i32 @schedule_delayed_work(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %73
  br label %109

109:                                              ; preds = %108, %72
  br label %110

110:                                              ; preds = %109, %102, %90, %56, %44
  %111 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %3, align 8
  %112 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.rockchip_usb2phy_port* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_usb2phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @property_enable(i32, i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
