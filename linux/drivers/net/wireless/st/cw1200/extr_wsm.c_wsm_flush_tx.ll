; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_flush_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_flush_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"[WSM] Fatal error occurred, will not flush TX.\0A\00", align 1
@WSM_CMD_LAST_CHANCE_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"[WSM] TX Frames (%d) stuck in firmware, killing BH\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_flush_tx(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 6
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

28:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @cw1200_queue_get_xmit_timestamp(i32* %38, i64* %4, i32 -1)
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %86

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @WSM_CMD_LAST_CHANCE_TIMEOUT, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* @jiffies, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %49
  %58 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %59 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @wait_event_timeout(i32 %60, i32 %66, i64 %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %57, %49
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %74 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @wiphy_err(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %83 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %82, i32 0, i32 1
  %84 = call i32 @wake_up(i32* %83)
  store i32 0, i32* %2, align 4
  br label %86

85:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %70, %48, %26, %20
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cw1200_queue_get_xmit_timestamp(i32*, i64*, i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
