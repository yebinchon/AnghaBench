; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_ejtag_fdc_tty = type { i32, i32 }
%struct.timer_list = type { i32 }

@poll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FDC_TTY_POLL = common dso_local global i64 0, align 8
@priv = common dso_local global %struct.mips_ejtag_fdc_tty* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mips_ejtag_fdc_tty_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_ejtag_fdc_tty_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %5 = ptrtoint %struct.mips_ejtag_fdc_tty* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @poll_timer, align 4
  %8 = call %struct.mips_ejtag_fdc_tty* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.mips_ejtag_fdc_tty* %8, %struct.mips_ejtag_fdc_tty** %3, align 8
  %9 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %10 = call i32 @mips_ejtag_fdc_handle(%struct.mips_ejtag_fdc_tty* %9)
  %11 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %12 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %17 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @FDC_TTY_POLL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @mod_timer(i32* %17, i64 %20)
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.mips_ejtag_fdc_tty* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mips_ejtag_fdc_handle(%struct.mips_ejtag_fdc_tty*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
