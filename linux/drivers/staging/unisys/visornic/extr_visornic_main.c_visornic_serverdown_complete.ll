; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_visornic_serverdown_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_visornic_serverdown_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visornic_devdata = type { i32, i32, i32 (i32, i32)*, i32, %struct.TYPE_2__, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visornic_devdata*)* @visornic_serverdown_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visornic_serverdown_complete(%struct.visornic_devdata* %0) #0 {
  %2 = alloca %struct.visornic_devdata*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.visornic_devdata* %0, %struct.visornic_devdata** %2, align 8
  %4 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %4, i32 0, i32 7
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %7, i32 0, i32 6
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @dev_close(%struct.net_device* %11)
  %13 = call i32 (...) @rtnl_unlock()
  %14 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %14, i32 0, i32 5
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %23, i32 0, i32 2
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = icmp ne i32 (i32, i32)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %28, i32 0, i32 2
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %30(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %40, i32 0, i32 2
  store i32 (i32, i32)* null, i32 (i32, i32)** %41, align 8
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
