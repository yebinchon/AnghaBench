; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_reset_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_reset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32, i32, i64, i64 }

@RMB_MBA_ALT_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*)* @q6v5_reset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_reset_deassert(%struct.q6v5* %0) #0 {
  %2 = alloca %struct.q6v5*, align 8
  %3 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %2, align 8
  %4 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %5 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %10 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @reset_control_assert(i32 %11)
  %13 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %14 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RMB_MBA_ALT_RESET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 1, i64 %17)
  %19 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %20 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @reset_control_reset(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %24 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RMB_MBA_ALT_RESET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %30 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @reset_control_deassert(i32 %31)
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %35 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_deassert(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
