; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5592.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5592.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT5592 = common dso_local global i32 0, align 4
@REV_RT5592C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_5592 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_5592(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %3, i32 30)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %5, i32 1, i32 63)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 3, i32 8)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 5, i32 16)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 6, i32 228)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %13, i32 7, i32 0)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 14, i32 0)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %17, i32 15, i32 0)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 16, i32 0)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %21, i32 18, i32 3)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %23, i32 19, i32 77)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 20, i32 16)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 21, i32 141)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %29, i32 26, i32 130)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 28, i32 0)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 29, i32 16)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 33, i32 192)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 34, i32 7)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 35, i32 18)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 47, i32 12)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 53, i32 34)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 63, i32 7)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 2, i32 128)
  %49 = call i32 @msleep(i32 1)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = load i32, i32* @RT5592, align 4
  %54 = load i32, i32* @REV_RT5592C, align 4
  %55 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %1
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %58, i32 103, i32 192)
  br label %60

60:                                               ; preds = %57, %1
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev* %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = load i32, i32* @RT5592, align 4
  %65 = load i32, i32* @REV_RT5592C, align 4
  %66 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %69, i32 27, i32 3)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %72)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
