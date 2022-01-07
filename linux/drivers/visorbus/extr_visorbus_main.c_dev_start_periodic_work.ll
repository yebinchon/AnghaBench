; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_dev_start_periodic_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_dev_start_periodic_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLLJIFFIES_NORMALCHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visor_device*)* @dev_start_periodic_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_start_periodic_work(%struct.visor_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.visor_device*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %3, align 8
  %4 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %5 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %10 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %8
  %17 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %18 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %17, i32 0, i32 2
  %19 = call i32 @get_device(i32* %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @POLLJIFFIES_NORMALCHANNEL, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %24 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %27 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %26, i32 0, i32 1
  %28 = call i32 @add_timer(%struct.TYPE_2__* %27)
  %29 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %30 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
