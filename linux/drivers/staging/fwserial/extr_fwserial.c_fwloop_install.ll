; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwloop_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwloop_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { %struct.fwtty_port*, i32 }
%struct.fwtty_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @fwloop_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwloop_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @table_idx(i32 %9)
  %11 = call %struct.fwtty_port* @fwtty_port_get(i32 %10)
  store %struct.fwtty_port* %11, %struct.fwtty_port** %5, align 8
  %12 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = call i32 @tty_standard_install(%struct.tty_driver* %12, %struct.tty_struct* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 0
  store %struct.fwtty_port* %18, %struct.fwtty_port** %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %23 = call i32 @fwtty_port_put(%struct.fwtty_port* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local %struct.fwtty_port* @fwtty_port_get(i32) #1

declare dso_local i32 @table_idx(i32) #1

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @fwtty_port_put(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
