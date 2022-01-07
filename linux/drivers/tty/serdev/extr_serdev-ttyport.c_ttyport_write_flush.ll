; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_controller*)* @ttyport_write_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyport_write_flush(%struct.serdev_controller* %0) #0 {
  %2 = alloca %struct.serdev_controller*, align 8
  %3 = alloca %struct.serport*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.serdev_controller* %0, %struct.serdev_controller** %2, align 8
  %5 = load %struct.serdev_controller*, %struct.serdev_controller** %2, align 8
  %6 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %5)
  store %struct.serport* %6, %struct.serport** %3, align 8
  %7 = load %struct.serport*, %struct.serport** %3, align 8
  %8 = getelementptr inbounds %struct.serport, %struct.serport* %7, i32 0, i32 0
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %9, %struct.tty_struct** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %10)
  ret void
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
