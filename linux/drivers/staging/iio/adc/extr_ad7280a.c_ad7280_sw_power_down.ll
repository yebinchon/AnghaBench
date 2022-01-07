; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_sw_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_sw_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32 }

@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_CONTROL_HB = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_PWRDN_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ad7280_sw_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7280_sw_power_down(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ad7280_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ad7280_state*
  store %struct.ad7280_state* %5, %struct.ad7280_state** %3, align 8
  %6 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %7 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %8 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %9 = load i32, i32* @AD7280A_CTRL_HB_PWRDN_SW, align 4
  %10 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %9, %12
  %14 = call i32 @ad7280_write(%struct.ad7280_state* %6, i32 %7, i32 %8, i32 1, i32 %13)
  ret void
}

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
