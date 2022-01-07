; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxfb_info = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Disabling LCD controller\0A\00", align 1
@LCDC_RMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxfb_info*)* @imxfb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxfb_disable_controller(%struct.imxfb_info* %0) #0 {
  %2 = alloca %struct.imxfb_info*, align 8
  store %struct.imxfb_info* %0, %struct.imxfb_info** %2, align 8
  %3 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %4 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %15 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %19 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  %22 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %23 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.imxfb_info*, %struct.imxfb_info** %2, align 8
  %25 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LCDC_RMCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 0, i64 %28)
  br label %30

30:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
