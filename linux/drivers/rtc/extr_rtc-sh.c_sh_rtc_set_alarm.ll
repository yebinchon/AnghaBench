; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.sh_rtc = type { i32, i64 }

@RCR1 = common dso_local global i64 0, align 8
@RCR1_AF = common dso_local global i32 0, align 4
@RCR1_AIE = common dso_local global i32 0, align 4
@RSECAR = common dso_local global i32 0, align 4
@RMINAR = common dso_local global i32 0, align 4
@RHRAR = common dso_local global i32 0, align 4
@RWKAR = common dso_local global i32 0, align 4
@RDAYAR = common dso_local global i32 0, align 4
@RMONAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sh_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.sh_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.sh_rtc* %10, %struct.sh_rtc** %5, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  store %struct.rtc_time* %12, %struct.rtc_time** %7, align 8
  %13 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RCR1, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readb(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RCR1_AF, align 4
  %23 = load i32, i32* @RCR1_AIE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RCR1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  %35 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RSECAR, align 4
  %40 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %35, i32 %38, i32 %39)
  %41 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RMINAR, align 4
  %46 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %41, i32 %44, i32 %45)
  %47 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RHRAR, align 4
  %52 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %47, i32 %50, i32 %51)
  %53 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %54 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RWKAR, align 4
  %58 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %53, i32 %56, i32 %57)
  %59 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RDAYAR, align 4
  %64 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %59, i32 %62, i32 %63)
  %65 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %2
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %2
  %74 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @RMONAR, align 4
  %77 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %74, i32 %75, i32 %76)
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32, i32* @RCR1_AIE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %88 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RCR1, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writeb(i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %82, %73
  %94 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %95 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_irq(i32* %95)
  ret i32 0
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @sh_rtc_write_alarm_value(%struct.sh_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
