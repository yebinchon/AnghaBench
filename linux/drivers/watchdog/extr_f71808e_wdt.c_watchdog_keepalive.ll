; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@watchdog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIO_F71808FG_LD_WDT = common dso_local global i32 0, align 4
@F71808FG_REG_WDT_CONF = common dso_local global i32 0, align 4
@F71808FG_FLAG_WD_UNIT = common dso_local global i32 0, align 4
@F71808FG_REG_WD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @watchdog_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_keepalive() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %4 = call i32 @superio_enter(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %31

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %10 = load i32, i32* @SIO_F71808FG_LD_WDT, align 4
  %11 = call i32 @superio_select(i32 %9, i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %16 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %17 = load i32, i32* @F71808FG_FLAG_WD_UNIT, align 4
  %18 = call i32 @superio_set_bit(i32 %15, i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %21 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %22 = load i32, i32* @F71808FG_FLAG_WD_UNIT, align 4
  %23 = call i32 @superio_clear_bit(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %26 = load i32, i32* @F71808FG_REG_WD_TIME, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 2), align 8
  %28 = call i32 @superio_outb(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %30 = call i32 @superio_exit(i32 %29)
  br label %31

31:                                               ; preds = %24, %7
  %32 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0))
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_set_bit(i32, i32, i32) #1

declare dso_local i32 @superio_clear_bit(i32, i32, i32) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
