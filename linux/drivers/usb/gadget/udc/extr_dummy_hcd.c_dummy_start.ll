; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dummy_hcd = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@dummy_timer = common dso_local global i32 0, align 4
@DUMMY_RH_RUNNING = common dso_local global i32 0, align 4
@POWER_BUDGET = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@dev_attr_urbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @dummy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.dummy_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %6 = call %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd* %5)
  store %struct.dummy_hcd* %6, %struct.dummy_hcd** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %12 = call i32 @dummy_start_ss(%struct.dummy_hcd* %11)
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %19, i32 0, i32 2
  %21 = load i32, i32* @dummy_timer, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load i32, i32* @DUMMY_RH_RUNNING, align 4
  %24 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %26, i32 0, i32 0
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @POWER_BUDGET, align 4
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @HC_STATE_RUNNING, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %38 = call i32 @dummy_dev(%struct.dummy_hcd* %37)
  %39 = call i32 @device_create_file(i32 %38, i32* @dev_attr_urbs)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %13, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @dummy_start_ss(%struct.dummy_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
