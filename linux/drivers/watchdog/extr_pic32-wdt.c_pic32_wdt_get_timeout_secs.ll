; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-wdt.c_pic32_wdt_get_timeout_secs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-wdt.c_pic32_wdt_get_timeout_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_wdt = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"wdt: clk_id %d, clk_rate %lu (prescale)\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"wdt: clk_rate %lu (postscale) / terminal %d, timeout %dsec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pic32_wdt*, %struct.device*)* @pic32_wdt_get_timeout_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pic32_wdt_get_timeout_secs(%struct.pic32_wdt* %0, %struct.device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pic32_wdt*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pic32_wdt* %0, %struct.pic32_wdt** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.pic32_wdt*, %struct.pic32_wdt** %4, align 8
  %11 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.pic32_wdt*, %struct.pic32_wdt** %4, align 8
  %16 = call i32 @pic32_wdt_get_clk_id(%struct.pic32_wdt* %15)
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = lshr i64 %20, 5
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.pic32_wdt*, %struct.pic32_wdt** %4, align 8
  %27 = call i64 @pic32_wdt_get_post_scaler(%struct.pic32_wdt* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @BIT(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %25, %24
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, ...) #1

declare dso_local i32 @pic32_wdt_get_clk_id(%struct.pic32_wdt*) #1

declare dso_local i64 @pic32_wdt_get_post_scaler(%struct.pic32_wdt*) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
