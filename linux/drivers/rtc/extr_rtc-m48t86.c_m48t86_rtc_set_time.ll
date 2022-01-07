; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8, i8, i8, i8, i32, i32, i8 }

@M48T86_B = common dso_local global i32 0, align 4
@M48T86_B_SET = common dso_local global i8 0, align 1
@M48T86_B_H24 = common dso_local global i8 0, align 1
@M48T86_B_DM = common dso_local global i8 0, align 1
@M48T86_SEC = common dso_local global i32 0, align 4
@M48T86_MIN = common dso_local global i32 0, align 4
@M48T86_HOUR = common dso_local global i32 0, align 4
@M48T86_DOM = common dso_local global i32 0, align 4
@M48T86_MONTH = common dso_local global i32 0, align 4
@M48T86_YEAR = common dso_local global i32 0, align 4
@M48T86_DOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t86_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @M48T86_B, align 4
  %8 = call zeroext i8 @m48t86_readb(%struct.device* %6, i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* @M48T86_B_SET, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @M48T86_B_H24, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i8, i8* %5, align 1
  %20 = load i32, i32* @M48T86_B, align 4
  %21 = call i32 @m48t86_writeb(%struct.device* %18, i8 zeroext %19, i32 %20)
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @M48T86_B_DM, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  %33 = load i32, i32* @M48T86_SEC, align 4
  %34 = call i32 @m48t86_writeb(%struct.device* %29, i8 zeroext %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 1
  %39 = load i32, i32* @M48T86_MIN, align 4
  %40 = call i32 @m48t86_writeb(%struct.device* %35, i8 zeroext %38, i32 %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 2
  %45 = load i32, i32* @M48T86_HOUR, align 4
  %46 = call i32 @m48t86_writeb(%struct.device* %41, i8 zeroext %44, i32 %45)
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 1
  %51 = load i32, i32* @M48T86_DOM, align 4
  %52 = call i32 @m48t86_writeb(%struct.device* %47, i8 zeroext %50, i32 %51)
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = trunc i32 %57 to i8
  %59 = load i32, i32* @M48T86_MONTH, align 4
  %60 = call i32 @m48t86_writeb(%struct.device* %53, i8 zeroext %58, i32 %59)
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, 100
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* @M48T86_YEAR, align 4
  %68 = call i32 @m48t86_writeb(%struct.device* %61, i8 zeroext %66, i32 %67)
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 6
  %72 = load i8, i8* %71, align 4
  %73 = load i32, i32* @M48T86_DOW, align 4
  %74 = call i32 @m48t86_writeb(%struct.device* %69, i8 zeroext %72, i32 %73)
  br label %132

75:                                               ; preds = %2
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 4
  %80 = zext i8 %79 to i32
  %81 = call zeroext i8 @bin2bcd(i32 %80)
  %82 = load i32, i32* @M48T86_SEC, align 4
  %83 = call i32 @m48t86_writeb(%struct.device* %76, i8 zeroext %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = call zeroext i8 @bin2bcd(i32 %88)
  %90 = load i32, i32* @M48T86_MIN, align 4
  %91 = call i32 @m48t86_writeb(%struct.device* %84, i8 zeroext %89, i32 %90)
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 2
  %95 = load i8, i8* %94, align 2
  %96 = zext i8 %95 to i32
  %97 = call zeroext i8 @bin2bcd(i32 %96)
  %98 = load i32, i32* @M48T86_HOUR, align 4
  %99 = call i32 @m48t86_writeb(%struct.device* %92, i8 zeroext %97, i32 %98)
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = call zeroext i8 @bin2bcd(i32 %104)
  %106 = load i32, i32* @M48T86_DOM, align 4
  %107 = call i32 @m48t86_writeb(%struct.device* %100, i8 zeroext %105, i32 %106)
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  %113 = call zeroext i8 @bin2bcd(i32 %112)
  %114 = load i32, i32* @M48T86_MONTH, align 4
  %115 = call i32 @m48t86_writeb(%struct.device* %108, i8 zeroext %113, i32 %114)
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = srem i32 %119, 100
  %121 = call zeroext i8 @bin2bcd(i32 %120)
  %122 = load i32, i32* @M48T86_YEAR, align 4
  %123 = call i32 @m48t86_writeb(%struct.device* %116, i8 zeroext %121, i32 %122)
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 6
  %127 = load i8, i8* %126, align 4
  %128 = zext i8 %127 to i32
  %129 = call zeroext i8 @bin2bcd(i32 %128)
  %130 = load i32, i32* @M48T86_DOW, align 4
  %131 = call i32 @m48t86_writeb(%struct.device* %124, i8 zeroext %129, i32 %130)
  br label %132

132:                                              ; preds = %75, %28
  %133 = load i8, i8* @M48T86_B_SET, align 1
  %134 = zext i8 %133 to i32
  %135 = xor i32 %134, -1
  %136 = load i8, i8* %5, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %5, align 1
  %140 = load %struct.device*, %struct.device** %3, align 8
  %141 = load i8, i8* %5, align 1
  %142 = load i32, i32* @M48T86_B, align 4
  %143 = call i32 @m48t86_writeb(%struct.device* %140, i8 zeroext %141, i32 %142)
  ret i32 0
}

declare dso_local zeroext i8 @m48t86_readb(%struct.device*, i32) #1

declare dso_local i32 @m48t86_writeb(%struct.device*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
