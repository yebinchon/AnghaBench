; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_start_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_start_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@dummy_timer = common dso_local global i32 0, align 4
@DUMMY_RH_RUNNING = common dso_local global i32 0, align 4
@POWER_BUDGET_3 = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@dev_attr_urbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_hcd*)* @dummy_start_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_start_ss(%struct.dummy_hcd* %0) #0 {
  %2 = alloca %struct.dummy_hcd*, align 8
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %2, align 8
  %3 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %3, i32 0, i32 3
  %5 = load i32, i32* @dummy_timer, align 4
  %6 = call i32 @timer_setup(i32* %4, i32 %5, i32 0)
  %7 = load i32, i32* @DUMMY_RH_RUNNING, align 4
  %8 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* @POWER_BUDGET_3, align 4
  %16 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %17 = call %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @HC_STATE_RUNNING, align 4
  %20 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %21 = call %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %24 = call %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  ret i32 0
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
