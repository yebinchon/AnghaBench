; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_set_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { i32 }
%struct.usb_bus = type { i32 }
%struct.ab8500_usb = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_bus* }

@ENODEV = common dso_local global i32 0, align 4
@USB_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, %struct.usb_bus*)* @ab8500_usb_set_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_set_host(%struct.usb_otg* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_otg*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.ab8500_usb*, align 8
  store %struct.usb_otg* %0, %struct.usb_otg** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %7 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %8 = icmp ne %struct.usb_otg* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %14 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ab8500_usb* @phy_to_ab(i32 %15)
  store %struct.ab8500_usb* %16, %struct.ab8500_usb** %6, align 8
  %17 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %18 = load %struct.ab8500_usb*, %struct.ab8500_usb** %6, align 8
  %19 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.usb_bus* %17, %struct.usb_bus** %22, align 8
  %23 = load %struct.ab8500_usb*, %struct.ab8500_usb** %6, align 8
  %24 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_IDLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %12
  %29 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %30 = icmp ne %struct.usb_bus* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @USB_IDLE, align 8
  %33 = load %struct.ab8500_usb*, %struct.ab8500_usb** %6, align 8
  %34 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ab8500_usb*, %struct.ab8500_usb** %6, align 8
  %36 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %35, i32 0, i32 1
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %31, %28, %12
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ab8500_usb* @phy_to_ab(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
