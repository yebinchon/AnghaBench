; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { i32 }
%struct.ad7192_state = type { i32, i32 }

@AD7192_MODE_SEL_MASK = common dso_local global i32 0, align 4
@AD7192_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad_sigma_delta*, i32)* @ad7192_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_set_mode(%struct.ad_sigma_delta* %0, i32 %1) #0 {
  %3 = alloca %struct.ad_sigma_delta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7192_state*, align 8
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %7 = call %struct.ad7192_state* @ad_sigma_delta_to_ad7192(%struct.ad_sigma_delta* %6)
  store %struct.ad7192_state* %7, %struct.ad7192_state** %5, align 8
  %8 = load i32, i32* @AD7192_MODE_SEL_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.ad7192_state*, %struct.ad7192_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @AD7192_MODE_SEL(i32 %14)
  %16 = load %struct.ad7192_state*, %struct.ad7192_state** %5, align 8
  %17 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ad7192_state*, %struct.ad7192_state** %5, align 8
  %21 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %20, i32 0, i32 1
  %22 = load i32, i32* @AD7192_REG_MODE, align 4
  %23 = load %struct.ad7192_state*, %struct.ad7192_state** %5, align 8
  %24 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ad_sd_write_reg(i32* %21, i32 %22, i32 3, i32 %25)
  ret i32 %26
}

declare dso_local %struct.ad7192_state* @ad_sigma_delta_to_ad7192(%struct.ad_sigma_delta*) #1

declare dso_local i32 @AD7192_MODE_SEL(i32) #1

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
