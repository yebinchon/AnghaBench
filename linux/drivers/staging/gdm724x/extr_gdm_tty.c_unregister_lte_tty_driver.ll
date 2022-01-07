; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_unregister_lte_tty_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_unregister_lte_tty_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }

@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@gdm_driver = common dso_local global %struct.tty_driver** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_lte_tty_driver() #0 {
  %1 = alloca %struct.tty_driver*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TTY_MAX_COUNT, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load %struct.tty_driver**, %struct.tty_driver*** @gdm_driver, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tty_driver*, %struct.tty_driver** %8, i64 %10
  %12 = load %struct.tty_driver*, %struct.tty_driver** %11, align 8
  store %struct.tty_driver* %12, %struct.tty_driver** %1, align 8
  %13 = load %struct.tty_driver*, %struct.tty_driver** %1, align 8
  %14 = icmp ne %struct.tty_driver* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.tty_driver*, %struct.tty_driver** %1, align 8
  %17 = call i32 @tty_unregister_driver(%struct.tty_driver* %16)
  %18 = load %struct.tty_driver*, %struct.tty_driver** %1, align 8
  %19 = call i32 @put_tty_driver(%struct.tty_driver* %18)
  br label %20

20:                                               ; preds = %15, %7
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %3

24:                                               ; preds = %3
  ret void
}

declare dso_local i32 @tty_unregister_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
