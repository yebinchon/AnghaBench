; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc13xxx.c_mc13xxx_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc13xxx.c_mc13xxx_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.mc13xxx_rtc = type { i32, i32 }

@SEC_PER_DAY = common dso_local global i32 0, align 4
@MC13XXX_RTCTODA = common dso_local global i32 0, align 4
@MC13XXX_RTCTOD = common dso_local global i32 0, align 4
@MC13XXX_RTCDAY = common dso_local global i32 0, align 4
@MC13XXX_IRQ_RTCRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mc13xxx_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.mc13xxx_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.mc13xxx_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.mc13xxx_rtc* %11, %struct.mc13xxx_rtc** %5, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %12)
  %14 = load i32, i32* @SEC_PER_DAY, align 4
  %15 = call i32 @div_s64_rem(i32 %13, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mc13xxx_lock(i32 %18)
  %20 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MC13XXX_RTCTODA, align 4
  %24 = call i32 @mc13xxx_reg_read(i32 %22, i32 %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %114

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SEC_PER_DAY, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %35 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MC13XXX_RTCTODA, align 4
  %38 = call i32 @mc13xxx_reg_write(i32 %36, i32 %37, i32 131071)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %114

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %46 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MC13XXX_RTCTOD, align 4
  %49 = call i32 @mc13xxx_reg_write(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %114

54:                                               ; preds = %44
  %55 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MC13XXX_RTCDAY, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mc13xxx_reg_write(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %114

65:                                               ; preds = %54
  %66 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %67 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MC13XXX_RTCTOD, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @mc13xxx_reg_write(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %114

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SEC_PER_DAY, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %82 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MC13XXX_RTCTODA, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @mc13xxx_reg_write(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %114

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %94 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %92
  %98 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %99 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MC13XXX_IRQ_RTCRST, align 4
  %102 = call i32 @mc13xxx_irq_ack(i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %114

107:                                              ; preds = %97
  %108 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %109 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MC13XXX_IRQ_RTCRST, align 4
  %112 = call i32 @mc13xxx_irq_unmask(i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %107, %92
  br label %114

114:                                              ; preds = %113, %106, %90, %75, %64, %53, %42, %28
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %120 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %5, align 8
  %122 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mc13xxx_unlock(i32 %123)
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local %struct.mc13xxx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @div_s64_rem(i32, i32, i32*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @mc13xxx_lock(i32) #1

declare dso_local i32 @mc13xxx_reg_read(i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mc13xxx_reg_write(i32, i32, i32) #1

declare dso_local i32 @mc13xxx_irq_ack(i32, i32) #1

declare dso_local i32 @mc13xxx_irq_unmask(i32, i32) #1

declare dso_local i32 @mc13xxx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
