; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rc32434_wdt.c_rc32434_wdt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rc32434_wdt.c_rc32434_wdt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"timeout value must be between 0 and %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@rc32434_wdt_device = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@wdt_reg = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rc32434_wdt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc32434_wdt_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @WTCOMP2SEC(i32 -1)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* @timeout, align 4
  %19 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rc32434_wdt_device, i32 0, i32 0))
  %20 = load i32, i32* @timeout, align 4
  %21 = call i32 @SEC2WTCOMP(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt_reg, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @writel(i32 %21, i32* %23)
  %25 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rc32434_wdt_device, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WTCOMP2SEC(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @SEC2WTCOMP(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
