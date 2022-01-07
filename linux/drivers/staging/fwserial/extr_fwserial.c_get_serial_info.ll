; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32 }

@PORT_UNKNOWN = common dso_local global i32 0, align 4
@FWTTY_PORT_TXFIFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  store %struct.fwtty_port* %8, %struct.fwtty_port** %5, align 8
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %10 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @PORT_UNKNOWN, align 4
  %14 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %15 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %23 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %25 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FWTTY_PORT_TXFIFO_LEN, align 4
  %31 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %32 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %33, i32 0, i32 0
  store i32 400000000, i32* %34, align 4
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %36 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %40 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
