; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i64, i8*, i8*, i8*, i8*, i8* }
%struct.sh_rtc = type { i32, i64 }

@RSECAR = common dso_local global i32 0, align 4
@RMINAR = common dso_local global i32 0, align 4
@RHRAR = common dso_local global i32 0, align 4
@RWKAR = common dso_local global i32 0, align 4
@RDAYAR = common dso_local global i32 0, align 4
@RMONAR = common dso_local global i32 0, align 4
@RCR1 = common dso_local global i64 0, align 8
@RCR1_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sh_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.sh_rtc*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.sh_rtc* %8, %struct.sh_rtc** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store %struct.rtc_time* %10, %struct.rtc_time** %6, align 8
  %11 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %15 = load i32, i32* @RSECAR, align 4
  %16 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %14, i32 %15)
  %17 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %20 = load i32, i32* @RMINAR, align 4
  %21 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %19, i32 %20)
  %22 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %25 = load i32, i32* @RHRAR, align 4
  %26 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %24, i32 %25)
  %27 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %30 = load i32, i32* @RWKAR, align 4
  %31 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %29, i32 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %35 = load i32, i32* @RDAYAR, align 4
  %36 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %34, i32 %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %40 = load i32, i32* @RMONAR, align 4
  %41 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %2
  %50 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %49, %2
  %55 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RCR1, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readb(i64 %59)
  %61 = load i32, i32* @RCR1_AIE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %69 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  ret i32 0
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @sh_rtc_read_alarm_value(%struct.sh_rtc*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
