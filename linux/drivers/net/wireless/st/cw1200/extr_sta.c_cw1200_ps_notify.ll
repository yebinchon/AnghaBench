; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_ps_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_ps_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32 }

@CW1200_MAX_STA_IN_AP_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s for LinkId: %d. STAs asleep: %.8X\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@STA_NOTIFY_SLEEP = common dso_local global i32 0, align 4
@STA_NOTIFY_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*, i32, i32)* @cw1200_ps_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_ps_notify(%struct.cw1200_common* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CW1200_MAX_STA_IN_AP_MODE, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16, i32 %19)
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = load i32, i32* @STA_NOTIFY_SLEEP, align 4
  br label %33

31:                                               ; preds = %11
  %32 = load i32, i32* @STA_NOTIFY_AWAKE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @__cw1200_sta_notify(i32 %23, i32 %26, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

declare dso_local i32 @__cw1200_sta_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
