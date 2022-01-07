; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@STOP_TX = common dso_local global i32 0, align 4
@IN_TX = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @fwtty_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_break_ctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwtty_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %9, align 8
  store %struct.fwtty_port* %10, %struct.fwtty_port** %6, align 8
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @fwtty_dbg(%struct.fwtty_port* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @STOP_TX, align 4
  %18 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %19 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IN_TX, align 4
  %25 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %26 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @wait_event_interruptible_timeout(i32 %23, i32 %30, i32 10)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ERESTARTSYS, align 8
  %37 = sub nsw i64 0, %36
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34, %16
  %40 = load i32, i32* @STOP_TX, align 4
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 2
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %45 = call i32 @fwtty_restart_tx(%struct.fwtty_port* %44)
  %46 = load i32, i32* @EINTR, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %80

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %51 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, -1
  %55 = zext i1 %54 to i32
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %59 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %58)
  %60 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %61 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %49
  %66 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %67 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %70 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %69, i32 0, i32 3
  %71 = call i32 @dma_fifo_reset(i32* %70)
  %72 = load i32, i32* @STOP_TX, align 4
  %73 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %74 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %73, i32 0, i32 2
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %77 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %79

79:                                               ; preds = %65, %49
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fwtty_restart_tx(%struct.fwtty_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_fifo_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
