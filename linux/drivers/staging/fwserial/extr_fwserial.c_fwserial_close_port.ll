; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_close_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_close_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.fwtty_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tty_struct = type { i32 }

@fwloop_driver = common dso_local global %struct.tty_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_driver*, %struct.fwtty_port*)* @fwserial_close_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_close_port(%struct.tty_driver* %0, %struct.fwtty_port* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.fwtty_port* %1, %struct.fwtty_port** %4, align 8
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %7 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %11 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %10, i32 0, i32 1
  %12 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_2__* %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = icmp ne %struct.tty_struct* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = call i32 @tty_vhangup(%struct.tty_struct* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = call i32 @tty_kref_put(%struct.tty_struct* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %26 = load %struct.tty_driver*, %struct.tty_driver** @fwloop_driver, align 8
  %27 = icmp eq %struct.tty_driver* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %31 = call i32 @loop_idx(%struct.fwtty_port* %30)
  %32 = call i32 @tty_unregister_device(%struct.tty_driver* %29, i32 %31)
  br label %39

33:                                               ; preds = %20
  %34 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %36 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tty_unregister_device(%struct.tty_driver* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_2__*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_unregister_device(%struct.tty_driver*, i32) #1

declare dso_local i32 @loop_idx(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
