; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_lock_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_lock_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"[WSM] TX is locked.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wsm_lock_tx(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %4 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %3)
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 0
  %7 = call i32 @atomic_add_return(i32 1, i32* %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %11 = call i64 @wsm_flush_tx(%struct.cw1200_common* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %18 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %17)
  ret void
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i64 @wsm_flush_tx(%struct.cw1200_common*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
