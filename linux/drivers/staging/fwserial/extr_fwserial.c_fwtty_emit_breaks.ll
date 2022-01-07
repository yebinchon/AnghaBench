; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_emit_breaks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_emit_breaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.fwtty_port = type { i64, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@emit_breaks = common dso_local global i32 0, align 4
@fwtty_emit_breaks.buf = internal constant [16 x i8] zeroinitializer, align 16
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"sending %d brks\0A\00", align 1
@TTY_BREAK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@FREQ_BREAKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fwtty_emit_breaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_emit_breaks(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %11 = call i32 @to_delayed_work(%struct.work_struct* %10)
  %12 = load i32, i32* @emit_breaks, align 4
  %13 = call %struct.fwtty_port* @to_port(i32 %11, i32 %12)
  store %struct.fwtty_port* %13, %struct.fwtty_port** %3, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  store i64 %19, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %20, %23
  %25 = load i64, i64* @HZ, align 8
  %26 = udiv i64 %24, %25
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %31 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @fwtty_dbg(%struct.fwtty_port* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %56, %1
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @min(i32 %39, i32 16)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 5
  %43 = load i32, i32* @TTY_BREAK, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @tty_insert_flip_string_fixed_flag(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fwtty_emit_breaks.buf, i64 0, i64 0), i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %57

56:                                               ; preds = %38
  br label %35

57:                                               ; preds = %55, %35
  %58 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %59 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %58, i32 0, i32 5
  %60 = call i32 @tty_flip_buffer_push(i32* %59)
  %61 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %62 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UART_LSR_BI, align 4
  %65 = shl i32 %64, 24
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %70 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %69, i32 0, i32 4
  %71 = load i32, i32* @FREQ_BREAKS, align 4
  %72 = call i32 @schedule_delayed_work(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %57
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %76 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 4
  ret void
}

declare dso_local %struct.fwtty_port* @to_port(i32, i32) #1

declare dso_local i32 @to_delayed_work(%struct.work_struct*) #1

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(i32*, i8*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
