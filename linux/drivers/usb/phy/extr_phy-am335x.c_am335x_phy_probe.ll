; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x.c_am335x_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x.c_am335x_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.am335x_phy = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Missing PHY id: %d\0A\00", align 1
@am335x_init = common dso_local global i32 0, align 4
@am335x_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @am335x_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.am335x_phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.am335x_phy* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.am335x_phy* %11, %struct.am335x_phy** %4, align 8
  %12 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %13 = icmp ne %struct.am335x_phy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @am335x_get_phy_control(%struct.device* %18)
  %20 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %21 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %23 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %101

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @of_alias_get_id(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %36 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %38 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %45 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %49 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %101

52:                                               ; preds = %29
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_usb_get_dr_mode_by_phy(i32 %56, i32 -1)
  %58 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %59 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %62 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %61, i32 0, i32 1
  %63 = call i32 @usb_phy_gen_create_phy(%struct.device* %60, %struct.TYPE_3__* %62, i32* null)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %52
  %69 = load i32, i32* @am335x_init, align 4
  %70 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %71 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @am335x_shutdown, align 4
  %75 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %76 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.am335x_phy* %80)
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i32 @device_init_wakeup(%struct.device* %82, i32 1)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @device_set_wakeup_enable(%struct.device* %84, i32 0)
  %86 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %87 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %90 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %94 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @phy_ctrl_power(i32 %88, i32 %92, i32 %95, i32 0)
  %97 = load %struct.am335x_phy*, %struct.am335x_phy** %4, align 8
  %98 = getelementptr inbounds %struct.am335x_phy, %struct.am335x_phy* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @usb_add_phy_dev(%struct.TYPE_4__* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %68, %66, %41, %26, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.am335x_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @am335x_get_phy_control(%struct.device*) #1

declare dso_local i64 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @of_usb_get_dr_mode_by_phy(i32, i32) #1

declare dso_local i32 @usb_phy_gen_create_phy(%struct.device*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.am335x_phy*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

declare dso_local i32 @phy_ctrl_power(i32, i32, i32, i32) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
