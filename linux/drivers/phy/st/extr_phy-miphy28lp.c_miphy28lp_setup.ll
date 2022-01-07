; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i32, i32*, i64, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32, i32 }

@SYSCFG_CTRL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to bring out of miphy reset\0A\00", align 1
@MIPHY_OSC_FORCE_EXT = common dso_local global i32 0, align 4
@MIPHY_CTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*, i32)* @miphy28lp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_setup(%struct.miphy28lp_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.miphy28lp_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.miphy28lp_dev*, align 8
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %9 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %8, i32 0, i32 3
  %10 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %9, align 8
  store %struct.miphy28lp_dev* %10, %struct.miphy28lp_dev** %7, align 8
  %11 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %12 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SYSCFG_CTRL, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %23 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @reset_control_assert(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %7, align 8
  %30 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %21
  %35 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %36 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @MIPHY_OSC_FORCE_EXT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %7, align 8
  %45 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %48 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @SYSCFG_CTRL, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MIPHY_CTRL_MASK, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @regmap_update_bits(i32 %46, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %57 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @reset_control_deassert(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %7, align 8
  %64 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %43
  %69 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %70 = call i32 @miphy_osc_is_ready(%struct.miphy28lp_phy* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %62, %28, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @miphy_osc_is_ready(%struct.miphy28lp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
