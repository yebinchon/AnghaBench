; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, %struct.TYPE_7__, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s shutdown\0A\00", align 1
@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 1
  %6 = call i32 @tty_port_initialized(%struct.TYPE_7__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %99

9:                                                ; preds = %1
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @DBGINFO(i8* %14)
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 8
  %18 = call i32 @wake_up_interruptible(i32* %17)
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 7
  %21 = call i32 @wake_up_interruptible(i32* %20)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 6
  %24 = call i32 @del_timer_sync(i32* %23)
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 5
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 2
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %39 = call i32 @tx_stop(%struct.slgt_info* %38)
  %40 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %41 = call i32 @rx_stop(%struct.slgt_info* %40)
  %42 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %43 = load i32, i32* @IRQ_ALL, align 4
  %44 = load i32, i32* @IRQ_MASTER, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @slgt_irq_off(%struct.slgt_info* %42, i32 %45)
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %9
  %53 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %54 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HUPCL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %52, %9
  %64 = load i32, i32* @SerialSignal_RTS, align 4
  %65 = load i32, i32* @SerialSignal_DTR, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = call i32 @set_signals(%struct.slgt_info* %72)
  br label %74

74:                                               ; preds = %63, %52
  %75 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %76 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %75, i32 0, i32 3
  %77 = call i32 @flush_cond_wait(i32* %76)
  %78 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 2
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %83 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %74
  %88 = load i32, i32* @TTY_IO_ERROR, align 4
  %89 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %90 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %88, i32* %93)
  br label %95

95:                                               ; preds = %87, %74
  %96 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %97 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %96, i32 0, i32 1
  %98 = call i32 @tty_port_set_initialized(%struct.TYPE_7__* %97, i32 0)
  br label %99

99:                                               ; preds = %95, %8
  ret void
}

declare dso_local i32 @tty_port_initialized(%struct.TYPE_7__*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @flush_cond_wait(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
