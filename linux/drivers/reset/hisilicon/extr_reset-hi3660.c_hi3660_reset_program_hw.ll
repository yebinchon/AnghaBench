; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_reset-hi3660.c_hi3660_reset_program_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_reset-hi3660.c_hi3660_reset_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.hi3660_reset_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @hi3660_reset_program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_reset_program_hw(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reset_controller_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hi3660_reset_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %12 = call %struct.hi3660_reset_controller* @to_hi3660_reset_controller(%struct.reset_controller_dev* %11)
  store %struct.hi3660_reset_controller* %12, %struct.hi3660_reset_controller** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 31
  %18 = call i32 @BIT(i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %8, align 8
  %23 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.hi3660_reset_controller*, %struct.hi3660_reset_controller** %8, align 8
  %30 = getelementptr inbounds %struct.hi3660_reset_controller, %struct.hi3660_reset_controller* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @regmap_write(i32 %31, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.hi3660_reset_controller* @to_hi3660_reset_controller(%struct.reset_controller_dev*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
