; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_ssp_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_ssp_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_spi = type { %struct.mxs_ssp }
%struct.mxs_ssp = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@SSP_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_spi*, i32, i32, i32)* @mxs_ssp_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_ssp_wait(%struct.mxs_spi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxs_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mxs_ssp*, align 8
  %12 = alloca i32, align 4
  store %struct.mxs_spi* %0, %struct.mxs_spi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i32, i32* @SSP_TIMEOUT, align 4
  %15 = call i64 @msecs_to_jiffies(i32 %14)
  %16 = add i64 %13, %15
  store i64 %16, i64* %10, align 8
  %17 = load %struct.mxs_spi*, %struct.mxs_spi** %6, align 8
  %18 = getelementptr inbounds %struct.mxs_spi, %struct.mxs_spi* %17, i32 0, i32 0
  store %struct.mxs_ssp* %18, %struct.mxs_ssp** %11, align 8
  br label %19

19:                                               ; preds = %41, %4
  %20 = load %struct.mxs_ssp*, %struct.mxs_ssp** %11, align 8
  %21 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  %31 = xor i32 %30, -1
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %49

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @time_before(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %19, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
