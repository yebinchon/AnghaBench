; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_init_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5_wcss = type { i8*, %struct.device*, i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"wcss_aon_reset\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to acquire wcss_aon_reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wcss_reset\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to acquire wcss_reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wcss_q6_reset\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"unable to acquire wcss_q6_reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5_wcss*)* @q6v5_wcss_init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_init_reset(%struct.q6v5_wcss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5_wcss*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.q6v5_wcss* %0, %struct.q6v5_wcss** %3, align 8
  %5 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %6 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i8* @devm_reset_control_get(%struct.device* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %11 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %13 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %19 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %23 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i8* @devm_reset_control_get(%struct.device* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %30 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %32 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %38 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %37, i32 0, i32 1
  %39 = load %struct.device*, %struct.device** %38, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %42 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %26
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i8* @devm_reset_control_get(%struct.device* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %49 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %51 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %57 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %56, i32 0, i32 1
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %60 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %61 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55, %36, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
