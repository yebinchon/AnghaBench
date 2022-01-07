; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2780_device_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2780_device_info*, i32*, i32)* @ds2780_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_read16(%struct.ds2780_device_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2780_device_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.ds2780_device_info* %0, %struct.ds2780_device_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ds2780_battery_io(%struct.ds2780_device_info* %10, i32* %11, i32 %12, i32 8, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %26

18:                                               ; preds = %3
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %21, %23
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ds2780_battery_io(%struct.ds2780_device_info*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
