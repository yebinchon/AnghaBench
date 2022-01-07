; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-ath79-usb.c_ath79_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-ath79-usb.c_ath79_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ath79_usb_phy = type { %struct.phy*, %struct.phy* }
%struct.phy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"usb-suspend-override\00", align 1
@ath79_usb_phy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath79_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath79_usb_phy*, align 8
  %5 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ath79_usb_phy* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.ath79_usb_phy* %9, %struct.ath79_usb_phy** %4, align 8
  %10 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %11 = icmp ne %struct.ath79_usb_phy* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.phy* @devm_reset_control_get(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %20 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %19, i32 0, i32 1
  store %struct.phy* %18, %struct.phy** %20, align 8
  %21 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %22 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %21, i32 0, i32 1
  %23 = load %struct.phy*, %struct.phy** %22, align 8
  %24 = call i64 @IS_ERR(%struct.phy* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %28 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %27, i32 0, i32 1
  %29 = load %struct.phy*, %struct.phy** %28, align 8
  %30 = call i32 @PTR_ERR(%struct.phy* %29)
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %15
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.phy* @devm_reset_control_get_optional(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %36 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %35, i32 0, i32 0
  store %struct.phy* %34, %struct.phy** %36, align 8
  %37 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %38 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %37, i32 0, i32 0
  %39 = load %struct.phy*, %struct.phy** %38, align 8
  %40 = call i64 @IS_ERR(%struct.phy* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %44 = getelementptr inbounds %struct.ath79_usb_phy, %struct.ath79_usb_phy* %43, i32 0, i32 0
  %45 = load %struct.phy*, %struct.phy** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.phy* %45)
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %31
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.phy* @devm_phy_create(i32* %49, i32* null, i32* @ath79_usb_phy_ops)
  store %struct.phy* %50, %struct.phy** %5, align 8
  %51 = load %struct.phy*, %struct.phy** %5, align 8
  %52 = call i64 @IS_ERR(%struct.phy* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.phy*, %struct.phy** %5, align 8
  %56 = call i32 @PTR_ERR(%struct.phy* %55)
  store i32 %56, i32* %2, align 4
  br label %66

57:                                               ; preds = %47
  %58 = load %struct.phy*, %struct.phy** %5, align 8
  %59 = load %struct.ath79_usb_phy*, %struct.ath79_usb_phy** %4, align 8
  %60 = call i32 @phy_set_drvdata(%struct.phy* %58, %struct.ath79_usb_phy* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @of_phy_simple_xlate, align 4
  %64 = call i32 @devm_of_phy_provider_register(i32* %62, i32 %63)
  %65 = call i32 @PTR_ERR_OR_ZERO(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %57, %54, %42, %26, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ath79_usb_phy* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.phy* @devm_reset_control_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @devm_reset_control_get_optional(i32*, i8*) #1

declare dso_local %struct.phy* @devm_phy_create(i32*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.ath79_usb_phy*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @devm_of_phy_provider_register(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
