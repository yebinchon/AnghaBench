; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"CRTSCTS: %d\0A\00", align 1
@OOB_RX_THROTTLE = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @fwtty_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  store %struct.fwtty_port* %6, %struct.fwtty_port** %3, align 8
  %7 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = call i64 @C_CRTSCTS(%struct.tty_struct* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @fwtty_dbg(%struct.fwtty_port* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %14 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %15 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fwtty_profile_fifo(%struct.fwtty_port* %13, i32 %17)
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %20 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load i32, i32* @OOB_RX_THROTTLE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %25 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %29 = call i64 @C_CRTSCTS(%struct.tty_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %34 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %39 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %38)
  %40 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %41 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  ret void
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @fwtty_profile_fifo(%struct.fwtty_port*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
