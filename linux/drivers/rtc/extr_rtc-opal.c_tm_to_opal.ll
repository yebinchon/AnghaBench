; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_tm_to_opal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_tm_to_opal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, i32*, i32*)* @tm_to_opal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm_to_opal(%struct.rtc_time* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1900
  %11 = sdiv i32 %10, 100
  %12 = call i64 @bin2bcd(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 24
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1900
  %22 = srem i32 %21, 100
  %23 = call i64 @bin2bcd(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i64 @bin2bcd(i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @bin2bcd(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @bin2bcd(i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 56
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @bin2bcd(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 48
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @bin2bcd(i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = shl i32 %69, 40
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  ret void
}

declare dso_local i64 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
