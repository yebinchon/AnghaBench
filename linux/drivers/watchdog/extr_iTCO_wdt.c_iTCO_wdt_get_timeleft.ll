; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.iTCO_wdt_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @iTCO_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.iTCO_wdt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.iTCO_wdt_private* %8, %struct.iTCO_wdt_private** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %10 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %15 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %18 = call i32 @TCO_RLD(%struct.iTCO_wdt_private* %17)
  %19 = call i32 @inw(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1023
  store i32 %21, i32* %4, align 4
  %22 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %23 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = call i32 @ticks_to_seconds(%struct.iTCO_wdt_private* %25, i8 zeroext %27)
  store i32 %28, i32* %6, align 4
  br label %68

29:                                               ; preds = %1
  %30 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %31 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %36 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %39 = call i32 @TCO_RLD(%struct.iTCO_wdt_private* %38)
  %40 = call i32 @inb(i32 %39)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 63
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %5, align 1
  %46 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %47 = call i32 @TCO1_STS(%struct.iTCO_wdt_private* %46)
  %48 = call i32 @inw(i32 %47)
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %34
  %52 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %53 = call i32 @TCOv1_TMR(%struct.iTCO_wdt_private* %52)
  %54 = call i32 @inb(i32 %53)
  %55 = and i32 %54, 63
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %5, align 1
  br label %60

60:                                               ; preds = %51, %34
  %61 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %62 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %65 = load i8, i8* %5, align 1
  %66 = call i32 @ticks_to_seconds(%struct.iTCO_wdt_private* %64, i8 zeroext %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %29
  br label %68

68:                                               ; preds = %67, %13
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @TCO_RLD(%struct.iTCO_wdt_private*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ticks_to_seconds(%struct.iTCO_wdt_private*, i8 zeroext) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @TCO1_STS(%struct.iTCO_wdt_private*) #1

declare dso_local i32 @TCOv1_TMR(%struct.iTCO_wdt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
