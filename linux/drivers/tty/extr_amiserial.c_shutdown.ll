; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.tty_struct = type { i32 }
%struct.serial_state = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@IRQ_AMIGA_VERTB = common dso_local global i32 0, align 4
@IF_RBF = common dso_local global i32 0, align 4
@IF_TBE = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@AC_UARTBRK = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.serial_state*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.tty_struct* %0, %struct.serial_state* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.serial_state*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_state* %1, %struct.serial_state** %4, align 8
  %7 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %8 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %7, i32 0, i32 1
  %9 = call i32 @tty_port_initialized(%struct.TYPE_6__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  store %struct.serial_state* %13, %struct.serial_state** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %17 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @wake_up_interruptible(i32* %18)
  %20 = load i32, i32* @IRQ_AMIGA_VERTB, align 4
  %21 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.serial_state* %21)
  %23 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %24 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %12
  %29 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %30 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = call i32 @free_page(i64 %33)
  %35 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %36 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %28, %12
  %39 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %40 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @IF_RBF, align 4
  %42 = load i32, i32* @IF_TBE, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @custom, i32 0, i32 0), align 4
  %44 = call i32 (...) @mb()
  %45 = load i32, i32* @AC_UARTBRK, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @custom, i32 0, i32 1), align 4
  %46 = call i32 (...) @mb()
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = call i64 @C_HUPCL(%struct.tty_struct* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load i32, i32* @SER_DTR, align 4
  %52 = load i32, i32* @SER_RTS, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %56 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %50, %38
  %60 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %61 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @rtsdtr_ctrl(i32 %62)
  %64 = load i32, i32* @TTY_IO_ERROR, align 4
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %69 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %68, i32 0, i32 1
  %70 = call i32 @tty_port_set_initialized(%struct.TYPE_6__* %69, i32 0)
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  br label %73

73:                                               ; preds = %59, %11
  ret void
}

declare dso_local i32 @tty_port_initialized(%struct.TYPE_6__*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.serial_state*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
