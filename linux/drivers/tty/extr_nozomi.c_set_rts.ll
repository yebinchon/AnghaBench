; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_set_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PORT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rts(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = call %struct.port* @get_port_by_tty(%struct.tty_struct* %6)
  store %struct.port* %7, %struct.port** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.port*, %struct.port** %5, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.port*, %struct.port** %5, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* @PORT_CTRL, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = call i32 @get_dc_by_tty(%struct.tty_struct* %15)
  %17 = call i32 @enable_transmit_ul(i32 %14, i32 %16)
  ret void
}

declare dso_local %struct.port* @get_port_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @enable_transmit_ul(i32, i32) #1

declare dso_local i32 @get_dc_by_tty(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
