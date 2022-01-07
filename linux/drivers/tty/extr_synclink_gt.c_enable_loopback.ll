; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_enable_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_enable_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SCR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@CCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @enable_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_loopback(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %3 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %4 = load i32, i32* @SCR, align 4
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = load i32, i32* @SCR, align 4
  %7 = call i32 @rd_reg16(%struct.slgt_info* %5, i32 %6)
  %8 = load i32, i32* @BIT2, align 4
  %9 = or i32 %7, %8
  %10 = trunc i32 %9 to i16
  %11 = call i32 @wr_reg16(%struct.slgt_info* %3, i32 %4, i16 zeroext %10)
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = load i32, i32* @CCR, align 4
  %21 = call i32 @wr_reg8(%struct.slgt_info* %19, i32 %20, i32 73)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_rate(%struct.slgt_info* %28, i32 %32)
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = call i32 @set_rate(%struct.slgt_info* %35, i32 3686400)
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @set_rate(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
