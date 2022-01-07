; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.meson_gx_pwrc_vpu = type { i32, i32, i32, i32 }

@AO_RTI_GEN_PWR_SLEEP0 = common dso_local global i32 0, align 4
@GEN_PWR_VPU_HDMI_ISO = common dso_local global i32 0, align 4
@HHI_VPU_MEM_PD_REG0 = common dso_local global i32 0, align 4
@HHI_VPU_MEM_PD_REG1 = common dso_local global i32 0, align 4
@HHI_MEM_PD_REG0 = common dso_local global i32 0, align 4
@GEN_PWR_VPU_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @meson_gx_pwrc_vpu_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gx_pwrc_vpu_power_off(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  %3 = alloca %struct.meson_gx_pwrc_vpu*, align 8
  %4 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %5 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %6 = call %struct.meson_gx_pwrc_vpu* @genpd_to_pd(%struct.generic_pm_domain* %5)
  store %struct.meson_gx_pwrc_vpu* %6, %struct.meson_gx_pwrc_vpu** %3, align 8
  %7 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %8 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %11 = load i32, i32* @GEN_PWR_VPU_HDMI_ISO, align 4
  %12 = load i32, i32* @GEN_PWR_VPU_HDMI_ISO, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = call i32 @udelay(i32 20)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %20 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HHI_VPU_MEM_PD_REG0, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 3, %23
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 3, %25
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %24, i32 %26)
  %28 = call i32 @udelay(i32 5)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  br label %15

32:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %38 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HHI_VPU_MEM_PD_REG1, align 4
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 3, %41
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 3, %43
  %45 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %42, i32 %44)
  %46 = call i32 @udelay(i32 5)
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %4, align 4
  br label %33

50:                                               ; preds = %33
  store i32 8, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %56 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HHI_MEM_PD_REG0, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %60, i32 %62)
  %64 = call i32 @udelay(i32 5)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %51

68:                                               ; preds = %51
  %69 = call i32 @udelay(i32 20)
  %70 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %71 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %74 = load i32, i32* @GEN_PWR_VPU_HDMI, align 4
  %75 = load i32, i32* @GEN_PWR_VPU_HDMI, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = call i32 @msleep(i32 20)
  %78 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %79 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  %82 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %3, align 8
  %83 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_disable_unprepare(i32 %84)
  ret i32 0
}

declare dso_local %struct.meson_gx_pwrc_vpu* @genpd_to_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
