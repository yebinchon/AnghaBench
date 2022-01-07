; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_devm_usb_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_devm_usb_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32 }
%struct.device = type { i32 }

@devm_usb_phy_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_phy* @devm_usb_get_phy(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_phy**, align 8
  %7 = alloca %struct.usb_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @devm_usb_phy_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.usb_phy** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.usb_phy** %10, %struct.usb_phy*** %6, align 8
  %11 = load %struct.usb_phy**, %struct.usb_phy*** %6, align 8
  %12 = icmp ne %struct.usb_phy** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.usb_phy* @ERR_PTR(i32 %15)
  store %struct.usb_phy* %16, %struct.usb_phy** %3, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.usb_phy* @usb_get_phy(i32 %18)
  store %struct.usb_phy* %19, %struct.usb_phy** %7, align 8
  %20 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %21 = call i32 @IS_ERR(%struct.usb_phy* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  %25 = load %struct.usb_phy**, %struct.usb_phy*** %6, align 8
  store %struct.usb_phy* %24, %struct.usb_phy** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.usb_phy**, %struct.usb_phy*** %6, align 8
  %28 = call i32 @devres_add(%struct.device* %26, %struct.usb_phy** %27)
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.usb_phy**, %struct.usb_phy*** %6, align 8
  %31 = call i32 @devres_free(%struct.usb_phy** %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.usb_phy*, %struct.usb_phy** %7, align 8
  store %struct.usb_phy* %33, %struct.usb_phy** %3, align 8
  br label %34

34:                                               ; preds = %32, %13
  %35 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  ret %struct.usb_phy* %35
}

declare dso_local %struct.usb_phy** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.usb_phy* @ERR_PTR(i32) #1

declare dso_local %struct.usb_phy* @usb_get_phy(i32) #1

declare dso_local i32 @IS_ERR(%struct.usb_phy*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.usb_phy**) #1

declare dso_local i32 @devres_free(%struct.usb_phy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
