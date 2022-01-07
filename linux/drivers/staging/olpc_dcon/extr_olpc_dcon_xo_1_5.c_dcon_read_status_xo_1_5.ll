; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_read_status_xo_1_5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_read_status_xo_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpios = common dso_local global i32* null, align 8
@OLPC_DCON_STAT0 = common dso_local global i64 0, align 8
@OLPC_DCON_STAT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dcon_read_status_xo_1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_read_status_xo_1_5(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 (...) @dcon_was_irq()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32*, i32** @gpios, align 8
  %9 = load i64, i64* @OLPC_DCON_STAT0, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpiod_get_value(i32 %11)
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** @gpios, align 8
  %15 = load i64, i64* @OLPC_DCON_STAT1, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpiod_get_value(i32 %17)
  %19 = shl i32 %18, 1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = call i32 (...) @dcon_clear_irq()
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %7, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @dcon_was_irq(...) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @dcon_clear_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
