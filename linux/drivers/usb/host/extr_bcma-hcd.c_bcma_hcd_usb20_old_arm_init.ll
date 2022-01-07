; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_old_arm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_old_arm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_hcd_device = type { %struct.bcma_device* }
%struct.bcma_device = type { i32, %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@BCMA_CORE_PMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not find PMU core\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4
@BCMA_IOCTL_CLK = common dso_local global i32 0, align 4
@BCMA_IOCTL_FGC = common dso_local global i32 0, align 4
@BCMA_RESET_CTL = common dso_local global i32 0, align 4
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_FORCEHT = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_HQCLKREQ = common dso_local global i32 0, align 4
@USB_BCMA_CLKCTLST_USB_CLK_REQ = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLLCTL_ADDR = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLLCTL_DATA = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_PLL_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_hcd_device*)* @bcma_hcd_usb20_old_arm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_hcd_usb20_old_arm_init(%struct.bcma_hcd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_hcd_device*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_hcd_device* %0, %struct.bcma_hcd_device** %3, align 8
  %7 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %7, i32 0, i32 0
  %9 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  store %struct.bcma_device* %9, %struct.bcma_device** %4, align 8
  %10 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %11 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = call i32 @usleep_range(i32 10000, i32 20000)
  %13 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %14 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %21 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BCMA_CORE_PMU, align 4
  %24 = call %struct.bcma_device* @bcma_find_core(i32 %22, i32 %23)
  store %struct.bcma_device* %24, %struct.bcma_device** %6, align 8
  %25 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %26 = icmp ne %struct.bcma_device* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %19
  %33 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %34 = load i32, i32* @BCMA_IOCTL, align 4
  %35 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %36 = load i32, i32* @BCMA_IOCTL_FGC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @bcma_awrite32(%struct.bcma_device* %33, i32 %34, i32 %37)
  %39 = call i32 @usleep_range(i32 100, i32 200)
  %40 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %41 = load i32, i32* @BCMA_RESET_CTL, align 4
  %42 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %43 = call i32 @bcma_awrite32(%struct.bcma_device* %40, i32 %41, i32 %42)
  %44 = call i32 @usleep_range(i32 100, i32 200)
  %45 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %46 = load i32, i32* @BCMA_RESET_CTL, align 4
  %47 = call i32 @bcma_awrite32(%struct.bcma_device* %45, i32 %46, i32 0)
  %48 = call i32 @usleep_range(i32 100, i32 200)
  %49 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %50 = load i32, i32* @BCMA_IOCTL, align 4
  %51 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %52 = call i32 @bcma_awrite32(%struct.bcma_device* %49, i32 %50, i32 %51)
  %53 = call i32 @usleep_range(i32 100, i32 200)
  %54 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %55 = load i32, i32* @BCMA_CLKCTLST, align 4
  %56 = load i32, i32* @BCMA_CLKCTLST_FORCEHT, align 4
  %57 = load i32, i32* @BCMA_CLKCTLST_HQCLKREQ, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @USB_BCMA_CLKCTLST_USB_CLK_REQ, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bcma_write32(%struct.bcma_device* %54, i32 %55, i32 %60)
  %62 = call i32 @usleep_range(i32 100, i32 200)
  %63 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %64 = call i32 @bcma_write32(%struct.bcma_device* %63, i32 1296, i32 -940027904)
  %65 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %66 = call i32 @bcma_write32(%struct.bcma_device* %65, i32 1296, i32 -940027901)
  %67 = call i32 @usleep_range(i32 300, i32 600)
  %68 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %69 = load i32, i32* @BCMA_CC_PMU_PLLCTL_ADDR, align 4
  %70 = call i32 @bcma_write32(%struct.bcma_device* %68, i32 %69, i32 6)
  %71 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %72 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %73 = call i32 @bcma_write32(%struct.bcma_device* %71, i32 %72, i32 5464257)
  %74 = call i32 @usleep_range(i32 100, i32 200)
  %75 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %76 = load i32, i32* @BCMA_CC_PMU_PLLCTL_ADDR, align 4
  %77 = call i32 @bcma_write32(%struct.bcma_device* %75, i32 %76, i32 7)
  %78 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %79 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %80 = call i32 @bcma_write32(%struct.bcma_device* %78, i32 %79, i32 0)
  %81 = call i32 @usleep_range(i32 100, i32 200)
  %82 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %83 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %84 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  %85 = call i32 @bcma_set32(%struct.bcma_device* %82, i32 %83, i32 %84)
  %86 = call i32 @usleep_range(i32 100, i32 200)
  %87 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %88 = call i32 @bcma_write32(%struct.bcma_device* %87, i32 1296, i32 133746695)
  %89 = call i32 @udelay(i32 1000)
  %90 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %91 = call i32 @bcma_write32(%struct.bcma_device* %90, i32 512, i32 1279)
  %92 = call i32 @usleep_range(i32 25, i32 50)
  %93 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %94 = call i32 @bcma_write32(%struct.bcma_device* %93, i32 512, i32 1791)
  %95 = call i32 @usleep_range(i32 25, i32 50)
  %96 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %97 = call i32 @bcma_write32(%struct.bcma_device* %96, i32 512, i32 2047)
  %98 = call i32 @usleep_range(i32 25, i32 50)
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @of_platform_default_populate(i32 %101, i32* null, %struct.device* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %32, %27, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local %struct.bcma_device* @bcma_find_core(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @bcma_awrite32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_set32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @of_platform_default_populate(i32, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
