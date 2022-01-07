; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_put_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_put_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { %struct.most_channel* }
%struct.most_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MOST_CH_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @most_put_mbo(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca %struct.most_channel*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %4 = load %struct.mbo*, %struct.mbo** %2, align 8
  %5 = getelementptr inbounds %struct.mbo, %struct.mbo* %4, i32 0, i32 0
  %6 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  store %struct.most_channel* %6, %struct.most_channel** %3, align 8
  %7 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %8 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MOST_CH_TX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mbo*, %struct.mbo** %2, align 8
  %15 = call i32 @arm_mbo(%struct.mbo* %14)
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.mbo*, %struct.mbo** %2, align 8
  %18 = call i32 @nq_hdm_mbo(%struct.mbo* %17)
  %19 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %20 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @arm_mbo(%struct.mbo*) #1

declare dso_local i32 @nq_hdm_mbo(%struct.mbo*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
