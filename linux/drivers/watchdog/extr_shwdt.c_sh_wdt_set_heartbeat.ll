; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sh_wdt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @sh_wdt_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_wdt_set_heartbeat(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_wdt*, align 8
  %7 = alloca i64, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %9 = call %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.sh_wdt* %9, %struct.sh_wdt** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 3600
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ true, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load %struct.sh_wdt*, %struct.sh_wdt** %6, align 8
  %25 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* @heartbeat, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sh_wdt*, %struct.sh_wdt** %6, align 8
  %33 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.sh_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
