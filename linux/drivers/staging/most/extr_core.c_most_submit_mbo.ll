; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_submit_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_submit_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"bad mbo or missing channel reference\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @most_submit_mbo(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %3 = load %struct.mbo*, %struct.mbo** %2, align 8
  %4 = icmp ne %struct.mbo* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.mbo*, %struct.mbo** %2, align 8
  %7 = getelementptr inbounds %struct.mbo, %struct.mbo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ONCE(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load %struct.mbo*, %struct.mbo** %2, align 8
  %19 = call i32 @nq_hdm_mbo(%struct.mbo* %18)
  br label %20

20:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @nq_hdm_mbo(%struct.mbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
