; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.q6v5_wcss* }
%struct.q6v5_wcss = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"timed out on wait\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @q6v5_wcss_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_stop(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.q6v5_wcss*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  %8 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %7, align 8
  store %struct.q6v5_wcss* %8, %struct.q6v5_wcss** %4, align 8
  %9 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %10 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %9, i32 0, i32 0
  %11 = call i32 @qcom_q6v5_request_stop(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %18 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %24 = call i32 @q6v5_wcss_powerdown(%struct.q6v5_wcss* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %22
  %30 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %31 = call i32 @q6v5_q6_powerdown(%struct.q6v5_wcss* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %38 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %37, i32 0, i32 0
  %39 = call i32 @qcom_q6v5_unprepare(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %27, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @qcom_q6v5_request_stop(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @q6v5_wcss_powerdown(%struct.q6v5_wcss*) #1

declare dso_local i32 @q6v5_q6_powerdown(%struct.q6v5_wcss*) #1

declare dso_local i32 @qcom_q6v5_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
