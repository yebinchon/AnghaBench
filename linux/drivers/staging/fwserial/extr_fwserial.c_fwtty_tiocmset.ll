; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"set: %x clear: %x\0A\00", align 1
@MCTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @fwtty_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %9, align 8
  store %struct.fwtty_port* %10, %struct.fwtty_port** %7, align 8
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fwtty_dbg(%struct.fwtty_port* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %16 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MCTRL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = and i32 %20, 65535
  %22 = xor i32 %21, -1
  %23 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %24 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MCTRL_MASK, align 4
  %29 = and i32 %27, %28
  %30 = and i32 %29, 65535
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %32 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %36 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %35)
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_bh(i32* %38)
  ret i32 0
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
