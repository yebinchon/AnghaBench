; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bq4802 = type { i32 (%struct.bq4802*, i32)*, i32, i32 (%struct.bq4802*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bq4802_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq4802_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.bq4802*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.bq4802* @dev_get_drvdata(%struct.device* %9)
  store %struct.bq4802* %10, %struct.bq4802** %5, align 8
  %11 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %12 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %16 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %15, i32 0, i32 0
  %17 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %16, align 8
  %18 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %19 = call i32 %17(%struct.bq4802* %18, i32 14)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %21 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %20, i32 0, i32 2
  %22 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %21, align 8
  %23 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, 8
  %26 = call i32 %22(%struct.bq4802* %23, i32 14, i32 %25)
  %27 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %28 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %27, i32 0, i32 0
  %29 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %28, align 8
  %30 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %31 = call i32 %29(%struct.bq4802* %30, i32 0)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %35 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %34, i32 0, i32 0
  %36 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %35, align 8
  %37 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %38 = call i32 %36(%struct.bq4802* %37, i32 2)
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %42 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %41, i32 0, i32 0
  %43 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %42, align 8
  %44 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %45 = call i32 %43(%struct.bq4802* %44, i32 4)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %49 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %48, i32 0, i32 0
  %50 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %49, align 8
  %51 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %52 = call i32 %50(%struct.bq4802* %51, i32 6)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %56 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %55, i32 0, i32 0
  %57 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %56, align 8
  %58 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %59 = call i32 %57(%struct.bq4802* %58, i32 9)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %63 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %62, i32 0, i32 0
  %64 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %63, align 8
  %65 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %66 = call i32 %64(%struct.bq4802* %65, i32 10)
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %70 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %69, i32 0, i32 0
  %71 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %70, align 8
  %72 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %73 = call i32 %71(%struct.bq4802* %72, i32 8)
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %77 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %76, i32 0, i32 0
  %78 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %77, align 8
  %79 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %80 = call i32 %78(%struct.bq4802* %79, i32 15)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %82 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %81, i32 0, i32 2
  %83 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %82, align 8
  %84 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 %83(%struct.bq4802* %84, i32 14, i32 %85)
  %87 = load %struct.bq4802*, %struct.bq4802** %5, align 8
  %88 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %87, i32 0, i32 1
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @bcd2bin(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @bcd2bin(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @bcd2bin(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @bcd2bin(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %120 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @bcd2bin(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @bcd2bin(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @bcd2bin(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i8* @bcd2bin(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = mul i32 %143, 100
  %145 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %150 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1900
  store i32 %152, i32* %150, align 4
  %153 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %154 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 4
  ret i32 0
}

declare dso_local %struct.bq4802* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
