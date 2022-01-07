; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tty_port = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"on/off: %d\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@port = common dso_local global %struct.fwtty_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*, i32)* @fwtty_port_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_port_dtr_rts(%struct.tty_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %7 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %8 = ptrtoint %struct.fwtty_port* %7 to i32
  %9 = call %struct.fwtty_port* @to_port(%struct.tty_port* %6, i32 %8)
  store %struct.fwtty_port* %9, %struct.fwtty_port** %5, align 8
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fwtty_dbg(%struct.fwtty_port* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %14 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @TIOCM_DTR, align 4
  %26 = load i32, i32* @TIOCM_RTS, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = load i32, i32* @TIOCM_RTS, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %24
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %44 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %43)
  %45 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %46 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  ret void
}

declare dso_local %struct.fwtty_port* @to_port(%struct.tty_port*, i32) #1

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
