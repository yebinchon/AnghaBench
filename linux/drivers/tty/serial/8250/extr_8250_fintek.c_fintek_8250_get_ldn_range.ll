; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_get_ldn_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_get_ldn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_8250 = type { i32 }

@F81866_LDN_LOW = common dso_local global i32 0, align 4
@F81866_LDN_HIGH = common dso_local global i32 0, align 4
@F81216_LDN_LOW = common dso_local global i32 0, align 4
@F81216_LDN_HIGH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fintek_8250*, i32*, i32*)* @fintek_8250_get_ldn_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_8250_get_ldn_range(%struct.fintek_8250* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fintek_8250*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.fintek_8250* %0, %struct.fintek_8250** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.fintek_8250*, %struct.fintek_8250** %5, align 8
  %9 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %11
    i32 131, label %16
    i32 130, label %16
    i32 132, label %16
  ]

11:                                               ; preds = %3, %3
  %12 = load i32, i32* @F81866_LDN_LOW, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @F81866_LDN_HIGH, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %24

16:                                               ; preds = %3, %3, %3
  %17 = load i32, i32* @F81216_LDN_LOW, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @F81216_LDN_HIGH, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %16, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
