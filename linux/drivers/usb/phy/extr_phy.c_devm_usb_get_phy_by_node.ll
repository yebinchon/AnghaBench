; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_devm_usb_get_phy_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_devm_usb_get_phy_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.notifier_block = type { i32 }
%struct.phy_devm = type { %struct.notifier_block*, %struct.usb_phy* }

@ENOMEM = common dso_local global i32 0, align 4
@devm_usb_phy_release2 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate memory for devres\0A\00", align 1
@phy_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_phy* @devm_usb_get_phy_by_node(%struct.device* %0, %struct.device_node* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.usb_phy*, align 8
  %8 = alloca %struct.phy_devm*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.usb_phy* @ERR_PTR(i32 %11)
  store %struct.usb_phy* %12, %struct.usb_phy** %7, align 8
  %13 = load i32, i32* @devm_usb_phy_release2, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.phy_devm* @devres_alloc(i32 %13, i32 16, i32 %14)
  store %struct.phy_devm* %15, %struct.phy_devm** %8, align 8
  %16 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %17 = icmp ne %struct.phy_devm* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %72

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @phy_lock, i64 %22)
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call %struct.usb_phy* @__of_usb_find_phy(%struct.device_node* %24)
  store %struct.usb_phy* %25, %struct.usb_phy** %7, align 8
  %26 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %27 = call i64 @IS_ERR(%struct.usb_phy* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %31 = call i32 @devres_free(%struct.phy_devm* %30)
  br label %69

32:                                               ; preds = %21
  %33 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %34 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.usb_phy* @ERR_PTR(i32 %44)
  store %struct.usb_phy* %45, %struct.usb_phy** %7, align 8
  %46 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %47 = call i32 @devres_free(%struct.phy_devm* %46)
  br label %69

48:                                               ; preds = %32
  %49 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %50 = icmp ne %struct.notifier_block* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %53 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %54 = call i32 @usb_register_notifier(%struct.usb_phy* %52, %struct.notifier_block* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %57 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %58 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %57, i32 0, i32 1
  store %struct.usb_phy* %56, %struct.usb_phy** %58, align 8
  %59 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %60 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %61 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %60, i32 0, i32 0
  store %struct.notifier_block* %59, %struct.notifier_block** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.phy_devm*, %struct.phy_devm** %8, align 8
  %64 = call i32 @devres_add(%struct.device* %62, %struct.phy_devm* %63)
  %65 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %66 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @get_device(%struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %55, %42, %29
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @phy_lock, i64 %70)
  br label %72

72:                                               ; preds = %69, %18
  %73 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  ret %struct.usb_phy* %73
}

declare dso_local %struct.usb_phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy_devm* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.usb_phy* @__of_usb_find_phy(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.usb_phy*) #1

declare dso_local i32 @devres_free(%struct.phy_devm*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @usb_register_notifier(%struct.usb_phy*, %struct.notifier_block*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.phy_devm*) #1

declare dso_local i32 @get_device(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
