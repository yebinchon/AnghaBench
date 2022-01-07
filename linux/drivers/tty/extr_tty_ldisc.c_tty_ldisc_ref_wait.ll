; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_ref_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_ref_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { i32 }
%struct.tty_struct = type { i32, %struct.tty_ldisc* }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %7 = call i32 @ldsem_down_read(i32* %5, i32 %6)
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  store %struct.tty_ldisc* %10, %struct.tty_ldisc** %3, align 8
  %11 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %12 = icmp ne %struct.tty_ldisc* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = call i32 @ldsem_up_read(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  ret %struct.tty_ldisc* %18
}

declare dso_local i32 @ldsem_down_read(i32*, i32) #1

declare dso_local i32 @ldsem_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
