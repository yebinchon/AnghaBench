; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_is_valid_rom_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_is_valid_rom_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp855x = type { i32 }

@LP855X_EEPROM_START = common dso_local global i64 0, align 8
@LP855X_EEPROM_END = common dso_local global i64 0, align 8
@LP8556_EPROM_START = common dso_local global i64 0, align 8
@LP8556_EPROM_END = common dso_local global i64 0, align 8
@LP8555_EPROM_START = common dso_local global i64 0, align 8
@LP8555_EPROM_END = common dso_local global i64 0, align 8
@LP8557_EPROM_START = common dso_local global i64 0, align 8
@LP8557_EPROM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp855x*, i64)* @lp855x_is_valid_rom_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_is_valid_rom_area(%struct.lp855x* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp855x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lp855x* %0, %struct.lp855x** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %9 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 134, label %11
    i32 133, label %11
    i32 132, label %11
    i32 131, label %11
    i32 129, label %14
    i32 130, label %17
    i32 128, label %20
  ]

11:                                               ; preds = %2, %2, %2, %2
  %12 = load i64, i64* @LP855X_EEPROM_START, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @LP855X_EEPROM_END, align 8
  store i64 %13, i64* %7, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load i64, i64* @LP8556_EPROM_START, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @LP8556_EPROM_END, align 8
  store i64 %16, i64* %7, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i64, i64* @LP8555_EPROM_START, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @LP8555_EPROM_END, align 8
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i64, i64* @LP8557_EPROM_START, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* @LP8557_EPROM_END, align 8
  store i64 %22, i64* %7, align 8
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

24:                                               ; preds = %20, %17, %14, %11
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
