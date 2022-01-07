; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5933_state = type { i8, i32 }

@AD5933_REG_CONTROL_HB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5933_state*, i8)* @ad5933_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_cmd(%struct.ad5933_state* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ad5933_state*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.ad5933_state* %0, %struct.ad5933_state** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %5, align 1
  %14 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %15 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AD5933_REG_CONTROL_HB, align 4
  %18 = call i32 @ad5933_i2c_write(i32 %16, i32 %17, i32 1, i8* %5)
  ret i32 %18
}

declare dso_local i32 @ad5933_i2c_write(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
