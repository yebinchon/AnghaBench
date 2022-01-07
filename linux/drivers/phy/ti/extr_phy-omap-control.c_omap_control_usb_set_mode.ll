; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-control.c_omap_control_usb_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-control.c_omap_control_usb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_control_phy = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid control phy device\0A\00", align 1
@OMAP_CTRL_TYPE_OTGHS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid omap control usb mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_control_usb_set_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_control_phy*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @IS_ERR(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %42

13:                                               ; preds = %9
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.omap_control_phy* @dev_get_drvdata(%struct.device* %14)
  store %struct.omap_control_phy* %15, %struct.omap_control_phy** %5, align 8
  %16 = load %struct.omap_control_phy*, %struct.omap_control_phy** %5, align 8
  %17 = icmp ne %struct.omap_control_phy* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

21:                                               ; preds = %13
  %22 = load %struct.omap_control_phy*, %struct.omap_control_phy** %5, align 8
  %23 = getelementptr inbounds %struct.omap_control_phy, %struct.omap_control_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OMAP_CTRL_TYPE_OTGHS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %42

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %39 [
    i32 128, label %30
    i32 130, label %33
    i32 129, label %36
  ]

30:                                               ; preds = %28
  %31 = load %struct.omap_control_phy*, %struct.omap_control_phy** %5, align 8
  %32 = call i32 @omap_control_usb_host_mode(%struct.omap_control_phy* %31)
  br label %42

33:                                               ; preds = %28
  %34 = load %struct.omap_control_phy*, %struct.omap_control_phy** %5, align 8
  %35 = call i32 @omap_control_usb_device_mode(%struct.omap_control_phy* %34)
  br label %42

36:                                               ; preds = %28
  %37 = load %struct.omap_control_phy*, %struct.omap_control_phy** %5, align 8
  %38 = call i32 @omap_control_usb_set_sessionend(%struct.omap_control_phy* %37)
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @dev_vdbg(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %12, %18, %27, %39, %36, %33, %30
  ret void
}

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local %struct.omap_control_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @omap_control_usb_host_mode(%struct.omap_control_phy*) #1

declare dso_local i32 @omap_control_usb_device_mode(%struct.omap_control_phy*) #1

declare dso_local i32 @omap_control_usb_set_sessionend(%struct.omap_control_phy*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
