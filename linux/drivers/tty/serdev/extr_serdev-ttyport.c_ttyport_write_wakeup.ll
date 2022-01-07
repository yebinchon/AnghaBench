; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.serdev_controller* }
%struct.serdev_controller = type { i32 }
%struct.serport = type { i32 }
%struct.tty_struct = type { i32, i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*)* @ttyport_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyport_write_wakeup(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca %struct.serport*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %6 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 0
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %7, align 8
  store %struct.serdev_controller* %8, %struct.serdev_controller** %3, align 8
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %10 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %9)
  store %struct.serport* %10, %struct.serport** %4, align 8
  %11 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %12 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = icmp ne %struct.tty_struct* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = call i64 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* @SERPORT_ACTIVE, align 4
  %24 = load %struct.serport*, %struct.serport** %4, align 8
  %25 = getelementptr inbounds %struct.serport, %struct.serport* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %30 = call i32 @serdev_controller_write_wakeup(%struct.serdev_controller* %29)
  br label %31

31:                                               ; preds = %28, %22, %16
  %32 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = call i32 @wake_up_interruptible(i32* %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %36 = call i32 @tty_kref_put(%struct.tty_struct* %35)
  br label %37

37:                                               ; preds = %31, %15
  ret void
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @serdev_controller_write_wakeup(%struct.serdev_controller*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
