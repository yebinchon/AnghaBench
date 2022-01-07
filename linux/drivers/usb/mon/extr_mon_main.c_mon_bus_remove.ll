; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.mon_bus* }
%struct.mon_bus = type { i32, i64, i64, i32 }

@mon_lock = common dso_local global i32 0, align 4
@mon_bus_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @mon_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bus_remove(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca %struct.mon_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %4 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %5 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %4, i32 0, i32 0
  %6 = load %struct.mon_bus*, %struct.mon_bus** %5, align 8
  store %struct.mon_bus* %6, %struct.mon_bus** %3, align 8
  %7 = call i32 @mutex_lock(i32* @mon_lock)
  %8 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %9 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %8, i32 0, i32 3
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %12 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %17 = call i32 @mon_text_del(%struct.mon_bus* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %20 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %25 = call i32 @mon_bin_del(%struct.mon_bus* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %28 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %29 = call i32 @mon_dissolve(%struct.mon_bus* %27, %struct.usb_bus* %28)
  %30 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %31 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %30, i32 0, i32 0
  %32 = load i32, i32* @mon_bus_drop, align 4
  %33 = call i32 @kref_put(i32* %31, i32 %32)
  %34 = call i32 @mutex_unlock(i32* @mon_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mon_text_del(%struct.mon_bus*) #1

declare dso_local i32 @mon_bin_del(%struct.mon_bus*) #1

declare dso_local i32 @mon_dissolve(%struct.mon_bus*, %struct.usb_bus*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
