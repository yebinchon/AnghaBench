; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.ltq_vrx200_pcie_phy_priv = type { i32, %struct.phy* }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PHY mode not implemented yet: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid PHY mode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @ltq_vrx200_pcie_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @ltq_vrx200_pcie_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ltq_vrx200_pcie_phy_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ltq_vrx200_pcie_phy_priv* %9, %struct.ltq_vrx200_pcie_phy_priv** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.phy* @ERR_PTR(i32 %18)
  store %struct.phy* %19, %struct.phy** %3, align 8
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %38 [
    i32 129, label %27
    i32 131, label %31
    i32 130, label %31
    i32 128, label %31
    i32 133, label %31
    i32 132, label %31
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %45

31:                                               ; preds = %20, %20, %20, %20, %20
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.phy* @ERR_PTR(i32 %36)
  store %struct.phy* %37, %struct.phy** %3, align 8
  br label %49

38:                                               ; preds = %20
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.phy* @ERR_PTR(i32 %43)
  store %struct.phy* %44, %struct.phy** %3, align 8
  br label %49

45:                                               ; preds = %27
  %46 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %46, i32 0, i32 1
  %48 = load %struct.phy*, %struct.phy** %47, align 8
  store %struct.phy* %48, %struct.phy** %3, align 8
  br label %49

49:                                               ; preds = %45, %38, %31, %14
  %50 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %50
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
