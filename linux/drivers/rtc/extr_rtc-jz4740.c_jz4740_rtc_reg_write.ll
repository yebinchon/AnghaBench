; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_rtc = type { i64, i64 }

@ID_JZ4780 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_rtc*, i64, i32)* @jz4740_rtc_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.jz4740_rtc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jz4740_rtc* %0, %struct.jz4740_rtc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ID_JZ4780, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %15 = call i32 @jz4780_rtc_enable_write(%struct.jz4740_rtc* %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %21 = call i32 @jz4740_rtc_wait_write_ready(%struct.jz4740_rtc* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %28 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @jz4780_rtc_enable_write(%struct.jz4740_rtc*) #1

declare dso_local i32 @jz4740_rtc_wait_write_ready(%struct.jz4740_rtc*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
