; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32, i32, i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Disabling LCD controller\0A\00", align 1
@SHANNON_GPIO_DISP_EN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@LCSR = common dso_local global i64 0, align 8
@LCCR0 = common dso_local global i64 0, align 8
@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0_LEN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_disable_controller(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 (...) @machine_is_shannon()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %15 = call i32 @gpio_set_value(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %19, i32 0, i32 1
  %21 = call i32 @add_wait_queue(i32* %20, i32* @wait)
  %22 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %23 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LCSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 -1, i64 %26)
  %28 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LCCR0, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @LCCR0_LDM, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LCCR0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  %45 = load i32, i32* @LCCR0_LEN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LCCR0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 20, %56
  %58 = sdiv i32 %57, 1000
  %59 = call i32 @schedule_timeout(i32 %58)
  %60 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %60, i32 0, i32 1
  %62 = call i32 @remove_wait_queue(i32* %61, i32* @wait)
  %63 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_disable_unprepare(i32 %65)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @machine_is_shannon(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
