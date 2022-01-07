; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_install_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_install_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @tty_driver_install_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_driver_install_tty(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %6 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.tty_driver*, %struct.tty_struct*)**
  %10 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %9, align 8
  %11 = icmp ne i32 (%struct.tty_driver*, %struct.tty_struct*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %14 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.tty_driver*, %struct.tty_struct*)**
  %18 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %17, align 8
  %19 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = call i32 %18(%struct.tty_driver* %19, %struct.tty_struct* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @tty_standard_install(%struct.tty_driver* %23, %struct.tty_struct* %24)
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ %21, %12 ], [ %25, %22 ]
  ret i32 %27
}

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
