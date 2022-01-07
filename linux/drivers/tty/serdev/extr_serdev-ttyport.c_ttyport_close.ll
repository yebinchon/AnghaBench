; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32*)* }

@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_controller*)* @ttyport_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyport_close(%struct.serdev_controller* %0) #0 {
  %2 = alloca %struct.serdev_controller*, align 8
  %3 = alloca %struct.serport*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.serdev_controller* %0, %struct.serdev_controller** %2, align 8
  %5 = load %struct.serdev_controller*, %struct.serdev_controller** %2, align 8
  %6 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %5)
  store %struct.serport* %6, %struct.serport** %3, align 8
  %7 = load %struct.serport*, %struct.serport** %3, align 8
  %8 = getelementptr inbounds %struct.serport, %struct.serport* %7, i32 0, i32 2
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %9, %struct.tty_struct** %4, align 8
  %10 = load i32, i32* @SERPORT_ACTIVE, align 4
  %11 = load %struct.serport*, %struct.serport** %3, align 8
  %12 = getelementptr inbounds %struct.serport, %struct.serport* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @tty_lock(%struct.tty_struct* %14)
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.tty_struct*, i32*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = call i32 %27(%struct.tty_struct* %28, i32* null)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = call i32 @tty_unlock(%struct.tty_struct* %31)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %34 = load %struct.serport*, %struct.serport** %3, align 8
  %35 = getelementptr inbounds %struct.serport, %struct.serport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tty_release_struct(%struct.tty_struct* %33, i32 %36)
  ret void
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local i32 @tty_release_struct(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
