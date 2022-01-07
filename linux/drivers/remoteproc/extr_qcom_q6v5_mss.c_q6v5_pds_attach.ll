; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_pds_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_pds_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device**, i8**)* @q6v5_pds_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_pds_attach(%struct.device* %0, %struct.device** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device** %1, %struct.device*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i8**, i8*** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %15

24:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct.device* @dev_pm_domain_attach_by_name(%struct.device* %31, i8* %36)
  %38 = load %struct.device**, %struct.device*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.device*, %struct.device** %38, i64 %40
  store %struct.device* %37, %struct.device** %41, align 8
  %42 = load %struct.device**, %struct.device*** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.device*, %struct.device** %42, i64 %44
  %46 = load %struct.device*, %struct.device** %45, align 8
  %47 = call i64 @IS_ERR_OR_NULL(%struct.device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %30
  %50 = load %struct.device**, %struct.device*** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.device*, %struct.device** %50, i64 %52
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i64 @PTR_ERR(%struct.device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @ENODATA, align 4
  %60 = sub nsw i32 0, %59
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i64 [ %55, %57 ], [ %61, %58 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %72

65:                                               ; preds = %30
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %90

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %85, %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.device**, %struct.device*** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.device*, %struct.device** %79, i64 %81
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = call i32 @dev_pm_domain_detach(%struct.device* %83, i32 0)
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %10, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %69, %13
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.device* @dev_pm_domain_attach_by_name(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.device*) #1

declare dso_local i64 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
