; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_is_running.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_is_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@watchdog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SIO_F71808FG_LD_WDT = common dso_local global i32 0, align 4
@SIO_REG_ENABLE = common dso_local global i32 0, align 4
@F71808FG_REG_WDT_CONF = common dso_local global i32 0, align 4
@F71808FG_FLAG_WD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @watchdog_is_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_is_running() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %4 = call i64 @superio_enter(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %30

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %9 = load i32, i32* @SIO_F71808FG_LD_WDT, align 4
  %10 = call i32 @superio_select(i32 %8, i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %12 = load i32, i32* @SIO_REG_ENABLE, align 4
  %13 = call i32 @superio_inb(i32 %11, i32 %12)
  %14 = call i32 @BIT(i32 0)
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %7
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %19 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %20 = call i32 @superio_inb(i32 %18, i32 %19)
  %21 = load i32, i32* @F71808FG_FLAG_WD_EN, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %17, %7
  %26 = phi i1 [ false, %7 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %29 = call i32 @superio_exit(i32 %28)
  br label %30

30:                                               ; preds = %25, %6
  %31 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0))
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
