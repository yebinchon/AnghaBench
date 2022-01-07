; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_read_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_read_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3020 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V3020_IO = common dso_local global i64 0, align 8
@V3020_CS = common dso_local global i64 0, align 8
@V3020_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.v3020*)* @v3020_gpio_read_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @v3020_gpio_read_bit(%struct.v3020* %0) #0 {
  %2 = alloca %struct.v3020*, align 8
  %3 = alloca i32, align 4
  store %struct.v3020* %0, %struct.v3020** %2, align 8
  %4 = load %struct.v3020*, %struct.v3020** %2, align 8
  %5 = getelementptr inbounds %struct.v3020, %struct.v3020* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @V3020_IO, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpio_direction_input(i32 %10)
  %12 = load %struct.v3020*, %struct.v3020** %2, align 8
  %13 = getelementptr inbounds %struct.v3020, %struct.v3020* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @V3020_CS, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  %20 = load %struct.v3020*, %struct.v3020** %2, align 8
  %21 = getelementptr inbounds %struct.v3020, %struct.v3020* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @V3020_RD, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_set_value(i32 %26, i32 0)
  %28 = call i32 @udelay(i32 1)
  %29 = load %struct.v3020*, %struct.v3020** %2, align 8
  %30 = getelementptr inbounds %struct.v3020, %struct.v3020* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @V3020_IO, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpio_get_value(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = call i32 @udelay(i32 1)
  %42 = load %struct.v3020*, %struct.v3020** %2, align 8
  %43 = getelementptr inbounds %struct.v3020, %struct.v3020* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @V3020_RD, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpio_set_value(i32 %48, i32 1)
  %50 = load %struct.v3020*, %struct.v3020** %2, align 8
  %51 = getelementptr inbounds %struct.v3020, %struct.v3020* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* @V3020_CS, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gpio_set_value(i32 %56, i32 1)
  %58 = load i32, i32* %3, align 4
  %59 = trunc i32 %58 to i8
  ret i8 %59
}

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
