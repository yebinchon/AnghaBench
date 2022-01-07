; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_do_sqbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_do_sqbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_2__*, i32, i32 (i32, i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@sqbs = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SQBS again:%2d\00", align 1
@sqbs_partial = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%4x ccq:%3d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%4x SQBS ERROR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%3d%3d%2d\00", align 1
@QDIO_ERROR_SET_BUF_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i8, i32, i32)* @qdio_do_sqbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_do_sqbs(%struct.qdio_q* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %17 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

22:                                               ; preds = %4
  %23 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %24 = load i32, i32* @sqbs, align 4
  %25 = call i32 @qperf_inc(%struct.qdio_q* %23, i32 %24)
  %26 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %30, %22
  br label %41

41:                                               ; preds = %57, %40
  %42 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %43 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8, i8* %7, align 1
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @do_sqbs(i32 %46, i8 zeroext %47, i32 %48, i32* %12, i32* %11)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %67 [
    i32 0, label %51
    i32 32, label %51
    i32 96, label %57
  ]

51:                                               ; preds = %41, %41
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @WARN_ON_ONCE(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %101

57:                                               ; preds = %41
  %58 = load i32, i32* @DBF_INFO, align 4
  %59 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %60 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @DBF_DEV_EVENT(i32 %58, %struct.TYPE_2__* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %65 = load i32, i32* @sqbs_partial, align 4
  %66 = call i32 @qperf_inc(%struct.qdio_q* %64, i32 %65)
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %69 = call i32 @SCH_NO(%struct.qdio_q* %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %73 = call i32 @SCH_NO(%struct.qdio_q* %72)
  %74 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 3
  %81 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %80, align 8
  %82 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %83 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @QDIO_ERROR_SET_BUF_STATE, align 4
  %88 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %89 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %92 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %96 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %81(i32 %86, i32 %87, i32 %90, i32 %93, i32 %94, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %67, %51, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @do_sqbs(i32, i8 zeroext, i32, i32*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
