; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_irq_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_irq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@TIMER2 = common dso_local global i8 0, align 1
@TIMER0 = common dso_local global i8 0, align 1
@DiagStatus_IrqFailure = common dso_local global i32 0, align 4
@IER2 = common dso_local global i8 0, align 1
@BIT6 = common dso_local global i64 0, align 8
@BIT4 = common dso_local global i64 0, align 8
@TEPR = common dso_local global i64 0, align 8
@TCONR = common dso_local global i64 0, align 8
@TMCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @irq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_test(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8, i8* @TIMER2, align 1
  %13 = zext i8 %12 to i32
  br label %17

14:                                               ; preds = %1
  %15 = load i8, i8* @TIMER0, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @reset_port(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @DiagStatus_IrqFailure, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = load i8, i8* @IER2, align 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i64, i64* @BIT6, align 8
  br label %42

40:                                               ; preds = %17
  %41 = load i64, i64* @BIT4, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = trunc i64 %43 to i8
  %45 = zext i8 %44 to i32
  %46 = call i32 @write_reg(%struct.TYPE_6__* %31, i8 zeroext %32, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* @TEPR, align 8
  %51 = add nsw i64 %49, %50
  %52 = trunc i64 %51 to i8
  %53 = call i32 @write_reg(%struct.TYPE_6__* %47, i8 zeroext %52, i32 0)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i64
  %57 = load i64, i64* @TCONR, align 8
  %58 = add nsw i64 %56, %57
  %59 = trunc i64 %58 to i8
  %60 = call i32 @write_reg16(%struct.TYPE_6__* %54, i8 zeroext %59, i32 1)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i64
  %64 = load i64, i64* @TMCS, align 8
  %65 = add nsw i64 %63, %64
  %66 = trunc i64 %65 to i8
  %67 = call i32 @write_reg(%struct.TYPE_6__* %61, i8 zeroext %66, i32 80)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i64 100, i64* %3, align 8
  br label %72

72:                                               ; preds = %84, %42
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %3, align 8
  %75 = icmp ne i64 %73, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %76, %72
  %83 = phi i1 [ false, %72 ], [ %81, %76 ]
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = call i32 @msleep_interruptible(i32 10)
  br label %72

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = call i32 @reset_port(%struct.TYPE_6__* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reset_port(%struct.TYPE_6__*) #1

declare dso_local i32 @write_reg(%struct.TYPE_6__*, i8 zeroext, i32) #1

declare dso_local i32 @write_reg16(%struct.TYPE_6__*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
