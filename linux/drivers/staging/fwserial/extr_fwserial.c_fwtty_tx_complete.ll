; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fwtty_transaction = type { %struct.TYPE_6__, %struct.fwtty_port* }
%struct.TYPE_6__ = type { i32 }
%struct.fwtty_port = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"rcode: %d\0A\00", align 1
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i8*, i64, %struct.fwtty_transaction*)* @fwtty_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_tx_complete(%struct.fw_card* %0, i32 %1, i8* %2, i64 %3, %struct.fwtty_transaction* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fwtty_transaction*, align 8
  %11 = alloca %struct.fwtty_port*, align 8
  %12 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.fwtty_transaction* %4, %struct.fwtty_transaction** %10, align 8
  %13 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %14 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %13, i32 0, i32 1
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %14, align 8
  store %struct.fwtty_port* %15, %struct.fwtty_port** %11, align 8
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @fwtty_dbg(%struct.fwtty_port* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %44 [
    i32 128, label %20
  ]

20:                                               ; preds = %5
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %25 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %24, i32 0, i32 3
  %26 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %27 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %26, i32 0, i32 0
  %28 = call i32 @dma_fifo_out_complete(i32* %25, %struct.TYPE_6__* %27)
  %29 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %30 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %29, i32 0, i32 3
  %31 = call i32 @dma_fifo_level(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %33 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %36 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %40 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %68

44:                                               ; preds = %5
  %45 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %46 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %45, i32 0, i32 2
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %49 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %48, i32 0, i32 3
  %50 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %51 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %50, i32 0, i32 0
  %52 = call i32 @dma_fifo_out_complete(i32* %49, %struct.TYPE_6__* %51)
  %53 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %54 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %53, i32 0, i32 3
  %55 = call i32 @dma_fifo_level(i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %60 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %64 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %44, %20
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @WAKEUP_CHARS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.fwtty_port*, %struct.fwtty_port** %11, align 8
  %74 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %73, i32 0, i32 0
  %75 = call i32 @tty_port_tty_wakeup(i32* %74)
  br label %76

76:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_fifo_out_complete(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dma_fifo_level(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tty_port_tty_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
