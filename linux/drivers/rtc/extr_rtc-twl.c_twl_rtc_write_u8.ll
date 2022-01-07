; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_write_u8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_write_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_rtc = type { i32* }

@TWL_MODULE_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not write TWL register %X - error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_rtc*, i64, i64)* @twl_rtc_write_u8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_write_u8(%struct.twl_rtc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.twl_rtc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.twl_rtc* %0, %struct.twl_rtc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TWL_MODULE_RTC, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %11 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @twl_i2c_write_u8(i32 %8, i64 %9, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @twl_i2c_write_u8(i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
