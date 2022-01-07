; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_read_status_xo_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_read_status_xo_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpios = common dso_local global i32* null, align 8
@OLPC_DCON_STAT0 = common dso_local global i64 0, align 8
@OLPC_DCON_STAT1 = common dso_local global i64 0, align 8
@OLPC_GPIO_DCON_IRQ = common dso_local global i32 0, align 4
@GPIO_NEGATIVE_EDGE_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dcon_read_status_xo_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_read_status_xo_1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** @gpios, align 8
  %4 = load i64, i64* @OLPC_DCON_STAT0, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @gpiod_get_value(i32 %6)
  %8 = load i32*, i32** %2, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** @gpios, align 8
  %10 = load i64, i64* @OLPC_DCON_STAT1, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpiod_get_value(i32 %12)
  %14 = shl i32 %13, 1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %19 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %20 = call i32 @cs5535_gpio_set(i32 %18, i32 %19)
  ret i32 0
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
