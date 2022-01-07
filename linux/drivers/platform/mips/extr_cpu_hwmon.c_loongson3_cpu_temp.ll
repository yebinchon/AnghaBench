; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mips/extr_cpu_hwmon.c_loongson3_cpu_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mips/extr_cpu_hwmon.c_loongson3_cpu_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRID_REV_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loongson3_cpu_temp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @LOONGSON_CHIPTEMP(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @read_c0_prid()
  %8 = load i32, i32* @PRID_REV_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %26 [
    i32 134, label %11
    i32 129, label %15
    i32 128, label %15
    i32 133, label %15
    i32 132, label %15
    i32 131, label %20
    i32 130, label %20
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %1, %1, %1, %1
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = sub nsw i32 %18, 100
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %1, %1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65535
  %23 = mul nsw i32 %22, 731
  %24 = sdiv i32 %23, 16384
  %25 = sub nsw i32 %24, 273
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %1, %20, %15, %11
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 1000
  ret i32 %28
}

declare dso_local i32 @LOONGSON_CHIPTEMP(i32) #1

declare dso_local i32 @read_c0_prid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
