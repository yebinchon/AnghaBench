; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_remove_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_remove_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_driver*, %struct.tty_struct*)* }
%struct.tty_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_driver*, %struct.tty_struct*)* @tty_driver_remove_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_driver_remove_tty(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %6 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %8, align 8
  %10 = icmp ne i32 (%struct.tty_driver*, %struct.tty_struct*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %13 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %15, align 8
  %17 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = call i32 %16(%struct.tty_driver* %17, %struct.tty_struct* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %22 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
