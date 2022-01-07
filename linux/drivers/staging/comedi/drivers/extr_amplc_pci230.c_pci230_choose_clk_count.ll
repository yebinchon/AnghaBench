; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_choose_clk_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_choose_clk_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLK_10MHZ = common dso_local global i32 0, align 4
@pci230_timebase = common dso_local global i32* null, align 8
@CLK_1KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @pci230_choose_clk_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_choose_clk_count(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CLK_10MHZ, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** @pci230_timebase, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pci230_divide_ns(i32 %11, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %19, 65536
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CLK_1KHZ, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %10
  br label %30

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %10

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @pci230_divide_ns(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
