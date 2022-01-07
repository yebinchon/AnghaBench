; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i32, i32, i32, i64 }

@tty_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_unregister_driver(%struct.tty_driver* %0) #0 {
  %2 = alloca %struct.tty_driver*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %2, align 8
  %3 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %4 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %7 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @MKDEV(i32 %5, i32 %8)
  %10 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %11 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @unregister_chrdev_region(i32 %9, i32 %12)
  %14 = call i32 @mutex_lock(i32* @tty_mutex)
  %15 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = call i32 @mutex_unlock(i32* @tty_mutex)
  ret i32 0
}

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
