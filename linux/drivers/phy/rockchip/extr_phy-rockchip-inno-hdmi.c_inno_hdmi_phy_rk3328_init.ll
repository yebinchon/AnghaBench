; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3328_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32, i32 }
%struct.nvmem_cell = type opaque

@RK3328_BYPASS_RXSENSE_EN = common dso_local global i32 0, align 4
@RK3328_BYPASS_POWERON_EN = common dso_local global i32 0, align 4
@RK3328_BYPASS_PLLPD_EN = common dso_local global i32 0, align 4
@RK3328_INT_POL_HIGH = common dso_local global i32 0, align 4
@RK3328_BYPASS_PDATA_EN = common dso_local global i32 0, align 4
@RK3328_PDATA_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cpu-version\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi_phy*)* @inno_hdmi_phy_rk3328_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_rk3328_init(%struct.inno_hdmi_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inno_hdmi_phy*, align 8
  %4 = alloca %struct.nvmem_cell*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %3, align 8
  %7 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %8 = load i32, i32* @RK3328_BYPASS_RXSENSE_EN, align 4
  %9 = load i32, i32* @RK3328_BYPASS_POWERON_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @RK3328_BYPASS_PLLPD_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @inno_write(%struct.inno_hdmi_phy* %7, i32 1, i32 %12)
  %14 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %15 = load i32, i32* @RK3328_INT_POL_HIGH, align 4
  %16 = load i32, i32* @RK3328_BYPASS_PDATA_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RK3328_PDATA_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @inno_write(%struct.inno_hdmi_phy* %14, i32 2, i32 %19)
  %21 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %22 = call i32 @inno_write(%struct.inno_hdmi_phy* %21, i32 5, i32 0)
  %23 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %24 = call i32 @inno_write(%struct.inno_hdmi_phy* %23, i32 7, i32 0)
  %25 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %26 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %28 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @nvmem_cell_get(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = bitcast i8* %30 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %31, %struct.nvmem_cell** %4, align 8
  %32 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %33 = bitcast %struct.nvmem_cell* %32 to i8*
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %38 = bitcast %struct.nvmem_cell* %37 to i8*
  %39 = call i32 @PTR_ERR(i8* %38)
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %72

47:                                               ; preds = %1
  %48 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %49 = bitcast %struct.nvmem_cell* %48 to i8*
  %50 = call i8* @nvmem_cell_read(i8* %49, i64* %6)
  store i8* %50, i8** %5, align 8
  %51 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %52 = bitcast %struct.nvmem_cell* %51 to i8*
  %53 = call i32 @nvmem_cell_put(i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %72

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 1
  %67 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %68 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @kfree(i8* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %57, %46, %43
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @inno_write(%struct.inno_hdmi_phy*, i32, i32) #1

declare dso_local i8* @nvmem_cell_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
