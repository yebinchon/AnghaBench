; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_txidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_txidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s set_txidle(%d)\0A\00", align 1
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*, i32)* @set_txidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_txidle(%struct.slgt_info* %0, i32 %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DBGINFO(i8* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %28 = call i32 @tx_set_idle(%struct.slgt_info* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret i32 0
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_set_idle(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
