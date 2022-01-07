; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32 }
%struct.reg_info = type { i64, i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.q6v5*, %struct.reg_info*, i32)* @q6v5_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6v5_regulator_disable(%struct.q6v5* %0, %struct.reg_info* %1, i32 %2) #0 {
  %4 = alloca %struct.q6v5*, align 8
  %5 = alloca %struct.reg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %4, align 8
  store %struct.reg_info* %1, %struct.reg_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %53, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.reg_info*, %struct.reg_info** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %13, i64 %15
  %17 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.reg_info*, %struct.reg_info** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = call i32 @regulator_set_voltage(i32 %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.reg_info*, %struct.reg_info** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %30, i64 %32
  %34 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.reg_info*, %struct.reg_info** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %38, i64 %40
  %42 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regulator_set_load(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.reg_info*, %struct.reg_info** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @regulator_disable(i32 %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %8

56:                                               ; preds = %8
  ret void
}

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
