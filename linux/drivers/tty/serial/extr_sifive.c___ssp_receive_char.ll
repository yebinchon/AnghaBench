; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_receive_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_receive_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { i32 }

@SIFIVE_SERIAL_RXDATA_OFFS = common dso_local global i32 0, align 4
@SIFIVE_SERIAL_RXDATA_EMPTY_MASK = common dso_local global i8 0, align 1
@SIFIVE_SERIAL_RXDATA_EMPTY_SHIFT = common dso_local global i8 0, align 1
@SIFIVE_SERIAL_RXDATA_DATA_MASK = common dso_local global i8 0, align 1
@SIFIVE_SERIAL_RXDATA_DATA_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.sifive_serial_port*, i8*)* @__ssp_receive_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @__ssp_receive_char(%struct.sifive_serial_port* %0, i8* %1) #0 {
  %3 = alloca %struct.sifive_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %8 = load i32, i32* @SIFIVE_SERIAL_RXDATA_OFFS, align 4
  %9 = call signext i8 @__ssp_readl(%struct.sifive_serial_port* %7, i32 %8)
  store i8 %9, i8* %5, align 1
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @WARN_ON(i32 1)
  br label %25

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @SIFIVE_SERIAL_RXDATA_EMPTY_MASK, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i8, i8* @SIFIVE_SERIAL_RXDATA_EMPTY_SHIFT, align 1
  %21 = sext i8 %20 to i32
  %22 = ashr i32 %19, %21
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  store i8 %23, i8* %24, align 1
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @SIFIVE_SERIAL_RXDATA_DATA_MASK, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = load i8, i8* @SIFIVE_SERIAL_RXDATA_DATA_SHIFT, align 1
  %32 = sext i8 %31 to i32
  %33 = ashr i32 %30, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  %35 = load i8, i8* %6, align 1
  ret i8 %35
}

declare dso_local signext i8 @__ssp_readl(%struct.sifive_serial_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
