; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"[BH] wakeup.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[BH] wakeup failed (BH error)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_bh_wakeup(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %5 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 1
  %13 = call i32 @atomic_add_return(i32 1, i32* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 0
  %18 = call i32 @wake_up(i32* %17)
  br label %19

19:                                               ; preds = %8, %15, %10
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
