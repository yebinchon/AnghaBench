; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_get_speed(%struct.cdns3_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  %5 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %6 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @readl(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @DEV_SUPERSPEED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_SPEED_SUPER, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @DEV_HIGHSPEED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @USB_SPEED_HIGH, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @DEV_FULLSPEED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @USB_SPEED_FULL, align 4
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @DEV_LOWSPEED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @USB_SPEED_LOW, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %31, %25, %19, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @DEV_SUPERSPEED(i32) #1

declare dso_local i64 @DEV_HIGHSPEED(i32) #1

declare dso_local i64 @DEV_FULLSPEED(i32) #1

declare dso_local i64 @DEV_LOWSPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
