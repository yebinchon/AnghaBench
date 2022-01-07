; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clk*, %struct.omapfb_device*, i32, i32, i32 }
%struct.clk = type { i32 }
%struct.omapfb_device = type { i32 }

@OMAP_SOSSI_BASE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@sossi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"can't ioremap SoSSI\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ck_dpll1out\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't get DPLL1OUT clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ck_sossi\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"can't get SoSSI functional clock\0A\00", align 1
@MOD_CONF_CTRL_1 = common dso_local global i32 0, align 4
@CONF_SOSSI_RESET_R = common dso_local global i32 0, align 4
@ARM_IDLECT2 = common dso_local global i32 0, align 4
@SOSSI_INIT2_REG = common dso_local global i32 0, align 4
@SOSSI_ID_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"invalid SoSSI sync pattern: %08x, %08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@sossi_dma_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"can't get LCDC IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"SoSSI version %d.%d initialized\0A\00", align 1
@SOSSI_INIT1_REG = common dso_local global i32 0, align 4
@INT_1610_SoSSI_MATCH = common dso_local global i32 0, align 4
@sossi_match_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"sossi_match\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"can't get SoSSI match IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @sossi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sossi_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %9 = load i32, i32* @OMAP_SOSSI_BASE, align 4
  %10 = load i32, i32* @SZ_1K, align 4
  %11 = call i32 @ioremap(i32 %9, i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 4), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 4), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %16 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %170

21:                                               ; preds = %1
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  store %struct.omapfb_device* %22, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 8
  %23 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 3))
  %24 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %25 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.clk* @clk_get(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %27, %struct.clk** %7, align 8
  %28 = load %struct.clk*, %struct.clk** %7, align 8
  %29 = call i64 @IS_ERR(%struct.clk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.clk*, %struct.clk** %7, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %2, align 4
  br label %170

38:                                               ; preds = %21
  %39 = load %struct.clk*, %struct.clk** %7, align 8
  %40 = call i32 @clk_get_rate(%struct.clk* %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 2), align 8
  %41 = load %struct.clk*, %struct.clk** %7, align 8
  %42 = call i32 @clk_put(%struct.clk* %41)
  %43 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %44 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.clk* @clk_get(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.clk* %46, %struct.clk** %6, align 8
  %47 = load %struct.clk*, %struct.clk** %6, align 8
  %48 = call i64 @IS_ERR(%struct.clk* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %52 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.clk*, %struct.clk** %6, align 8
  %56 = call i32 @PTR_ERR(%struct.clk* %55)
  store i32 %56, i32* %2, align 4
  br label %170

57:                                               ; preds = %38
  %58 = load %struct.clk*, %struct.clk** %6, align 8
  store %struct.clk* %58, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %59 = load i32, i32* @MOD_CONF_CTRL_1, align 4
  %60 = call i32 @omap_readl(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @CONF_SOSSI_RESET_R, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @MOD_CONF_CTRL_1, align 4
  %66 = call i32 @omap_writel(i32 %64, i32 %65)
  %67 = load i32, i32* @CONF_SOSSI_RESET_R, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MOD_CONF_CTRL_1, align 4
  %73 = call i32 @omap_writel(i32 %71, i32 %72)
  %74 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %75 = call i32 @clk_enable(%struct.clk* %74)
  %76 = load i32, i32* @ARM_IDLECT2, align 4
  %77 = call i32 @omap_readl(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, -257
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @ARM_IDLECT2, align 4
  %82 = call i32 @omap_writel(i32 %80, i32 %81)
  %83 = load i32, i32* @SOSSI_INIT2_REG, align 4
  %84 = call i32 @sossi_read_reg(i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, 3
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @SOSSI_INIT2_REG, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @sossi_write_reg(i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, -3
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @SOSSI_INIT2_REG, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @sossi_write_reg(i32 %92, i32 %93)
  %95 = load i32, i32* @SOSSI_ID_REG, align 4
  %96 = call i32 @sossi_write_reg(i32 %95, i32 0)
  %97 = load i32, i32* @SOSSI_ID_REG, align 4
  %98 = call i32 @sossi_read_reg(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @SOSSI_ID_REG, align 4
  %100 = call i32 @sossi_read_reg(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 1431655765
  br i1 %102, label %106, label %103

103:                                              ; preds = %57
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, -1431655766
  br i1 %105, label %106, label %115

106:                                              ; preds = %103, %57
  %107 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %108 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %164

115:                                              ; preds = %103
  %116 = load i32, i32* @sossi_dma_callback, align 4
  %117 = call i32 @omap_lcdc_set_dma_callback(i32 %116, i32* null)
  store i32 %117, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %121 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %164

126:                                              ; preds = %115
  %127 = load i32, i32* @SOSSI_ID_REG, align 4
  %128 = call i32 @sossi_read_reg(i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* @SOSSI_ID_REG, align 4
  %130 = call i32 @sossi_read_reg(i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %132 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %4, align 4
  %135 = ashr i32 %134, 16
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 65535
  %138 = call i32 @dev_info(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %135, i32 %137)
  %139 = load i32, i32* @SOSSI_INIT1_REG, align 4
  %140 = call i32 @sossi_read_reg(i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = or i32 %141, 524288
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, 2147483647
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @SOSSI_INIT1_REG, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @sossi_write_reg(i32 %145, i32 %146)
  %148 = load i32, i32* @INT_1610_SoSSI_MATCH, align 4
  %149 = load i32, i32* @sossi_match_irq, align 4
  %150 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %151 = load %struct.omapfb_device*, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 8
  %152 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @request_irq(i32 %148, i32 %149, i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %126
  %157 = load %struct.omapfb_device*, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 8
  %158 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %164

161:                                              ; preds = %126
  %162 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %163 = call i32 @clk_disable(%struct.clk* %162)
  store i32 0, i32* %2, align 4
  br label %170

164:                                              ; preds = %156, %119, %106
  %165 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %166 = call i32 @clk_disable(%struct.clk* %165)
  %167 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %168 = call i32 @clk_put(%struct.clk* %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %161, %50, %31, %14
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @sossi_read_reg(i32) #1

declare dso_local i32 @sossi_write_reg(i32, i32) #1

declare dso_local i32 @omap_lcdc_set_dma_callback(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
