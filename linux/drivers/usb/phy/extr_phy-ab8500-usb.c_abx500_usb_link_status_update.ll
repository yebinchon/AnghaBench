; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_abx500_usb_link_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_abx500_usb_link_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i32 }

@AB8500_USB = common dso_local global i32 0, align 4
@AB8500_USB_LINE_STAT_REG = common dso_local global i32 0, align 4
@AB8505_USB_LINE_STAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_usb*)* @abx500_usb_link_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_usb_link_status_update(%struct.ab8500_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ab8500_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %9 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_ab8500(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %15 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AB8500_USB, align 4
  %18 = load i32, i32* @AB8500_USB_LINE_STAT_REG, align 4
  %19 = call i32 @abx500_get_register_interruptible(i32 %16, i32 %17, i32 %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 15
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ab8500_usb_link_status_update(%struct.ab8500_usb* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %33 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_ab8505(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %39 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AB8500_USB, align 4
  %42 = load i32, i32* @AB8505_USB_LINE_STAT_REG, align 4
  %43 = call i32 @abx500_get_register_interruptible(i32 %40, i32 %41, i32 %42, i32* %4)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 3
  %51 = and i32 %50, 31
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ab8505_usb_link_status_update(%struct.ab8500_usb* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %31
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %46, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @is_ab8500(i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @ab8500_usb_link_status_update(%struct.ab8500_usb*, i32) #1

declare dso_local i64 @is_ab8505(i32) #1

declare dso_local i32 @ab8505_usb_link_status_update(%struct.ab8500_usb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
