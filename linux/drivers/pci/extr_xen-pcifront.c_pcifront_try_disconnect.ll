; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_try_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_try_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XenbusStateClosing = common dso_local global i32 0, align 4
@XenbusStateConnected = common dso_local global i32 0, align 4
@XenbusStateClosed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_try_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_try_disconnect(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xenbus_read_driver_state(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @XenbusStateClosing, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @XenbusStateConnected, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %21 = call i32 @pcifront_free_roots(%struct.pcifront_device* %20)
  %22 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %23 = call i32 @pcifront_disconnect(%struct.pcifront_device* %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %26 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @XenbusStateClosed, align 4
  %29 = call i32 @xenbus_switch_state(%struct.TYPE_2__* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @pcifront_free_roots(%struct.pcifront_device*) #1

declare dso_local i32 @pcifront_disconnect(%struct.pcifront_device*) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
