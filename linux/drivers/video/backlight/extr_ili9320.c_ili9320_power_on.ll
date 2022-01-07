; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { i32, i32 }

@ILI9320_DISPLAY1_BASEE = common dso_local global i32 0, align 4
@ILI9320_DISPLAY1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9320*)* @ili9320_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9320_power_on(%struct.ili9320* %0) #0 {
  %2 = alloca %struct.ili9320*, align 8
  store %struct.ili9320* %0, %struct.ili9320** %2, align 8
  %3 = load %struct.ili9320*, %struct.ili9320** %2, align 8
  %4 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.ili9320*, %struct.ili9320** %2, align 8
  %9 = call i32 @ili9320_init_chip(%struct.ili9320* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = call i32 @ILI9320_DISPLAY1_D(i32 3)
  %12 = load i32, i32* @ILI9320_DISPLAY1_BASEE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ili9320*, %struct.ili9320** %2, align 8
  %15 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ili9320*, %struct.ili9320** %2, align 8
  %19 = load i32, i32* @ILI9320_DISPLAY1, align 4
  %20 = load %struct.ili9320*, %struct.ili9320** %2, align 8
  %21 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ili9320_write(%struct.ili9320* %18, i32 %19, i32 %22)
  ret i32 0
}

declare dso_local i32 @ili9320_init_chip(%struct.ili9320*) #1

declare dso_local i32 @ILI9320_DISPLAY1_D(i32) #1

declare dso_local i32 @ili9320_write(%struct.ili9320*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
