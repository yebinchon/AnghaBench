; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i8, i8, i8, i8 }

@EINVAL = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@IPCMSG_VRTC = common dso_local global i32 0, align 4
@IPC_CMD_VRTC_SETTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mrst_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrst_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %8, align 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 4
  store i8 %24, i8* %9, align 1
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 3
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %10, align 1
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 4
  %30 = load i8, i8* %29, align 2
  store i8 %30, i8* %11, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 5
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %12, align 1
  %34 = load i32, i32* %13, align 4
  %35 = icmp ult i32 %34, 72
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %13, align 4
  %38 = icmp ugt i32 %37, 172
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = sub i32 %43, 72
  store i32 %44, i32* %13, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %45)
  %47 = load i32, i32* %13, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* @RTC_YEAR, align 4
  %50 = call i32 @vrtc_cmos_write(i8 zeroext %48, i32 %49)
  %51 = load i8, i8* %8, align 1
  %52 = load i32, i32* @RTC_MONTH, align 4
  %53 = call i32 @vrtc_cmos_write(i8 zeroext %51, i32 %52)
  %54 = load i8, i8* %9, align 1
  %55 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %56 = call i32 @vrtc_cmos_write(i8 zeroext %54, i32 %55)
  %57 = load i8, i8* %10, align 1
  %58 = load i32, i32* @RTC_HOURS, align 4
  %59 = call i32 @vrtc_cmos_write(i8 zeroext %57, i32 %58)
  %60 = load i8, i8* %11, align 1
  %61 = load i32, i32* @RTC_MINUTES, align 4
  %62 = call i32 @vrtc_cmos_write(i8 zeroext %60, i32 %61)
  %63 = load i8, i8* %12, align 1
  %64 = load i32, i32* @RTC_SECONDS, align 4
  %65 = call i32 @vrtc_cmos_write(i8 zeroext %63, i32 %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %66)
  %68 = load i32, i32* @IPCMSG_VRTC, align 4
  %69 = load i32, i32* @IPC_CMD_VRTC_SETTIME, align 4
  %70 = call i32 @intel_scu_ipc_simple_command(i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %42, %39
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vrtc_cmos_write(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @intel_scu_ipc_simple_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
