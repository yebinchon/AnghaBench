; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_wiggle_xo_1_5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_wiggle_xo_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VX855_GPI_SCI_SMI = common dso_local global i32 0, align 4
@BIT_GPIO12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dcon_wiggle_xo_1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcon_wiggle_xo_1_5() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @set_i2c_line(i32 1, i32 1)
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = call i32 @udelay(i32 5)
  %8 = call i32 @set_i2c_line(i32 1, i32 0)
  %9 = call i32 @udelay(i32 5)
  %10 = call i32 @set_i2c_line(i32 1, i32 1)
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %3

14:                                               ; preds = %3
  %15 = call i32 @udelay(i32 5)
  %16 = load i32, i32* @VX855_GPI_SCI_SMI, align 4
  %17 = call i32 @inb(i32 %16)
  %18 = load i32, i32* @BIT_GPIO12, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VX855_GPI_SCI_SMI, align 4
  %21 = call i32 @outb(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @set_i2c_line(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
