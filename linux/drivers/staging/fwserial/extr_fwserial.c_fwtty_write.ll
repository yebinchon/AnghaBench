; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@DRAIN_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @fwtty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwtty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  store %struct.fwtty_port* %12, %struct.fwtty_port** %7, align 8
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @fwtty_dbg(%struct.fwtty_port* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fwtty_profile_data(i32 %19, i32 %20)
  %22 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %23 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %26 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %25, i32 0, i32 2
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dma_fifo_in(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %31 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %30, i32 0, i32 2
  %32 = call i32 @dma_fifo_out_level(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DRAIN_THRESHOLD, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 1
  %39 = call i32 @schedule_delayed_work(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DRAIN_THRESHOLD, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %49 = call i32 @fwtty_tx(%struct.fwtty_port* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @debug_short_write(%struct.fwtty_port* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  ret i32 %61
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @fwtty_profile_data(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_fifo_in(i32*, i8*, i32) #1

declare dso_local i32 @dma_fifo_out_level(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_tx(%struct.fwtty_port*, i32) #1

declare dso_local i32 @debug_short_write(%struct.fwtty_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
