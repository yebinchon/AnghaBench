; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1340-miphy.c_spear1340_miphy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1340-miphy.c_spear1340_miphy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.spear1340_miphy_priv = type { i64, %struct.phy* }

@.str = private unnamed_addr constant [36 x i8] c"DT did not pass correct no of args\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SATA = common dso_local global i64 0, align 8
@PCIE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"DT did not pass correct phy mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @spear1340_miphy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @spear1340_miphy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.spear1340_miphy_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.spear1340_miphy_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.spear1340_miphy_priv* %8, %struct.spear1340_miphy_priv** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.phy* @ERR_PTR(i32 %17)
  store %struct.phy* %18, %struct.phy** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %6, align 8
  %26 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %6, align 8
  %28 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SATA, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %6, align 8
  %34 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCIE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.phy* @ERR_PTR(i32 %42)
  store %struct.phy* %43, %struct.phy** %3, align 8
  br label %48

44:                                               ; preds = %32, %19
  %45 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %6, align 8
  %46 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %45, i32 0, i32 1
  %47 = load %struct.phy*, %struct.phy** %46, align 8
  store %struct.phy* %47, %struct.phy** %3, align 8
  br label %48

48:                                               ; preds = %44, %38, %13
  %49 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %49
}

declare dso_local %struct.spear1340_miphy_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
