; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_irq_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_irq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_TXIDLE = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@TDR = common dso_local global i32 0, align 4
@DiagStatus_IrqFailure = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @irq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_test(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  store %struct.tty_struct* %10, %struct.tty_struct** %5, align 8
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 921600, i32* %17, align 8
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.tty_struct* null, %struct.tty_struct** %20, align 8
  %21 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = call i32 @async_mode(%struct.slgt_info* %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %28 = load i32, i32* @IRQ_TXIDLE, align 4
  %29 = call i32 @slgt_irq_on(%struct.slgt_info* %27, i32 %28)
  %30 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %31 = load i32, i32* @TCR, align 4
  %32 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %33 = load i32, i32* @TCR, align 4
  %34 = call i32 @rd_reg16(%struct.slgt_info* %32, i32 %33)
  %35 = load i32, i32* @BIT1, align 4
  %36 = or i32 %34, %35
  %37 = trunc i32 %36 to i16
  %38 = call i32 @wr_reg16(%struct.slgt_info* %30, i32 %31, i16 zeroext %37)
  %39 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %40 = load i32, i32* @TDR, align 4
  %41 = call i32 @wr_reg16(%struct.slgt_info* %39, i32 %40, i16 zeroext 0)
  %42 = load i8*, i8** @DiagStatus_IrqFailure, align 8
  %43 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i64 100, i64* %3, align 8
  br label %51

51:                                               ; preds = %63, %1
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %3, align 8
  %54 = icmp ne i64 %52, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i1 [ false, %51 ], [ %60, %55 ]
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = call i32 @msleep_interruptible(i32 10)
  br label %51

65:                                               ; preds = %61
  %66 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %67 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %66, i32 0, i32 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %71 = call i32 @reset_port(%struct.slgt_info* %70)
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 4
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %78 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %81 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %82 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store %struct.tty_struct* %80, %struct.tty_struct** %83, align 8
  %84 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %85 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %65
  br label %91

89:                                               ; preds = %65
  %90 = load i8*, i8** @DiagStatus_IrqFailure, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i8* [ null, %88 ], [ %90, %89 ]
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @async_mode(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @reset_port(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
