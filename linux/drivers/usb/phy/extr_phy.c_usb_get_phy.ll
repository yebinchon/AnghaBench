; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@phy_lock = common dso_local global i32 0, align 4
@phy_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PHY: unable to find transceiver of type %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_phy* @usb_get_phy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.usb_phy* null, %struct.usb_phy** %3, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @phy_lock, i64 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.usb_phy* @__usb_find_phy(i32* @phy_list, i32 %7)
  store %struct.usb_phy* %8, %struct.usb_phy** %3, align 8
  %9 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %10 = call i64 @IS_ERR(%struct.usb_phy* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %14 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @try_module_get(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %12, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @usb_phy_type_string(i32 %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %27 = call i64 @IS_ERR(%struct.usb_phy* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.usb_phy* @ERR_PTR(i32 %31)
  store %struct.usb_phy* %32, %struct.usb_phy** %3, align 8
  br label %33

33:                                               ; preds = %29, %22
  br label %39

34:                                               ; preds = %12
  %35 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %36 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @get_device(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @phy_lock, i64 %40)
  %42 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  ret %struct.usb_phy* %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.usb_phy* @__usb_find_phy(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_phy*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @usb_phy_type_string(i32) #1

declare dso_local %struct.usb_phy* @ERR_PTR(i32) #1

declare dso_local i32 @get_device(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
