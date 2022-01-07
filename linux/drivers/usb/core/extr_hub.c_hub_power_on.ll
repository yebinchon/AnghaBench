; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"enabling power on all ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"trying to enable port power on non-switchable hub\0A\00", align 1
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32)* @hub_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_power_on(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %7 = call i64 @hub_is_port_power_switchable(%struct.usb_hub* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %9
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %50, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %23 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %21, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %31 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @test_bit(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %37 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %41 = call i32 @set_port_feature(%struct.TYPE_3__* %38, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %28
  %43 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %48 = call i32 @usb_clear_port_feature(%struct.TYPE_3__* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %58 = call i32 @hub_power_on_good_delay(%struct.usb_hub* %57)
  %59 = call i32 @msleep(i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  ret void
}

declare dso_local i64 @hub_is_port_power_switchable(%struct.usb_hub*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_port_feature(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @usb_clear_port_feature(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hub_power_on_good_delay(%struct.usb_hub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
