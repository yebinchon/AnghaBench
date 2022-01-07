; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32 }

@PM8607_IBAT_MEAS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, i32*)* @measure_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_current(%struct.pm860x_battery_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm860x_battery_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %10 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PM8607_IBAT_MEAS1, align 4
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %14 = call i32 @pm860x_bulk_read(i32 %11, i32 %12, i32 2, i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 255
  %29 = or i32 %24, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %7, align 2
  %31 = load i16, i16* %7, align 2
  %32 = sext i16 %31 to i32
  %33 = ashr i32 %32, 3
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
