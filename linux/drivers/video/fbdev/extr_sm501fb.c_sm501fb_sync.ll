; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.sm501fb_par* }
%struct.sm501fb_par = type { %struct.sm501fb_info* }
%struct.sm501fb_info = type { i64 }

@SM501_SYSTEM_CONTROL = common dso_local global i64 0, align 8
@SM501_SYSCTRL_2D_ENGINE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timeout waiting for 2d engine sync\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @sm501fb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 1000000, i32* %4, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.sm501fb_par*, %struct.sm501fb_par** %8, align 8
  store %struct.sm501fb_par* %9, %struct.sm501fb_par** %5, align 8
  %10 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %11 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %10, i32 0, i32 0
  %12 = load %struct.sm501fb_info*, %struct.sm501fb_info** %11, align 8
  store %struct.sm501fb_info* %12, %struct.sm501fb_info** %6, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %18 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SM501_SYSTEM_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @smc501_readl(i64 %21)
  %23 = load i32, i32* @SM501_SYSCTRL_2D_ENGINE_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %16, %13
  %27 = phi i1 [ false, %13 ], [ %25, %16 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %13

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @smc501_readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
