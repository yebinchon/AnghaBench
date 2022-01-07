; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_power_off_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_power_off_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@syspm_pfuze_chip = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Configure standby mode for power off\00", align 1
@PFUZE100_SW1ABMODE = common dso_local global i32 0, align 4
@PFUZE100_SWxMODE_MASK = common dso_local global i32 0, align 4
@PFUZE100_SWxMODE_APS_OFF = common dso_local global i32 0, align 4
@PFUZE100_SW1CMODE = common dso_local global i32 0, align 4
@PFUZE100_SW2MODE = common dso_local global i32 0, align 4
@PFUZE100_SW3AMODE = common dso_local global i32 0, align 4
@PFUZE100_SW3BMODE = common dso_local global i32 0, align 4
@PFUZE100_SW4MODE = common dso_local global i32 0, align 4
@PFUZE100_VGEN1VOL = common dso_local global i32 0, align 4
@PFUZE100_VGENxLPWR = common dso_local global i32 0, align 4
@PFUZE100_VGENxSTBY = common dso_local global i32 0, align 4
@PFUZE100_VGEN2VOL = common dso_local global i32 0, align 4
@PFUZE100_VGEN3VOL = common dso_local global i32 0, align 4
@PFUZE100_VGEN4VOL = common dso_local global i32 0, align 4
@PFUZE100_VGEN5VOL = common dso_local global i32 0, align 4
@PFUZE100_VGEN6VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pfuze_power_off_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfuze_power_off_prepare() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @dev_info(i32 %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PFUZE100_SW1ABMODE, align 4
  %9 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %10 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PFUZE100_SW1CMODE, align 4
  %16 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %17 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PFUZE100_SW2MODE, align 4
  %23 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %24 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PFUZE100_SW3AMODE, align 4
  %30 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %31 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PFUZE100_SW3BMODE, align 4
  %37 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %38 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PFUZE100_SW4MODE, align 4
  %44 = load i32, i32* @PFUZE100_SWxMODE_MASK, align 4
  %45 = load i32, i32* @PFUZE100_SWxMODE_APS_OFF, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PFUZE100_VGEN1VOL, align 4
  %51 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %52 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %55 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PFUZE100_VGEN2VOL, align 4
  %60 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %61 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %64 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PFUZE100_VGEN3VOL, align 4
  %69 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %70 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %73 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PFUZE100_VGEN4VOL, align 4
  %78 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %79 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %82 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %80, i32 %81)
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PFUZE100_VGEN5VOL, align 4
  %87 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %88 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %91 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 %89, i32 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syspm_pfuze_chip, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PFUZE100_VGEN6VOL, align 4
  %96 = load i32, i32* @PFUZE100_VGENxLPWR, align 4
  %97 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PFUZE100_VGENxSTBY, align 4
  %100 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
