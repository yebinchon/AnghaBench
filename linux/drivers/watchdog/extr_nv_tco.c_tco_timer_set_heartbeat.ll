; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_tco_timer_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_tco_timer_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@tco_lock = common dso_local global i32 0, align 4
@tcobase = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tco_timer_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tco_timer_set_heartbeat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 63
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call zeroext i8 @seconds_to_ticks(i32 %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, 63
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @tco_lock, i64 %30)
  %32 = load i32, i32* @tcobase, align 4
  %33 = call i32 @TCO_TMR(i32 %32)
  %34 = call i32 @inb(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 192
  store i32 %36, i32* %7, align 4
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @tcobase, align 4
  %43 = call i32 @TCO_TMR(i32 %42)
  %44 = call i32 @outb(i32 %41, i32 %43)
  %45 = load i32, i32* @tcobase, align 4
  %46 = call i32 @TCO_TMR(i32 %45)
  %47 = call i32 @inb(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 63
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %29
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @tco_lock, i64 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* @heartbeat, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %61, %26, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local zeroext i8 @seconds_to_ticks(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @TCO_TMR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
