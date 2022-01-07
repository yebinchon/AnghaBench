; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.bq4802 = type { i32 (%struct.bq4802*, i32)*, i32, i32 (%struct.bq4802*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bq4802_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq4802_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.bq4802*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.bq4802* @dev_get_drvdata(%struct.device* %16)
  store %struct.bq4802* %17, %struct.bq4802** %5, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1900
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = udiv i32 %22, 100
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %15, align 4
  %25 = urem i32 %24, 100
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @bin2bcd(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @bin2bcd(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @bin2bcd(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @bin2bcd(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @bin2bcd(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @bin2bcd(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %57 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %56, i32 0, i32 1
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %61 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %60, i32 0, i32 0
  %62 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %61, align 8
  %63 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %64 = call i32 %62(%struct.bq4802* %63, i32 14)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %66 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %65, i32 0, i32 2
  %67 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %66, align 8
  %68 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, 8
  %71 = call i32 %67(%struct.bq4802* %68, i32 14, i32 %70)
  %72 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %73 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %72, i32 0, i32 2
  %74 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %73, align 8
  %75 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 %74(%struct.bq4802* %75, i32 0, i32 %76)
  %78 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %79 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %78, i32 0, i32 2
  %80 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %79, align 8
  %81 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 %80(%struct.bq4802* %81, i32 2, i32 %82)
  %84 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %85 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %84, i32 0, i32 2
  %86 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %85, align 8
  %87 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 %86(%struct.bq4802* %87, i32 4, i32 %88)
  %90 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %91 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %90, i32 0, i32 2
  %92 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %91, align 8
  %93 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 %92(%struct.bq4802* %93, i32 6, i32 %94)
  %96 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %97 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %96, i32 0, i32 2
  %98 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %97, align 8
  %99 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 %98(%struct.bq4802* %99, i32 9, i32 %100)
  %102 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %103 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %102, i32 0, i32 2
  %104 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %103, align 8
  %105 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 %104(%struct.bq4802* %105, i32 10, i32 %106)
  %108 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %109 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %108, i32 0, i32 2
  %110 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %109, align 8
  %111 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 %110(%struct.bq4802* %111, i32 15, i32 %112)
  %114 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %115 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %114, i32 0, i32 2
  %116 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %115, align 8
  %117 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 %116(%struct.bq4802* %117, i32 14, i32 %118)
  %120 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %121 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %120, i32 0, i32 1
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  ret i32 0
}

declare dso_local %struct.bq4802* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
