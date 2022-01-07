; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_hc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_hc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp1760_hcd = type { i32 }

@HC_SCRATCH_REG = common dso_local global i32 0, align 4
@HC_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Scratch test failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HC_BUFFER_STATUS_REG = common dso_local global i32 0, align 4
@HC_ATL_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@NO_TRANSFER_ACTIVE = common dso_local global i32 0, align 4
@HC_INT_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_ISO_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_HW_MODE_CTRL = common dso_local global i32 0, align 4
@ALL_ATX_RESET = common dso_local global i32 0, align 4
@HC_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE_MASK = common dso_local global i32 0, align 4
@HC_HCSPARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @isp1760_hc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_hc_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.isp1760_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %8)
  store %struct.isp1760_hcd* %9, %struct.isp1760_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HC_SCRATCH_REG, align 4
  %14 = call i32 @reg_write32(i32 %12, i32 %13, i32 -559039810)
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HC_CHIP_ID_REG, align 4
  %19 = call i32 @reg_read32(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HC_SCRATCH_REG, align 4
  %24 = call i32 @reg_read32(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, -559039810
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %104

35:                                               ; preds = %1
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HC_BUFFER_STATUS_REG, align 4
  %40 = call i32 @reg_write32(i32 %38, i32 %39, i32 0)
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HC_ATL_PTD_SKIPMAP_REG, align 4
  %45 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %46 = call i32 @reg_write32(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HC_INT_PTD_SKIPMAP_REG, align 4
  %51 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %52 = call i32 @reg_write32(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HC_ISO_PTD_SKIPMAP_REG, align 4
  %57 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %58 = call i32 @reg_write32(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %60 = call i32 @ehci_reset(%struct.usb_hcd* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %35
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %104

65:                                               ; preds = %35
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %70 = call i32 @reg_read32(i32 %68, i32 %69)
  %71 = load i32, i32* @ALL_ATX_RESET, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ALL_ATX_RESET, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @reg_write32(i32 %76, i32 %77, i32 %80)
  %82 = call i32 @mdelay(i32 10)
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @reg_write32(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HC_INTERRUPT_ENABLE, align 4
  %93 = load i32, i32* @INTERRUPT_ENABLE_MASK, align 4
  %94 = call i32 @reg_write32(i32 %91, i32 %92, i32 %93)
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %96 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @HC_HCSPARAMS, align 4
  %99 = call i32 @reg_read32(i32 %97, i32 %98)
  %100 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %101 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %103 = call i32 @priv_init(%struct.usb_hcd* %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %65, %63, %27
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ehci_reset(%struct.usb_hcd*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @priv_init(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
