; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@pcipcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WD_PCI_WDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Card did not acknowledge disable attempt\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Watchdog stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcipcwd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcipcwd_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0))
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %5 = add nsw i64 %4, 3
  %6 = call i32 @outb_p(i32 165, i64 %5)
  %7 = call i32 @udelay(i32 1000)
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %9 = add nsw i64 %8, 3
  %10 = call i32 @outb_p(i32 165, i64 %9)
  %11 = call i32 @udelay(i32 1000)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %13 = add nsw i64 %12, 2
  %14 = call i32 @inb_p(i64 %13)
  store i32 %14, i32* %2, align 4
  %15 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0))
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @WD_PCI_WDIS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

22:                                               ; preds = %0
  %23 = load i64, i64* @debug, align 8
  %24 = load i64, i64* @VERBOSE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
