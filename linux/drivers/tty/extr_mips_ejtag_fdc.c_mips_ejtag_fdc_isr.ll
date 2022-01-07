; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_ejtag_fdc_tty = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CAUSEF_FDCI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mips_ejtag_fdc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_ejtag_fdc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mips_ejtag_fdc_tty*
  store %struct.mips_ejtag_fdc_tty* %8, %struct.mips_ejtag_fdc_tty** %6, align 8
  %9 = call i64 (...) @smp_processor_id()
  %10 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %6, align 8
  %11 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = call i32 (...) @read_c0_cause()
  %18 = load i32, i32* @CAUSEF_FDCI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %6, align 8
  %25 = call i32 @mips_ejtag_fdc_handle(%struct.mips_ejtag_fdc_tty* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @mips_ejtag_fdc_handle(%struct.mips_ejtag_fdc_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
