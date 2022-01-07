; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_set_stop_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_set_stop_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { i32 }

@SIFIVE_SERIAL_TXCTRL_OFFS = common dso_local global i32 0, align 4
@SIFIVE_SERIAL_TXCTRL_NSTOP_MASK = common dso_local global i8 0, align 1
@SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_serial_port*, i8)* @__ssp_set_stop_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ssp_set_stop_bits(%struct.sifive_serial_port* %0, i8 signext %1) #0 {
  %3 = alloca %struct.sifive_serial_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = call i32 @WARN_ON(i32 1)
  br label %40

15:                                               ; preds = %9
  %16 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %17 = load i32, i32* @SIFIVE_SERIAL_TXCTRL_OFFS, align 4
  %18 = call signext i8 @__ssp_readl(%struct.sifive_serial_port* %16, i32 %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* @SIFIVE_SERIAL_TXCTRL_NSTOP_MASK, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 1
  %29 = load i8, i8* @SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT, align 1
  %30 = sext i8 %29 to i32
  %31 = shl i32 %28, %30
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  %36 = load i8, i8* %5, align 1
  %37 = load i32, i32* @SIFIVE_SERIAL_TXCTRL_OFFS, align 4
  %38 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %39 = call i32 @__ssp_writel(i8 signext %36, i32 %37, %struct.sifive_serial_port* %38)
  br label %40

40:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local signext i8 @__ssp_readl(%struct.sifive_serial_port*, i32) #1

declare dso_local i32 @__ssp_writel(i8 signext, i32, %struct.sifive_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
