; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.moxa_port* }
%struct.moxa_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32 }

@MAX_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @moxa_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.moxa_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.moxa_port*, %struct.moxa_port** %8, align 8
  store %struct.moxa_port* %9, %struct.moxa_port** %6, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_PORTS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %20 = icmp ne %struct.moxa_port* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %18
  %25 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %26 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %30 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %33 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %35 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %41 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %43 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %47 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %49 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %48, i32 0, i32 0
  store i32 921600, i32* %49, align 4
  %50 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %51 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %55 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %57 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %24, %21, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
