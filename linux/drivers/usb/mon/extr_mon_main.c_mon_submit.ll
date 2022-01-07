; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { i32 }
%struct.usb_bus = type { %struct.mon_bus* }
%struct.urb = type { i32 }

@mon_bus0 = common dso_local global %struct.mon_bus zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*, %struct.urb*)* @mon_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_submit(%struct.usb_bus* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.mon_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %7 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %6, i32 0, i32 0
  %8 = load %struct.mon_bus*, %struct.mon_bus** %7, align 8
  store %struct.mon_bus* %8, %struct.mon_bus** %5, align 8
  %9 = load %struct.mon_bus*, %struct.mon_bus** %5, align 8
  %10 = icmp ne %struct.mon_bus* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.mon_bus*, %struct.mon_bus** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = call i32 @mon_bus_submit(%struct.mon_bus* %12, %struct.urb* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = call i32 @mon_bus_submit(%struct.mon_bus* @mon_bus0, %struct.urb* %16)
  ret void
}

declare dso_local i32 @mon_bus_submit(%struct.mon_bus*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
