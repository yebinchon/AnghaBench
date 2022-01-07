; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_tm_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_tm_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timestamp_t = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@UNIX_SECS_1980 = common dso_local global i64 0, align 8
@UNIX_SECS_2108 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timestamp_t* @tm_current(%struct.timestamp_t* %0) #0 {
  %2 = alloca %struct.timestamp_t*, align 8
  %3 = alloca %struct.timestamp_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 4
  store %struct.timestamp_t* %0, %struct.timestamp_t** %3, align 8
  %6 = call i64 (...) @ktime_get_real_seconds()
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @time64_to_tm(i64 %7, i32 0, %struct.tm* %5)
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @UNIX_SECS_1980, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %14 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %16 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %18 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %20 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %19, i32 0, i32 3
  store i32 1, i32* %20, align 4
  %21 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %22 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %21, i32 0, i32 4
  store i32 1, i32* %22, align 4
  %23 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %24 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %23, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  store %struct.timestamp_t* %25, %struct.timestamp_t** %2, align 8
  br label %73

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @UNIX_SECS_2108, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %32 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %31, i32 0, i32 0
  store i32 59, i32* %32, align 4
  %33 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %34 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %33, i32 0, i32 1
  store i32 59, i32* %34, align 4
  %35 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %36 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %35, i32 0, i32 2
  store i32 23, i32* %36, align 4
  %37 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %38 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %37, i32 0, i32 3
  store i32 31, i32* %38, align 4
  %39 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %40 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %39, i32 0, i32 4
  store i32 12, i32* %40, align 4
  %41 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %42 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %41, i32 0, i32 5
  store i32 127, i32* %42, align 4
  %43 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  store %struct.timestamp_t* %43, %struct.timestamp_t** %2, align 8
  br label %73

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %48 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %52 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %56 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %60 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %65 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1900
  %69 = sub nsw i32 %68, 1980
  %70 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  %71 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.timestamp_t*, %struct.timestamp_t** %3, align 8
  store %struct.timestamp_t* %72, %struct.timestamp_t** %2, align 8
  br label %73

73:                                               ; preds = %44, %30, %12
  %74 = load %struct.timestamp_t*, %struct.timestamp_t** %2, align 8
  ret %struct.timestamp_t* %74
}

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @time64_to_tm(i64, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
