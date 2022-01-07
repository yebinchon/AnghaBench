; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_u3hsphy_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)* }
%struct.uniphier_u3hsphy_trim_param = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't get parameter from nvmem\0A\00", align 1
@HSPHY_CFG0_HSDISC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_u3hsphy_priv*, i32*)* @uniphier_u3hsphy_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3hsphy_update_config(%struct.uniphier_u3hsphy_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.uniphier_u3hsphy_trim_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uniphier_u3hsphy_priv* %0, %struct.uniphier_u3hsphy_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)*, i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)** %12, align 8
  %14 = icmp ne i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %17 = call i32 @uniphier_u3hsphy_get_nvparams(%struct.uniphier_u3hsphy_priv* %16, %struct.uniphier_u3hsphy_trim_param* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = call i64 @trim_param_is_valid(%struct.uniphier_u3hsphy_trim_param* %6)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %32 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)*, i32 (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)** %34, align 8
  %36 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 %35(%struct.uniphier_u3hsphy_priv* %36, i32* %37, %struct.uniphier_u3hsphy_trim_param* %6)
  store i32 1, i32* %8, align 4
  br label %44

39:                                               ; preds = %27, %24
  %40 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %41 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @HSPHY_CFG0_HSDISC_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @HSPHY_CFG0_HSDISC_MASK, align 4
  %55 = call i32 @FIELD_PREP(i32 %54, i32 3)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %48, %45
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @uniphier_u3hsphy_get_nvparams(%struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_trim_param*) #1

declare dso_local i64 @trim_param_is_valid(%struct.uniphier_u3hsphy_trim_param*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
