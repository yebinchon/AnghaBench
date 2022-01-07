; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_max_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_max_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_8250 = type { i32 }

@FIFO_CTRL = common dso_local global i32 0, align 4
@FIFO_MODE_MASK = common dso_local global i32 0, align 4
@RXFTHR_MODE_MASK = common dso_local global i32 0, align 4
@FIFO_MODE_128 = common dso_local global i32 0, align 4
@RXFTHR_MODE_4X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fintek_8250*)* @fintek_8250_set_max_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_8250_set_max_fifo(%struct.fintek_8250* %0) #0 {
  %2 = alloca %struct.fintek_8250*, align 8
  store %struct.fintek_8250* %0, %struct.fintek_8250** %2, align 8
  %3 = load %struct.fintek_8250*, %struct.fintek_8250** %2, align 8
  %4 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 128, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.fintek_8250*, %struct.fintek_8250** %2, align 8
  %8 = load i32, i32* @FIFO_CTRL, align 4
  %9 = load i32, i32* @FIFO_MODE_MASK, align 4
  %10 = load i32, i32* @RXFTHR_MODE_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FIFO_MODE_128, align 4
  %13 = load i32, i32* @RXFTHR_MODE_4X, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %7, i32 %8, i32 %11, i32 %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @sio_write_mask_reg(%struct.fintek_8250*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
