; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_ioctl_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_ioctl_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32, i64)* @watchdog_ioctl_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_ioctl_op(%struct.watchdog_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.watchdog_device*, i32, i64)**
  %13 = load i32 (%struct.watchdog_device*, i32, i64)*, i32 (%struct.watchdog_device*, i32, i64)** %12, align 8
  %14 = icmp ne i32 (%struct.watchdog_device*, i32, i64)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOIOCTLCMD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.watchdog_device*, i32, i64)**
  %24 = load i32 (%struct.watchdog_device*, i32, i64)*, i32 (%struct.watchdog_device*, i32, i64)** %23, align 8
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 %24(%struct.watchdog_device* %25, i32 %26, i64 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
