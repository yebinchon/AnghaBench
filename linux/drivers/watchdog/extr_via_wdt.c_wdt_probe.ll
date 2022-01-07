; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_via_wdt.c_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_via_wdt.c_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot enable PCI device\0A\00", align 1
@iomem_resource = common dso_local global i32 0, align 4
@wdt_res = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@VIA_WDT_MMIO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"MMIO allocation failed\0A\00", align 1
@VIA_WDT_MMIO_BASE = common dso_local global i32 0, align 4
@VIA_WDT_CONF = common dso_local global i32 0, align 4
@VIA_WDT_CONF_ENABLE = common dso_local global i8 0, align 1
@VIA_WDT_CONF_MMIO = common dso_local global i8 0, align 1
@mmio = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"VIA Chipset watchdog MMIO: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"MMIO setting failed. Check BIOS.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"via_wdt\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MMIO region busy\0A\00", align 1
@wdt_mem = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot remap VIA wdt MMIO registers\0A\00", align 1
@timeout = common dso_local global i32 0, align 4
@WDT_TIMEOUT_MAX = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i32 0, align 4
@wdt_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@VIA_WDT_FIRED = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WDT_HEARTBEAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i64 @pci_enable_device(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %128

19:                                               ; preds = %2
  %20 = load i32, i32* @VIA_WDT_MMIO_LEN, align 4
  %21 = call i64 @allocate_resource(i32* @iomem_resource, %struct.TYPE_7__* @wdt_res, i32 %20, i32 -268435456, i32 -256, i32 255, i32* null, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %124

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @VIA_WDT_MMIO_BASE, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wdt_res, i32 0, i32 0), align 4
  %31 = call i32 @pci_write_config_dword(%struct.pci_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* @VIA_WDT_CONF, align 4
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 %33, i8* %6)
  %35 = load i8, i8* @VIA_WDT_CONF_ENABLE, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @VIA_WDT_CONF_MMIO, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @VIA_WDT_CONF, align 4
  %46 = load i8, i8* %6, align 1
  %47 = call i32 @pci_write_config_byte(%struct.pci_dev* %44, i32 %45, i8 zeroext %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @VIA_WDT_MMIO_BASE, align 4
  %50 = call i32 @pci_read_config_dword(%struct.pci_dev* %48, i32 %49, i64* @mmio)
  %51 = load i64, i64* @mmio, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %27
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* @mmio, align 8
  %57 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %62

58:                                               ; preds = %27
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %122

62:                                               ; preds = %53
  %63 = load i64, i64* @mmio, align 8
  %64 = load i32, i32* @VIA_WDT_MMIO_LEN, align 4
  %65 = call i32 @request_mem_region(i64 %63, i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %122

71:                                               ; preds = %62
  %72 = load i64, i64* @mmio, align 8
  %73 = load i32, i32* @VIA_WDT_MMIO_LEN, align 4
  %74 = call i32* @ioremap(i64 %72, i32 %73)
  store i32* %74, i32** @wdt_mem, align 8
  %75 = load i32*, i32** @wdt_mem, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %118

81:                                               ; preds = %71
  %82 = load i32, i32* @timeout, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @timeout, align 4
  %86 = load i32, i32* @WDT_TIMEOUT_MAX, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %81
  %89 = load i32, i32* @WDT_TIMEOUT, align 4
  store i32 %89, i32* @timeout, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* @timeout, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wdt_dev, i32 0, i32 0), align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  store i32* %93, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wdt_dev, i32 0, i32 2), align 8
  %94 = load i32, i32* @nowayout, align 4
  %95 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* @wdt_dev, i32 %94)
  %96 = load i32*, i32** @wdt_mem, align 8
  %97 = call i32 @readl(i32* %96)
  %98 = load i32, i32* @VIA_WDT_FIRED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i32, i32* @WDIOF_CARDRESET, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wdt_dev, i32 0, i32 1), align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wdt_dev, i32 0, i32 1), align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = call i32 @watchdog_register_device(%struct.TYPE_8__* @wdt_dev)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %115

110:                                              ; preds = %105
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i64, i64* @WDT_HEARTBEAT, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @mod_timer(i32* @timer, i64 %113)
  store i32 0, i32* %3, align 4
  br label %128

115:                                              ; preds = %109
  %116 = load i32*, i32** @wdt_mem, align 8
  %117 = call i32 @iounmap(i32* %116)
  br label %118

118:                                              ; preds = %115, %77
  %119 = load i64, i64* @mmio, align 8
  %120 = load i32, i32* @VIA_WDT_MMIO_LEN, align 4
  %121 = call i32 @release_mem_region(i64 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %67, %58
  %123 = call i32 @release_resource(%struct.TYPE_7__* @wdt_res)
  br label %124

124:                                              ; preds = %122, %23
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = call i32 @pci_disable_device(%struct.pci_dev* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %110, %13
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @allocate_resource(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @release_resource(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
