; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_irq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_irq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_8250 = type { i32, i32 }

@LDN = common dso_local global i32 0, align 4
@F81866_FIFO_CTRL = common dso_local global i32 0, align 4
@F81866_IRQ_MODE1 = common dso_local global i32 0, align 4
@F81866_IRQ_MODE = common dso_local global i32 0, align 4
@F81866_IRQ_SHARE = common dso_local global i32 0, align 4
@F81866_IRQ_MODE0 = common dso_local global i32 0, align 4
@FINTEK_IRQ_MODE = common dso_local global i32 0, align 4
@IRQ_SHARE = common dso_local global i32 0, align 4
@IRQ_MODE_MASK = common dso_local global i32 0, align 4
@IRQ_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_EDGE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fintek_8250*, i32)* @fintek_8250_set_irq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_8250_set_irq_mode(%struct.fintek_8250* %0, i32 %1) #0 {
  %3 = alloca %struct.fintek_8250*, align 8
  %4 = alloca i32, align 4
  store %struct.fintek_8250* %0, %struct.fintek_8250** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %6 = load i32, i32* @LDN, align 4
  %7 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %8 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sio_write_reg(%struct.fintek_8250* %5, i32 %6, i32 %9)
  %11 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %12 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %54 [
    i32 128, label %14
    i32 129, label %19
    i32 131, label %36
    i32 130, label %36
    i32 132, label %36
  ]

14:                                               ; preds = %2
  %15 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %16 = load i32, i32* @F81866_FIFO_CTRL, align 4
  %17 = load i32, i32* @F81866_IRQ_MODE1, align 4
  %18 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %2, %14
  %20 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %21 = load i32, i32* @F81866_IRQ_MODE, align 4
  %22 = load i32, i32* @F81866_IRQ_SHARE, align 4
  %23 = load i32, i32* @F81866_IRQ_SHARE, align 4
  %24 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %26 = load i32, i32* @F81866_IRQ_MODE, align 4
  %27 = load i32, i32* @F81866_IRQ_MODE0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @F81866_IRQ_MODE0, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  %35 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %25, i32 %26, i32 %27, i32 %34)
  br label %54

36:                                               ; preds = %2, %2, %2
  %37 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %38 = load i32, i32* @FINTEK_IRQ_MODE, align 4
  %39 = load i32, i32* @IRQ_SHARE, align 4
  %40 = load i32, i32* @IRQ_SHARE, align 4
  %41 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %43 = load i32, i32* @FINTEK_IRQ_MODE, align 4
  %44 = load i32, i32* @IRQ_MODE_MASK, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @IRQ_LEVEL_LOW, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @IRQ_EDGE_HIGH, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @sio_write_mask_reg(%struct.fintek_8250* %42, i32 %43, i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %2, %51, %33
  ret void
}

declare dso_local i32 @sio_write_reg(%struct.fintek_8250*, i32, i32) #1

declare dso_local i32 @sio_write_mask_reg(%struct.fintek_8250*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
