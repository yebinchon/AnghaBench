; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tahvo_usb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tahvo_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tahvo_usb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tahvo_usb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tahvo_usb* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tahvo_usb* %5, %struct.tahvo_usb** %3, align 8
  %6 = load %struct.tahvo_usb*, %struct.tahvo_usb** %3, align 8
  %7 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tahvo_usb*, %struct.tahvo_usb** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.tahvo_usb* %9)
  %11 = load %struct.tahvo_usb*, %struct.tahvo_usb** %3, align 8
  %12 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %11, i32 0, i32 1
  %13 = call i32 @usb_remove_phy(i32* %12)
  %14 = load %struct.tahvo_usb*, %struct.tahvo_usb** %3, align 8
  %15 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.tahvo_usb*, %struct.tahvo_usb** %3, align 8
  %21 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.tahvo_usb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.tahvo_usb*) #1

declare dso_local i32 @usb_remove_phy(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
