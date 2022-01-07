; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_add_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_add_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.list_head = type { i32 }
%struct.usb_phy_roothub = type { i32, %struct.phy* }
%struct.phy = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.list_head*)* @usb_phy_roothub_add_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_phy_roothub_add_phy(%struct.device* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.usb_phy_roothub*, align 8
  %9 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.phy* @devm_of_phy_get_by_index(%struct.device* %10, i32 %13, i32 %14)
  store %struct.phy* %15, %struct.phy** %9, align 8
  %16 = load %struct.phy*, %struct.phy** %9, align 8
  %17 = call i64 @IS_ERR(%struct.phy* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.phy*, %struct.phy** %9, align 8
  %21 = call i32 @PTR_ERR(%struct.phy* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %49

26:                                               ; preds = %19
  %27 = load %struct.phy*, %struct.phy** %9, align 8
  %28 = call i32 @PTR_ERR(%struct.phy* %27)
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.usb_phy_roothub* @devm_kzalloc(%struct.device* %30, i32 16, i32 %31)
  store %struct.usb_phy_roothub* %32, %struct.usb_phy_roothub** %8, align 8
  %33 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %8, align 8
  %34 = icmp ne %struct.usb_phy_roothub* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %29
  %39 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %8, align 8
  %40 = getelementptr inbounds %struct.usb_phy_roothub, %struct.usb_phy_roothub* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.phy*, %struct.phy** %9, align 8
  %43 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %8, align 8
  %44 = getelementptr inbounds %struct.usb_phy_roothub, %struct.usb_phy_roothub* %43, i32 0, i32 1
  store %struct.phy* %42, %struct.phy** %44, align 8
  %45 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %8, align 8
  %46 = getelementptr inbounds %struct.usb_phy_roothub, %struct.usb_phy_roothub* %45, i32 0, i32 0
  %47 = load %struct.list_head*, %struct.list_head** %7, align 8
  %48 = call i32 @list_add_tail(i32* %46, %struct.list_head* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %35, %26, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.phy* @devm_of_phy_get_by_index(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.usb_phy_roothub* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
