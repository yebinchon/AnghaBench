; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-pcie.c_ns2_pci_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-pcie.c_ns2_pci_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type { i32 }

@ns2_pci_phy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to create Phy\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register Phy provider\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s PHY registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @ns2_pci_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pci_phy_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.phy*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %7 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.phy_provider* @devm_phy_create(%struct.device* %9, i32 %12, i32* @ns2_pci_phy_ops)
  %14 = bitcast %struct.phy_provider* %13 to %struct.phy*
  store %struct.phy* %14, %struct.phy** %6, align 8
  %15 = load %struct.phy*, %struct.phy** %6, align 8
  %16 = bitcast %struct.phy* %15 to %struct.phy_provider*
  %17 = call i64 @IS_ERR(%struct.phy_provider* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.phy*, %struct.phy** %6, align 8
  %23 = bitcast %struct.phy* %22 to %struct.phy_provider*
  %24 = call i32 @PTR_ERR(%struct.phy_provider* %23)
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %1
  %26 = load %struct.phy*, %struct.phy** %6, align 8
  %27 = bitcast %struct.phy* %26 to %struct.phy_provider*
  %28 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %29 = call i32 @phy_set_drvdata(%struct.phy_provider* %27, %struct.mdio_device* %28)
  %30 = load %struct.phy*, %struct.phy** %6, align 8
  %31 = getelementptr inbounds %struct.phy, %struct.phy* %30, i32 0, i32 0
  %32 = load i32, i32* @of_phy_simple_xlate, align 4
  %33 = call %struct.phy_provider* @devm_of_phy_provider_register(i32* %31, i32 %32)
  store %struct.phy_provider* %33, %struct.phy_provider** %5, align 8
  %34 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %35 = call i64 @IS_ERR(%struct.phy_provider* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %41 = call i32 @PTR_ERR(%struct.phy_provider* %40)
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %25
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_name(%struct.device* %44)
  %46 = call i32 @dev_info(%struct.device* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %37, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.mdio_device*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
