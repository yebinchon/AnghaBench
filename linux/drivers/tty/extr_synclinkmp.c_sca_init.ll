; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_sca_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_sca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PABR0 = common dso_local global i32 0, align 4
@PABR1 = common dso_local global i32 0, align 4
@WCRL = common dso_local global i32 0, align 4
@WCRM = common dso_local global i32 0, align 4
@WCRH = common dso_local global i32 0, align 4
@DPCR = common dso_local global i32 0, align 4
@dma_priority = common dso_local global i32 0, align 4
@DMER = common dso_local global i32 0, align 4
@IER0 = common dso_local global i32 0, align 4
@IER1 = common dso_local global i32 0, align 4
@IER2 = common dso_local global i32 0, align 4
@ITCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sca_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @PABR0, align 4
  %5 = call i32 @write_reg(i32* %3, i32 %4, i32 0)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @PABR1, align 4
  %8 = call i32 @write_reg(i32* %6, i32 %7, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @WCRL, align 4
  %11 = call i32 @write_reg(i32* %9, i32 %10, i32 0)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @WCRM, align 4
  %14 = call i32 @write_reg(i32* %12, i32 %13, i32 0)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @WCRH, align 4
  %17 = call i32 @write_reg(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @DPCR, align 4
  %20 = load i32, i32* @dma_priority, align 4
  %21 = call i32 @write_reg(i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @DMER, align 4
  %24 = call i32 @write_reg(i32* %22, i32 %23, i32 128)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @IER0, align 4
  %27 = call i32 @write_reg(i32* %25, i32 %26, i32 255)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @IER1, align 4
  %30 = call i32 @write_reg(i32* %28, i32 %29, i32 255)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @IER2, align 4
  %33 = call i32 @write_reg(i32* %31, i32 %32, i32 240)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @ITCR, align 4
  %36 = call i32 @write_reg(i32* %34, i32 %35, i32 0)
  ret i32 1
}

declare dso_local i32 @write_reg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
