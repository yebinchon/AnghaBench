; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_program_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, %struct.TYPE_8__, i64, i64, i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@IRQ_DCD = common dso_local global i32 0, align 4
@IRQ_CTS = common dso_local global i32 0, align 4
@IRQ_DSR = common dso_local global i32 0, align 4
@IRQ_RI = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hw(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = call i32 @rx_stop(%struct.slgt_info* %8)
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = call i32 @tx_stop(%struct.slgt_info* %10)
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %1
  %24 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %25 = call i32 @sync_mode(%struct.slgt_info* %24)
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %28 = call i32 @async_mode(%struct.slgt_info* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %31 = call i32 @set_signals(%struct.slgt_info* %30)
  %32 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %37 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %41 = load i32, i32* @IRQ_DCD, align 4
  %42 = load i32, i32* @IRQ_CTS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IRQ_DSR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IRQ_RI, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @slgt_irq_on(%struct.slgt_info* %40, i32 %47)
  %49 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %50 = call i32 @get_signals(%struct.slgt_info* %49)
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %29
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %63 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CREAD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61, %29
  %73 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %74 = call i32 @rx_start(%struct.slgt_info* %73)
  br label %75

75:                                               ; preds = %72, %61, %55
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 0
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @sync_mode(%struct.slgt_info*) #1

declare dso_local i32 @async_mode(%struct.slgt_info*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i32) #1

declare dso_local i32 @get_signals(%struct.slgt_info*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
