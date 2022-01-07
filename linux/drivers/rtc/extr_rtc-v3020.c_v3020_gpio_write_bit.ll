; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_write_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3020 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V3020_IO = common dso_local global i64 0, align 8
@V3020_CS = common dso_local global i64 0, align 8
@V3020_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3020*, i8)* @v3020_gpio_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3020_gpio_write_bit(%struct.v3020* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.v3020*, align 8
  %4 = alloca i8, align 1
  store %struct.v3020* %0, %struct.v3020** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.v3020*, %struct.v3020** %3, align 8
  %6 = getelementptr inbounds %struct.v3020, %struct.v3020* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @V3020_IO, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8, i8* %4, align 1
  %13 = call i32 @gpio_direction_output(i32 %11, i8 zeroext %12)
  %14 = load %struct.v3020*, %struct.v3020** %3, align 8
  %15 = getelementptr inbounds %struct.v3020, %struct.v3020* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @V3020_CS, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 0)
  %22 = load %struct.v3020*, %struct.v3020** %3, align 8
  %23 = getelementptr inbounds %struct.v3020, %struct.v3020* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @V3020_WR, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_set_value(i32 %28, i32 0)
  %30 = call i32 @udelay(i32 1)
  %31 = load %struct.v3020*, %struct.v3020** %3, align 8
  %32 = getelementptr inbounds %struct.v3020, %struct.v3020* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @V3020_WR, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpio_set_value(i32 %37, i32 1)
  %39 = load %struct.v3020*, %struct.v3020** %3, align 8
  %40 = getelementptr inbounds %struct.v3020, %struct.v3020* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @V3020_CS, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpio_set_value(i32 %45, i32 1)
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i8 zeroext) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
