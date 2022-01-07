; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.gsm_mux* }
%struct.gsm_mux = type { i64, i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@TX_THRESH_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @gsmld_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsmld_write_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  store %struct.gsm_mux* %7, %struct.gsm_mux** %3, align 8
  %8 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %13 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %17 = call i32 @gsm_data_kick(%struct.gsm_mux* %16)
  %18 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %19 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TX_THRESH_LO, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %25 = call i32 @gsm_dlci_data_sweep(%struct.gsm_mux* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %28 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %27, i32 0, i32 1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gsm_data_kick(%struct.gsm_mux*) #1

declare dso_local i32 @gsm_dlci_data_sweep(%struct.gsm_mux*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
