; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_adsp = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get xo clock\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_adsp*, i8**)* @adsp_init_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_init_clock(%struct.qcom_adsp* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_adsp*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_adsp* %0, %struct.qcom_adsp** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @devm_clk_get(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %14 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %16 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %22 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %31 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %105

36:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %37

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %53 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %55 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %58 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.TYPE_3__* @devm_kcalloc(i32 %56, i32 %59, i32 8, i32 %60)
  %62 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %63 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %62, i32 0, i32 1
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %63, align 8
  %64 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %50
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %105

71:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %75 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %85 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8* %83, i8** %90, align 8
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %96 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %99 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %102 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = call i32 @devm_clk_bulk_get(i32 %97, i32 %100, %struct.TYPE_3__* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %94, %68, %34
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
