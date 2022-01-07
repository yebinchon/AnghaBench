; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPCR = common dso_local global i64 0, align 8
@SNVS_LPCR_SRTC_ENV = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snvs_rtc_data*, i32)* @snvs_rtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_enable(%struct.snvs_rtc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snvs_rtc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snvs_rtc_data* %0, %struct.snvs_rtc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  %8 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %9 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %12 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNVS_LPCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @SNVS_LPCR_SRTC_ENV, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SNVS_LPCR_SRTC_ENV, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @regmap_update_bits(i32 %10, i64 %15, i32 %16, i32 %23)
  br label %25

25:                                               ; preds = %55, %22
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %31 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %34 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNVS_LPCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @regmap_read(i32 %32, i64 %37, i32* %7)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SNVS_LPCR_SRTC_ENV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SNVS_LPCR_SRTC_ENV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %47
  br label %25

56:                                               ; preds = %53, %46, %25
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
