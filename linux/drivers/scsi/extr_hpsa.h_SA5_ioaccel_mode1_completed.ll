; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_ioaccel_mode1_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_ioaccel_mode1_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, i32, i64, %struct.reply_queue_buffer* }
%struct.reply_queue_buffer = type { i64*, i64, i64 }

@IOACCEL_MODE1_REPLY_UNUSED = common dso_local global i64 0, align 8
@IOACCEL_MODE1_CONSUMER_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctlr_info*, i64)* @SA5_ioaccel_mode1_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SA5_ioaccel_mode1_completed(%struct.ctlr_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.reply_queue_buffer*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %8 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %7, i32 0, i32 3
  %9 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %9, i64 %10
  store %struct.reply_queue_buffer* %11, %struct.reply_queue_buffer** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @IOACCEL_MODE1_REPLY_UNUSED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %2
  %31 = load i64, i64* @IOACCEL_MODE1_REPLY_UNUSED, align 8
  %32 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64 %31, i64* %38, align 8
  %39 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %30
  %51 = call i32 (...) @wmb()
  %52 = load i64, i64* %4, align 8
  %53 = shl i64 %52, 24
  %54 = load %struct.reply_queue_buffer*, %struct.reply_queue_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.reply_queue_buffer, %struct.reply_queue_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %53, %56
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %59 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IOACCEL_MODE1_CONSUMER_INDEX, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i64 %57, i64 %62)
  %64 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %65 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %64, i32 0, i32 1
  %66 = call i32 @atomic_dec(i32* %65)
  br label %67

67:                                               ; preds = %50, %2
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
