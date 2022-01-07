; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_time64_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_time64_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_time64_to_tm(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @div_s64_rem(i32 %10, i32 86400, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 4
  %14 = srem i32 %13, 7
  %15 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sdiv i32 %17, 365
  %19 = add nsw i32 1970, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 1970
  %22 = mul i32 %21, 365
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %24, 1
  %26 = call i64 @LEAPS_THRU_END_OF(i32 %25)
  %27 = add nsw i64 %23, %26
  %28 = call i64 @LEAPS_THRU_END_OF(i32 1969)
  %29 = sub nsw i64 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %37, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @is_leap_year(i32 %40)
  %42 = add nsw i64 365, %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, 1900
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %70, %47
  %57 = load i32, i32* %5, align 4
  %58 = icmp ult i32 %57, 11
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rtc_month_days(i32 %61, i32 %62)
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %73

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %56

73:                                               ; preds = %67, %56
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = udiv i32 %81, 3600
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = mul i32 %87, 3600
  %89 = load i32, i32* %7, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = udiv i32 %91, 60
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %98, 60
  %100 = sub i32 %95, %99
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 8
  store i64 0, i64* %104, align 8
  ret void
}

declare dso_local i32 @div_s64_rem(i32, i32, i32*) #1

declare dso_local i64 @LEAPS_THRU_END_OF(i32) #1

declare dso_local i64 @is_leap_year(i32) #1

declare dso_local i32 @rtc_month_days(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
