; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_performant_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_performant_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.reply_queue_buffer* }
%struct.TYPE_2__ = type { i64 }
%struct.reply_queue_buffer = type { i64*, i64, i32 }

@FIFO_EMPTY = common dso_local global i64 0, align 8
@SA5_OUTDB_STATUS = common dso_local global i64 0, align 8
@SA5_OUTDB_CLEAR_PERF_BIT = common dso_local global i32 0, align 4
@SA5_OUTDB_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctlr_info*, i64)* @SA5_performant_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SA5_performant_completed(%struct.ctlr_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.reply_queue_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %8 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %7, i32 0, i32 5
  %9 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %9, i64 %10
  store %struct.reply_queue_buffer* %11, %struct.reply_queue_buffer** %5, align 8
  %12 = load i64, i64* @FIFO_EMPTY, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SA5_OUTDB_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* @SA5_OUTDB_CLEAR_PERF_BIT, align 4
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SA5_OUTDB_CLEAR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %45 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SA5_OUTDB_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  br label %50

50:                                               ; preds = %30, %24
  %51 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 1
  %61 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %50
  %66 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %70 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %6, align 8
  %74 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %79 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %78, i32 0, i32 1
  %80 = call i32 @atomic_dec(i32* %79)
  br label %83

81:                                               ; preds = %50
  %82 = load i64, i64* @FIFO_EMPTY, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %65
  %84 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %88 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = xor i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %83
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
