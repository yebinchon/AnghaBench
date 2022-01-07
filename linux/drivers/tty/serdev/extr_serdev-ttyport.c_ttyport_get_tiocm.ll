; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_get_tiocm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_get_tiocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_controller*)* @ttyport_get_tiocm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyport_get_tiocm(%struct.serdev_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca %struct.serport*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.serdev_controller* %0, %struct.serdev_controller** %3, align 8
  %6 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %7 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %6)
  store %struct.serport* %7, %struct.serport** %4, align 8
  %8 = load %struct.serport*, %struct.serport** %4, align 8
  %9 = getelementptr inbounds %struct.serport, %struct.serport* %8, i32 0, i32 0
  %10 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  store %struct.tty_struct* %10, %struct.tty_struct** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %14, align 8
  %16 = icmp ne i32 (%struct.tty_struct*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %24, align 8
  %26 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %27 = call i32 %25(%struct.tty_struct* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
