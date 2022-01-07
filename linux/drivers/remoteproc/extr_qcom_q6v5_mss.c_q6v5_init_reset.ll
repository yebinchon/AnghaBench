; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_init_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [12 x i8] c"mss_restart\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to acquire mss restart\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pdc_reset\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to acquire pdc reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*)* @q6v5_init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_init_reset(%struct.q6v5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5*, align 8
  store %struct.q6v5* %0, %struct.q6v5** %3, align 8
  %4 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %5 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @devm_reset_control_get_exclusive(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %9 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %11 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %17 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %21 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %26 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %31 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @devm_reset_control_get_exclusive(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %35 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %37 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %43 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %47 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %24
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @devm_reset_control_get_exclusive(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
