; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@M48T86_B = common dso_local global i32 0, align 4
@M48T86_B_DM = common dso_local global i8 0, align 1
@M48T86_SEC = common dso_local global i32 0, align 4
@M48T86_MIN = common dso_local global i32 0, align 4
@M48T86_HOUR = common dso_local global i32 0, align 4
@M48T86_DOM = common dso_local global i32 0, align 4
@M48T86_MONTH = common dso_local global i32 0, align 4
@M48T86_YEAR = common dso_local global i32 0, align 4
@M48T86_DOW = common dso_local global i32 0, align 4
@M48T86_B_H24 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t86_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @M48T86_B, align 4
  %8 = call i32 @m48t86_readb(%struct.device* %6, i32 %7)
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @M48T86_B_DM, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* @M48T86_SEC, align 4
  %19 = call i32 @m48t86_readb(%struct.device* %17, i32 %18)
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load i32, i32* @M48T86_MIN, align 4
  %24 = call i32 @m48t86_readb(%struct.device* %22, i32 %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @M48T86_HOUR, align 4
  %29 = call i32 @m48t86_readb(%struct.device* %27, i32 %28)
  %30 = and i32 %29, 63
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* @M48T86_DOM, align 4
  %35 = call i32 @m48t86_readb(%struct.device* %33, i32 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* @M48T86_MONTH, align 4
  %40 = call i32 @m48t86_readb(%struct.device* %38, i32 %39)
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load i32, i32* @M48T86_YEAR, align 4
  %46 = call i32 @m48t86_readb(%struct.device* %44, i32 %45)
  %47 = add nsw i32 %46, 100
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* @M48T86_DOW, align 4
  %52 = call i32 @m48t86_readb(%struct.device* %50, i32 %51)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %101

55:                                               ; preds = %2
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load i32, i32* @M48T86_SEC, align 4
  %58 = call i32 @m48t86_readb(%struct.device* %56, i32 %57)
  %59 = call i32 @bcd2bin(i32 %58)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = load i32, i32* @M48T86_MIN, align 4
  %64 = call i32 @m48t86_readb(%struct.device* %62, i32 %63)
  %65 = call i32 @bcd2bin(i32 %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load i32, i32* @M48T86_HOUR, align 4
  %70 = call i32 @m48t86_readb(%struct.device* %68, i32 %69)
  %71 = and i32 %70, 63
  %72 = call i32 @bcd2bin(i32 %71)
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load i32, i32* @M48T86_DOM, align 4
  %77 = call i32 @m48t86_readb(%struct.device* %75, i32 %76)
  %78 = call i32 @bcd2bin(i32 %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load i32, i32* @M48T86_MONTH, align 4
  %83 = call i32 @m48t86_readb(%struct.device* %81, i32 %82)
  %84 = call i32 @bcd2bin(i32 %83)
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = load i32, i32* @M48T86_YEAR, align 4
  %90 = call i32 @m48t86_readb(%struct.device* %88, i32 %89)
  %91 = call i32 @bcd2bin(i32 %90)
  %92 = add nsw i32 %91, 100
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = load i32, i32* @M48T86_DOW, align 4
  %97 = call i32 @m48t86_readb(%struct.device* %95, i32 %96)
  %98 = call i32 @bcd2bin(i32 %97)
  %99 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %55, %16
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @M48T86_B_H24, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = load i32, i32* @M48T86_HOUR, align 4
  %111 = call i32 @m48t86_readb(%struct.device* %109, i32 %110)
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 12
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %108
  br label %120

120:                                              ; preds = %119, %101
  ret i32 0
}

declare dso_local i32 @m48t86_readb(%struct.device*, i32) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
