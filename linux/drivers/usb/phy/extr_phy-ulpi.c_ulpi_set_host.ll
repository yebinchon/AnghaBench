; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { %struct.usb_bus*, %struct.usb_phy* }
%struct.usb_phy = type { i32 }
%struct.usb_bus = type { i32 }

@ULPI_IFC_CTRL = common dso_local global i32 0, align 4
@ULPI_IFC_CTRL_6_PIN_SERIAL_MODE = common dso_local global i32 0, align 4
@ULPI_IFC_CTRL_3_PIN_SERIAL_MODE = common dso_local global i32 0, align 4
@ULPI_IFC_CTRL_CARKITMODE = common dso_local global i32 0, align 4
@ULPI_IC_6PIN_SERIAL = common dso_local global i32 0, align 4
@ULPI_IC_3PIN_SERIAL = common dso_local global i32 0, align 4
@ULPI_IC_CARKIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, %struct.usb_bus*)* @ulpi_set_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_set_host(%struct.usb_otg* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_otg*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.usb_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_otg* %0, %struct.usb_otg** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %8 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %9 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %8, i32 0, i32 1
  %10 = load %struct.usb_phy*, %struct.usb_phy** %9, align 8
  store %struct.usb_phy* %10, %struct.usb_phy** %6, align 8
  %11 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %12 = load i32, i32* @ULPI_IFC_CTRL, align 4
  %13 = call i32 @usb_phy_io_read(%struct.usb_phy* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %15 = icmp ne %struct.usb_bus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %17, i32 0, i32 0
  store %struct.usb_bus* null, %struct.usb_bus** %18, align 8
  store i32 0, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %21 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %22 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %21, i32 0, i32 0
  store %struct.usb_bus* %20, %struct.usb_bus** %22, align 8
  %23 = load i32, i32* @ULPI_IFC_CTRL_6_PIN_SERIAL_MODE, align 4
  %24 = load i32, i32* @ULPI_IFC_CTRL_3_PIN_SERIAL_MODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ULPI_IFC_CTRL_CARKITMODE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %32 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ULPI_IC_6PIN_SERIAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @ULPI_IFC_CTRL_6_PIN_SERIAL_MODE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %65

41:                                               ; preds = %19
  %42 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %43 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ULPI_IC_3PIN_SERIAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @ULPI_IFC_CTRL_3_PIN_SERIAL_MODE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %64

52:                                               ; preds = %41
  %53 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %54 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ULPI_IC_CARKIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @ULPI_IFC_CTRL_CARKITMODE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ULPI_IFC_CTRL, align 4
  %69 = call i32 @usb_phy_io_write(%struct.usb_phy* %66, i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @usb_phy_io_read(%struct.usb_phy*, i32) #1

declare dso_local i32 @usb_phy_io_write(%struct.usb_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
