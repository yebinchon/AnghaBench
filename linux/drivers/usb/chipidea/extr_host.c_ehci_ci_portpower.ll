; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_ehci_ci_portpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_ehci_ci_portpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ehci_hcd = type { i32, i64 }
%struct.ehci_ci_priv = type { i64 }
%struct.ci_hdrc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Not support multi-port regulator control\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to %s vbus regulator, ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@USBPHY_INTERFACE_MODE_HSIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32)* @ehci_ci_portpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_ci_portpower(%struct.usb_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehci_hcd*, align 8
  %9 = alloca %struct.ehci_ci_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.ci_hdrc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %15 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %14)
  store %struct.ehci_hcd* %15, %struct.ehci_hcd** %8, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ehci_ci_priv*
  store %struct.ehci_ci_priv* %19, %struct.ehci_ci_priv** %9, align 8
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = load %struct.device*, %struct.device** %10, align 8
  %25 = call %struct.ci_hdrc* @dev_get_drvdata(%struct.device* %24)
  store %struct.ci_hdrc* %25, %struct.ci_hdrc** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %27 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @HCS_N_PORTS(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ehci_ci_priv*, %struct.ehci_ci_priv** %9, align 8
  %31 = getelementptr inbounds %struct.ehci_ci_priv, %struct.ehci_ci_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %3
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %10, align 8
  %39 = call i32 @dev_warn(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %83

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.ehci_ci_priv*, %struct.ehci_ci_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ehci_ci_priv, %struct.ehci_ci_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regulator_enable(i64 %46)
  store i32 %47, i32* %12, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.ehci_ci_priv*, %struct.ehci_ci_priv** %9, align 8
  %50 = getelementptr inbounds %struct.ehci_ci_priv, %struct.ehci_ci_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @regulator_disable(i64 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %83

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %3
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.ci_hdrc*, %struct.ci_hdrc** %11, align 8
  %71 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @USBPHY_INTERFACE_MODE_HSIC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.ci_hdrc*, %struct.ci_hdrc** %11, align 8
  %79 = call i32 @hw_port_test_set(%struct.ci_hdrc* %78, i32 5)
  %80 = load %struct.ci_hdrc*, %struct.ci_hdrc** %11, align 8
  %81 = call i32 @hw_port_test_set(%struct.ci_hdrc* %80, i32 0)
  br label %82

82:                                               ; preds = %77, %69, %66
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %56, %37
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @hw_port_test_set(%struct.ci_hdrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
