; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.serial_state*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  store %struct.serial_state* %8, %struct.serial_state** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = call i32 @tty_lock(%struct.tty_struct* %9)
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %15 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %17 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %20 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %22 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %28 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %31 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %33 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %38 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %42 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %44 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %48 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %50 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %53 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = call i32 @tty_unlock(%struct.tty_struct* %54)
  ret i32 0
}

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
