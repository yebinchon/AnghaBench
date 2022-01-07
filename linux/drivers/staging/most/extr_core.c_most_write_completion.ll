; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_write_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_write_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i64, %struct.most_channel* }
%struct.most_channel = type { i64 }

@MBO_E_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"WARN: Tx MBO status: invalid\0A\00", align 1
@MBO_E_CLOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbo*)* @most_write_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @most_write_completion(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca %struct.most_channel*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %4 = load %struct.mbo*, %struct.mbo** %2, align 8
  %5 = getelementptr inbounds %struct.mbo, %struct.mbo* %4, i32 0, i32 1
  %6 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  store %struct.most_channel* %6, %struct.most_channel** %3, align 8
  %7 = load %struct.mbo*, %struct.mbo** %2, align 8
  %8 = getelementptr inbounds %struct.mbo, %struct.mbo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MBO_E_INVAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %16 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.mbo*, %struct.mbo** %2, align 8
  %21 = getelementptr inbounds %struct.mbo, %struct.mbo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MBO_E_CLOSE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i1 [ true, %14 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.mbo*, %struct.mbo** %2, align 8
  %32 = call i32 @trash_mbo(%struct.mbo* %31)
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.mbo*, %struct.mbo** %2, align 8
  %35 = call i32 @arm_mbo(%struct.mbo* %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trash_mbo(%struct.mbo*) #1

declare dso_local i32 @arm_mbo(%struct.mbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
