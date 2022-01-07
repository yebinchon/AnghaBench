; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_set_clock_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_set_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_CLK_DIVIDE_0 = common dso_local global i64 0, align 8
@SD_CLK_DIVIDE_128 = common dso_local global i64 0, align 8
@SD_CLK_DIVIDE_256 = common dso_local global i64 0, align 8
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64)* @sd_set_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_clock_divider(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 96, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @SD_CLK_DIVIDE_0, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SD_CLK_DIVIDE_128, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 64, i64* %8, align 8
  br label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SD_CLK_DIVIDE_256, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64 32, i64* %8, align 8
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %27 = load i32, i32* @REG_SD_CFG1, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @rtsx_write_register(%struct.rtsx_chip* %26, i32 %27, i64 %28, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
