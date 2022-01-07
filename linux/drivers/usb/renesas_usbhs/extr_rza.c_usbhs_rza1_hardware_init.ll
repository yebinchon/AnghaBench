; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_rza.c_usbhs_rza1_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_rza.c_usbhs_rza1_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"usb_x1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@SYSCFG = common dso_local global i32 0, align 4
@UCKSEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"A 48MHz USB clock or 12MHz main clock is required.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UPLLE = common dso_local global i32 0, align 4
@SUSPMODE = common dso_local global i32 0, align 4
@SUSPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbhs_rza1_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_rza1_hardware_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device* %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* %7)
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 12000000
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %24 = load i32, i32* @SYSCFG, align 4
  %25 = load i32, i32* @UCKSEL, align 4
  %26 = load i32, i32* @UCKSEL, align 4
  %27 = call i32 @usbhs_bset(%struct.usbhs_priv* %23, i32 %24, i32 %25, i32 %26)
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %30 = call i32 @usbhs_priv_to_dev(%struct.usbhs_priv* %29)
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %37 = load i32, i32* @SYSCFG, align 4
  %38 = load i32, i32* @UPLLE, align 4
  %39 = load i32, i32* @UPLLE, align 4
  %40 = call i32 @usbhs_bset(%struct.usbhs_priv* %36, i32 %37, i32 %38, i32 %39)
  %41 = call i32 @usleep_range(i32 1000, i32 2000)
  %42 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %43 = load i32, i32* @SUSPMODE, align 4
  %44 = load i32, i32* @SUSPM, align 4
  %45 = load i32, i32* @SUSPM, align 4
  %46 = call i32 @usbhs_bset(%struct.usbhs_priv* %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device*) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
