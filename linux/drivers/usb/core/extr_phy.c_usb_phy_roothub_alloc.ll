; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy_roothub = type { i32 }
%struct.device = type { i32 }

@CONFIG_GENERIC_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_phy_roothub* @usb_phy_roothub_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.usb_phy_roothub*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.usb_phy_roothub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load i32, i32* @CONFIG_GENERIC_PHY, align 4
  %9 = call i32 @IS_ENABLED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.usb_phy_roothub* null, %struct.usb_phy_roothub** %2, align 8
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_count_phandle_with_args(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store %struct.usb_phy_roothub* null, %struct.usb_phy_roothub** %2, align 8
  br label %55

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.usb_phy_roothub* @devm_kzalloc(%struct.device* %21, i32 4, i32 %22)
  store %struct.usb_phy_roothub* %23, %struct.usb_phy_roothub** %4, align 8
  %24 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %4, align 8
  %25 = icmp ne %struct.usb_phy_roothub* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.usb_phy_roothub* @ERR_PTR(i32 %28)
  store %struct.usb_phy_roothub* %29, %struct.usb_phy_roothub** %2, align 8
  br label %55

30:                                               ; preds = %20
  %31 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %4, align 8
  %32 = getelementptr inbounds %struct.usb_phy_roothub, %struct.usb_phy_roothub* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %4, align 8
  %42 = getelementptr inbounds %struct.usb_phy_roothub, %struct.usb_phy_roothub* %41, i32 0, i32 0
  %43 = call i32 @usb_phy_roothub_add_phy(%struct.device* %39, i32 %40, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.usb_phy_roothub* @ERR_PTR(i32 %47)
  store %struct.usb_phy_roothub* %48, %struct.usb_phy_roothub** %2, align 8
  br label %55

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %4, align 8
  store %struct.usb_phy_roothub* %54, %struct.usb_phy_roothub** %2, align 8
  br label %55

55:                                               ; preds = %53, %46, %26, %19, %11
  %56 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %2, align 8
  ret %struct.usb_phy_roothub* %56
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_count_phandle_with_args(i32, i8*, i8*) #1

declare dso_local %struct.usb_phy_roothub* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.usb_phy_roothub* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_phy_roothub_add_phy(%struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
