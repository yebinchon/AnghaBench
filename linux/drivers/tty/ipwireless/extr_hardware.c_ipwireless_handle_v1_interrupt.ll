; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_handle_v1_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_handle_v1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i32, i64, i32, i32 }

@IOIR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IR_TXINTR = common dso_local global i16 0, align 2
@IR_RXINTR = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipw_hardware*)* @ipwireless_handle_v1_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipwireless_handle_v1_interrupt(i32 %0, %struct.ipw_hardware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_hardware*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ipw_hardware* %1, %struct.ipw_hardware** %5, align 8
  %9 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %10 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IOIR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call zeroext i16 @inw(i64 %13)
  store i16 %14, i16* %6, align 2
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  store i16 0, i16* %7, align 2
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @IR_TXINTR, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load i16, i16* @IR_TXINTR, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %7, align 2
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %39 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %38, i32 0, i32 3
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %43 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %45 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %44, i32 0, i32 3
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %31, %24
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @IR_RXINTR, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  %56 = load i16, i16* @IR_RXINTR, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %7, align 2
  %62 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %63 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %62, i32 0, i32 3
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %67 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %71 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %70, i32 0, i32 3
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %55, %48
  %75 = load i16, i16* %7, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i16, i16* %7, align 2
  %80 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %81 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IOIR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outw(i16 zeroext %79, i64 %84)
  %86 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %87 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %86, i32 0, i32 1
  %88 = call i32 @tasklet_schedule(i32* %87)
  br label %89

89:                                               ; preds = %78, %74
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %20
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* @IRQ_NONE, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %89, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
