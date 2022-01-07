; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_time_unix2fat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_time_unix2fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i32 }
%struct.date_time_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@UNIX_SECS_1980 = common dso_local global i64 0, align 8
@UNIX_SECS_2108 = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec64*, %struct.date_time_t*)* @exfat_time_unix2fat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exfat_time_unix2fat(%struct.timespec64* %0, %struct.date_time_t* %1) #0 {
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca %struct.date_time_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm, align 4
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  store %struct.date_time_t* %1, %struct.date_time_t** %4, align 8
  %7 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @time64_to_tm(i64 %10, i32 0, %struct.tm* %6)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @UNIX_SECS_1980, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %17 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %19 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %21 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %23 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %25 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %24, i32 0, i32 4
  store i32 1, i32* %25, align 4
  %26 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %27 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %26, i32 0, i32 5
  store i32 1, i32* %27, align 4
  %28 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %29 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %28, i32 0, i32 6
  store i32 0, i32* %29, align 4
  br label %84

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @UNIX_SECS_2108, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %36 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %35, i32 0, i32 0
  store i32 999, i32* %36, align 4
  %37 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %38 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %37, i32 0, i32 1
  store i32 59, i32* %38, align 4
  %39 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %40 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %39, i32 0, i32 2
  store i32 59, i32* %40, align 4
  %41 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %42 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %41, i32 0, i32 3
  store i32 23, i32* %42, align 4
  %43 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %44 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %43, i32 0, i32 4
  store i32 31, i32* %44, align 4
  %45 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %46 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %45, i32 0, i32 5
  store i32 12, i32* %46, align 4
  %47 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %48 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %47, i32 0, i32 6
  store i32 127, i32* %48, align 4
  br label %84

49:                                               ; preds = %30
  %50 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %51 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NSEC_PER_MSEC, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %56 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %60 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %64 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %68 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %72 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %77 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1900
  %81 = sub nsw i32 %80, 1980
  %82 = load %struct.date_time_t*, %struct.date_time_t** %4, align 8
  %83 = getelementptr inbounds %struct.date_time_t, %struct.date_time_t* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %49, %34, %15
  ret void
}

declare dso_local i32 @time64_to_tm(i64, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
