; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.mon_bus* }
%struct.mon_bus = type { i32, i32, i32, %struct.usb_bus*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mon_lock = common dso_local global i32 0, align 4
@mon_buses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @mon_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bus_init(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca %struct.mon_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.mon_bus* @kzalloc(i32 40, i32 %4)
  store %struct.mon_bus* %5, %struct.mon_bus** %3, align 8
  %6 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %7 = icmp eq %struct.mon_bus* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %11 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %10, i32 0, i32 6
  %12 = call i32 @kref_init(i32* %11)
  %13 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %14 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %13, i32 0, i32 5
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %17 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %16, i32 0, i32 4
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %20 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %21 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %20, i32 0, i32 3
  store %struct.usb_bus* %19, %struct.usb_bus** %21, align 8
  %22 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %23 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %24 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %23, i32 0, i32 0
  store %struct.mon_bus* %22, %struct.mon_bus** %24, align 8
  %25 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %26 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %27 = call i32 @mon_text_add(%struct.mon_bus* %25, %struct.usb_bus* %26)
  %28 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %29 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %31 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %32 = call i32 @mon_bin_add(%struct.mon_bus* %30, %struct.usb_bus* %31)
  %33 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %34 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 @mutex_lock(i32* @mon_lock)
  %36 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %37 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %37, i32* @mon_buses)
  %39 = call i32 @mutex_unlock(i32* @mon_lock)
  br label %41

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40, %9
  ret void
}

declare dso_local %struct.mon_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mon_text_add(%struct.mon_bus*, %struct.usb_bus*) #1

declare dso_local i32 @mon_bin_add(%struct.mon_bus*, %struct.usb_bus*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
