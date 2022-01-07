; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_reset_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32 }
%struct.iudma_ch = type { i32, i64, i32, i64, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, i64 }
%struct.bcm_enet_desc = type { i64 }

@IUDMA_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG_REG = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't reset IUDMA channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"forcibly halting IUDMA channel %d\0A\00", align 1
@ENETDMAC_CHANCFG_BUFHALT_MASK = common dso_local global i32 0, align 4
@ENETDMAC_IR_REG = common dso_local global i32 0, align 4
@ENETDMAC_IR_BUFDONE_MASK = common dso_local global i32 0, align 4
@ENETDMAC_IRMASK_REG = common dso_local global i32 0, align 4
@ENETDMAC_MAXBURST_REG = common dso_local global i32 0, align 4
@ENETDMAS_RSTART_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*, %struct.iudma_ch*)* @iudma_reset_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iudma_reset_channel(%struct.bcm63xx_udc* %0, %struct.iudma_ch* %1) #0 {
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca %struct.iudma_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_enet_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  store %struct.iudma_ch* %1, %struct.iudma_ch** %4, align 8
  %8 = load i32, i32* @IUDMA_RESET_TIMEOUT_US, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %10 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %13 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %18 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %19 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @max(i32 0, i64 %20)
  %22 = call i32 @bcm63xx_fifo_reset_ep(%struct.bcm63xx_udc* %17, i64 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %25 = load i32, i32* @ENETDMAC_CHANCFG_REG, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @usb_dmac_writel(%struct.bcm63xx_udc* %24, i32 0, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %79, %23
  %29 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %30 = load i32, i32* @ENETDMAC_CHANCFG_REG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @usb_dmac_readl(%struct.bcm63xx_udc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ENETDMAC_CHANCFG_EN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %28
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %39 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %44 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %49 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %50 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @bcm63xx_fifo_reset_ep(%struct.bcm63xx_udc* %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %42, %36
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %59 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %80

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IUDMA_RESET_TIMEOUT_US, align 4
  %66 = sdiv i32 %65, 2
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %70 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %75 = load i32, i32* @ENETDMAC_CHANCFG_BUFHALT_MASK, align 4
  %76 = load i32, i32* @ENETDMAC_CHANCFG_REG, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @usb_dmac_writel(%struct.bcm63xx_udc* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %63
  br label %28

80:                                               ; preds = %57, %28
  %81 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %82 = load i32, i32* @ENETDMAC_IR_REG, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @usb_dmac_writel(%struct.bcm63xx_udc* %81, i32 -1, i32 %82, i32 %83)
  %85 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %86 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %85, i32 0, i32 4
  %87 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %86, align 8
  store %struct.bcm_enet_desc* %87, %struct.bcm_enet_desc** %6, align 8
  br label %88

88:                                               ; preds = %97, %80
  %89 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %90 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %91 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %90, i32 0, i32 7
  %92 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %91, align 8
  %93 = icmp ule %struct.bcm_enet_desc* %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94
  %98 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %99 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %98, i32 1
  store %struct.bcm_enet_desc* %99, %struct.bcm_enet_desc** %6, align 8
  br label %88

100:                                              ; preds = %88
  %101 = call i32 (...) @mb()
  %102 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %103 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %102, i32 0, i32 4
  %104 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %103, align 8
  %105 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %106 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %105, i32 0, i32 5
  store %struct.bcm_enet_desc* %104, %struct.bcm_enet_desc** %106, align 8
  %107 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %108 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %107, i32 0, i32 6
  store %struct.bcm_enet_desc* %104, %struct.bcm_enet_desc** %108, align 8
  %109 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %110 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %112 = load i32, i32* @ENETDMAC_IR_BUFDONE_MASK, align 4
  %113 = load i32, i32* @ENETDMAC_IRMASK_REG, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @usb_dmac_writel(%struct.bcm63xx_udc* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %117 = load i32, i32* @ENETDMAC_MAXBURST_REG, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @usb_dmac_writel(%struct.bcm63xx_udc* %116, i32 8, i32 %117, i32 %118)
  %120 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %121 = load %struct.iudma_ch*, %struct.iudma_ch** %4, align 8
  %122 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ENETDMAS_RSTART_REG, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @usb_dmas_writel(%struct.bcm63xx_udc* %120, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %128 = load i32, i32* @ENETDMAS_SRAM2_REG, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @usb_dmas_writel(%struct.bcm63xx_udc* %127, i32 0, i32 %128, i32 %129)
  ret void
}

declare dso_local i32 @bcm63xx_fifo_reset_ep(%struct.bcm63xx_udc*, i64) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @usb_dmac_writel(%struct.bcm63xx_udc*, i32, i32, i32) #1

declare dso_local i32 @usb_dmac_readl(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usb_dmas_writel(%struct.bcm63xx_udc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
