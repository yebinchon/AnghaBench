; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_get_nvparams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_get_nvparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_u3hsphy_priv = type { i32 }
%struct.uniphier_u3hsphy_trim_param = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rterm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sel_t\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hs_i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_trim_param*)* @uniphier_u3hsphy_get_nvparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3hsphy_get_nvparams(%struct.uniphier_u3hsphy_priv* %0, %struct.uniphier_u3hsphy_trim_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %5 = alloca %struct.uniphier_u3hsphy_trim_param*, align 8
  %6 = alloca i32, align 4
  store %struct.uniphier_u3hsphy_priv* %0, %struct.uniphier_u3hsphy_priv** %4, align 8
  store %struct.uniphier_u3hsphy_trim_param* %1, %struct.uniphier_u3hsphy_trim_param** %5, align 8
  %7 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %8 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %5, align 8
  %9 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %8, i32 0, i32 2
  %10 = call i32 @uniphier_u3hsphy_get_nvparam(%struct.uniphier_u3hsphy_priv* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %17 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %5, align 8
  %18 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %17, i32 0, i32 1
  %19 = call i32 @uniphier_u3hsphy_get_nvparam(%struct.uniphier_u3hsphy_priv* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %26 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %5, align 8
  %27 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %26, i32 0, i32 0
  %28 = call i32 @uniphier_u3hsphy_get_nvparam(%struct.uniphier_u3hsphy_priv* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %22, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @uniphier_u3hsphy_get_nvparam(%struct.uniphier_u3hsphy_priv*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
