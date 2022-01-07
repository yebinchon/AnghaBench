; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { i32, i64, i64, i32, %struct.TYPE_2__*, %struct.lcs_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_buffer = type { i64, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tlet%s\00", align 1
@LCS_BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@LCS_CH_STATE_SUSPENDED = common dso_local global i64 0, align 8
@LCS_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lcs_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lcs_channel*, align 8
  %5 = alloca %struct.lcs_buffer*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.lcs_channel*
  store %struct.lcs_channel* %8, %struct.lcs_channel** %4, align 8
  %9 = load i32, i32* @trace, align 4
  %10 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_name(i32* %13)
  %15 = call i32 @LCS_DBF_TEXT_(i32 5, i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %17 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %16, i32 0, i32 5
  %18 = load %struct.lcs_buffer*, %struct.lcs_buffer** %17, align 8
  store %struct.lcs_buffer* %18, %struct.lcs_buffer** %5, align 8
  %19 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %20 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %52, %1
  %23 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %23, i64 %25
  %27 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LCS_BUF_STATE_PROCESSED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %22
  %32 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %32, i64 %34
  %36 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %35, i32 0, i32 1
  %37 = load i32 (%struct.lcs_channel*, %struct.lcs_buffer*)*, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)** %36, align 8
  %38 = icmp ne i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %40, i64 %42
  %44 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %43, i32 0, i32 1
  %45 = load i32 (%struct.lcs_channel*, %struct.lcs_buffer*)*, i32 (%struct.lcs_channel*, %struct.lcs_buffer*)** %44, align 8
  %46 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %47 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %47, i64 %49
  %51 = call i32 %45(%struct.lcs_channel* %46, %struct.lcs_buffer* %50)
  br label %52

52:                                               ; preds = %39, %31
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  store i32 %57, i32* %6, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %61 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %63 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %69 = call i32 @lcs_start_channel(%struct.lcs_channel* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %72 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %73)
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_lock_irqsave(i32 %74, i64 %75)
  %77 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %78 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LCS_CH_STATE_SUSPENDED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %70
  %83 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %84 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %83, i32 0, i32 5
  %85 = load %struct.lcs_buffer*, %struct.lcs_buffer** %84, align 8
  %86 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %87 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %85, i64 %88
  %90 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LCS_BUF_STATE_READY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %96 = call i32 @__lcs_resume_channel(%struct.lcs_channel* %95)
  br label %97

97:                                               ; preds = %94, %82, %70
  %98 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %99 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %100)
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32 %101, i64 %102)
  %104 = load %struct.lcs_channel*, %struct.lcs_channel** %4, align 8
  %105 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %104, i32 0, i32 3
  %106 = call i32 @wake_up(i32* %105)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @lcs_start_channel(%struct.lcs_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_2__*) #1

declare dso_local i32 @__lcs_resume_channel(%struct.lcs_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
