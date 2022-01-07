; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_musb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_musb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HS USB OTG: no transceiver configured\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@musb_otg_notifications = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"notification register failed\0A\00", align 1
@ux500_musb_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @ux500_musb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_musb_init(%struct.musb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  %5 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %6 = call i32 @usb_get_phy(i32 %5)
  %7 = load %struct.musb*, %struct.musb** %3, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.musb*, %struct.musb** %3, align 8
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IS_ERR_OR_NULL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EPROBE_DEFER, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load i32, i32* @musb_otg_notifications, align 4
  %20 = load %struct.musb*, %struct.musb** %3, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.musb*, %struct.musb** %3, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 2
  %28 = call i32 @usb_register_notifier(i32 %25, %struct.TYPE_2__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.musb*, %struct.musb** %3, align 8
  %33 = getelementptr inbounds %struct.musb, %struct.musb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @ux500_musb_interrupt, align 4
  %39 = load %struct.musb*, %struct.musb** %3, align 8
  %40 = getelementptr inbounds %struct.musb, %struct.musb* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %31, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @usb_get_phy(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_register_notifier(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
