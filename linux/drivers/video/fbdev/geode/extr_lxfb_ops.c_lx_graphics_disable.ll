; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_graphics_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_graphics_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.lxfb_par* }
%struct.lxfb_par = type { i32 }

@VP_A1T = common dso_local global i32 0, align 4
@VP_A2T = common dso_local global i32 0, align 4
@VP_A3T = common dso_local global i32 0, align 4
@DC_GENERAL_CFG = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_VGAE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_VIDE = common dso_local global i32 0, align 4
@VP_VCFG = common dso_local global i32 0, align 4
@VP_VCFG_VID_EN = common dso_local global i32 0, align 4
@DC_IRQ = common dso_local global i32 0, align 4
@DC_IRQ_MASK = common dso_local global i32 0, align 4
@DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK = common dso_local global i32 0, align 4
@DC_IRQ_STATUS = common dso_local global i32 0, align 4
@DC_IRQ_VIP_VSYNC_IRQ_STATUS = common dso_local global i32 0, align 4
@DC_GENLK_CTL = common dso_local global i32 0, align 4
@DC_GENLK_CTL_GENLK_EN = common dso_local global i32 0, align 4
@DC_CLR_KEY = common dso_local global i32 0, align 4
@DC_CLR_KEY_CLR_KEY_EN = common dso_local global i32 0, align 4
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i32 0, align 4
@VP_MISC = common dso_local global i32 0, align 4
@VP_MISC_DACPWRDN = common dso_local global i32 0, align 4
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_CMPE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DECE = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_TGEN = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFLE = common dso_local global i32 0, align 4
@GP_BLT_STATUS = common dso_local global i32 0, align 4
@GP_BLT_STATUS_PB = common dso_local global i32 0, align 4
@GP_BLT_STATUS_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @lx_graphics_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_graphics_disable(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.lxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.lxfb_par*, %struct.lxfb_par** %7, align 8
  store %struct.lxfb_par* %8, %struct.lxfb_par** %3, align 8
  %9 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %10 = load i32, i32* @VP_A1T, align 4
  %11 = call i32 @write_vp(%struct.lxfb_par* %9, i32 %10, i32 0)
  %12 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %13 = load i32, i32* @VP_A2T, align 4
  %14 = call i32 @write_vp(%struct.lxfb_par* %12, i32 %13, i32 0)
  %15 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %16 = load i32, i32* @VP_A3T, align 4
  %17 = call i32 @write_vp(%struct.lxfb_par* %15, i32 %16, i32 0)
  %18 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %19 = load i32, i32* @DC_GENERAL_CFG, align 4
  %20 = call i32 @read_dc(%struct.lxfb_par* %18, i32 %19)
  %21 = load i32, i32* @DC_GENERAL_CFG_VGAE, align 4
  %22 = load i32, i32* @DC_GENERAL_CFG_VIDE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %27 = load i32, i32* @DC_GENERAL_CFG, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @write_dc(%struct.lxfb_par* %26, i32 %27, i32 %28)
  %30 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %31 = load i32, i32* @VP_VCFG, align 4
  %32 = call i32 @read_vp(%struct.lxfb_par* %30, i32 %31)
  %33 = load i32, i32* @VP_VCFG_VID_EN, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %37 = load i32, i32* @VP_VCFG, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @write_vp(%struct.lxfb_par* %36, i32 %37, i32 %38)
  %40 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %41 = load i32, i32* @DC_IRQ, align 4
  %42 = load i32, i32* @DC_IRQ_MASK, align 4
  %43 = load i32, i32* @DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @DC_IRQ_STATUS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DC_IRQ_VIP_VSYNC_IRQ_STATUS, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @write_dc(%struct.lxfb_par* %40, i32 %41, i32 %48)
  %50 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %51 = load i32, i32* @DC_GENLK_CTL, align 4
  %52 = call i32 @read_dc(%struct.lxfb_par* %50, i32 %51)
  %53 = load i32, i32* @DC_GENLK_CTL_GENLK_EN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %57 = load i32, i32* @DC_GENLK_CTL, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @write_dc(%struct.lxfb_par* %56, i32 %57, i32 %58)
  %60 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %61 = load i32, i32* @DC_CLR_KEY, align 4
  %62 = call i32 @read_dc(%struct.lxfb_par* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %64 = load i32, i32* @DC_CLR_KEY, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DC_CLR_KEY_CLR_KEY_EN, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @write_dc(%struct.lxfb_par* %63, i32 %64, i32 %68)
  %70 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %71 = load i32, i32* @FP_PM, align 4
  %72 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %73 = load i32, i32* @FP_PM, align 4
  %74 = call i32 @read_fp(%struct.lxfb_par* %72, i32 %73)
  %75 = load i32, i32* @FP_PM_P, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @write_fp(%struct.lxfb_par* %70, i32 %71, i32 %77)
  %79 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %80 = load i32, i32* @VP_MISC, align 4
  %81 = call i32 @read_vp(%struct.lxfb_par* %79, i32 %80)
  %82 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %85 = load i32, i32* @VP_MISC, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @write_vp(%struct.lxfb_par* %84, i32 %85, i32 %86)
  %88 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %89 = load i32, i32* @VP_DCFG, align 4
  %90 = call i32 @read_vp(%struct.lxfb_par* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %92 = load i32, i32* @VP_DCFG, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %95 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = and i32 %93, %101
  %103 = call i32 @write_vp(%struct.lxfb_par* %91, i32 %92, i32 %102)
  %104 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %105 = load i32, i32* @DC_GENERAL_CFG, align 4
  %106 = call i32 @read_dc(%struct.lxfb_par* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @DC_GENERAL_CFG_CMPE, align 4
  %108 = load i32, i32* @DC_GENERAL_CFG_DECE, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %114 = load i32, i32* @DC_GENERAL_CFG, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @write_dc(%struct.lxfb_par* %113, i32 %114, i32 %115)
  %117 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %118 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %119 = call i32 @read_dc(%struct.lxfb_par* %117, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* @DC_DISPLAY_CFG_TGEN, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %125 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @write_dc(%struct.lxfb_par* %124, i32 %125, i32 %126)
  %128 = call i32 @udelay(i32 1000)
  %129 = load i32, i32* @DC_GENERAL_CFG_DFLE, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %134 = load i32, i32* @DC_GENERAL_CFG, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @write_dc(%struct.lxfb_par* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %152, %1
  %138 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %139 = load i32, i32* @GP_BLT_STATUS, align 4
  %140 = call i32 @read_gp(%struct.lxfb_par* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @GP_BLT_STATUS_PB, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @GP_BLT_STATUS_CE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %146, %141
  %153 = phi i1 [ true, %141 ], [ %151, %146 ]
  br i1 %153, label %137, label %154

154:                                              ; preds = %152
  ret void
}

declare dso_local i32 @write_vp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_dc(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_dc(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_vp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_fp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_gp(%struct.lxfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
