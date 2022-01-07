; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32 (%struct.device*, i32, i32, i32)*, i32 (%struct.device*, i32, i32*, i32)* }

@ADE7854_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ade7854_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_reset(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ade7854_state*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ade7854_state* %9, %struct.ade7854_state** %4, align 8
  %10 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %11 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %10, i32 0, i32 1
  %12 = load i32 (%struct.device*, i32, i32*, i32)*, i32 (%struct.device*, i32, i32*, i32)** %11, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = load i32, i32* @ADE7854_CONFIG, align 4
  %15 = call i32 %12(%struct.device* %13, i32 %14, i32* %5, i32 16)
  %16 = call i32 @BIT(i32 7)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ade7854_state*, %struct.ade7854_state** %4, align 8
  %20 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %19, i32 0, i32 0
  %21 = load i32 (%struct.device*, i32, i32, i32)*, i32 (%struct.device*, i32, i32, i32)** %20, align 8
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = load i32, i32* @ADE7854_CONFIG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %21(%struct.device* %22, i32 %23, i32 %24, i32 16)
  ret i32 %25
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
