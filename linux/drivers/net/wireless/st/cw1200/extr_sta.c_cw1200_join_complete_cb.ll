; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_join_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_join_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, i32 }
%struct.wsm_join_complete = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"[STA] cw1200_join_complete_cb called, status=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_join_complete_cb(%struct.cw1200_common* %0, %struct.wsm_join_complete* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_join_complete*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_join_complete* %1, %struct.wsm_join_complete** %4, align 8
  %5 = load %struct.wsm_join_complete*, %struct.wsm_join_complete** %4, align 8
  %6 = getelementptr inbounds %struct.wsm_join_complete, %struct.wsm_join_complete* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 3
  %11 = call i64 @cancel_delayed_work(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.wsm_join_complete*, %struct.wsm_join_complete** %4, align 8
  %15 = getelementptr inbounds %struct.wsm_join_complete, %struct.wsm_join_complete* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 0
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
