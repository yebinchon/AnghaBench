; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { i32 }
%struct.tty_struct = type { i32, %struct.tty_ldisc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %3, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = call i64 @ldsem_down_read_trylock(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.tty_ldisc*, %struct.tty_ldisc** %10, align 8
  store %struct.tty_ldisc* %11, %struct.tty_ldisc** %3, align 8
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %13 = icmp ne %struct.tty_ldisc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = call i32 @ldsem_up_read(i32* %16)
  br label %18

18:                                               ; preds = %14, %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  ret %struct.tty_ldisc* %20
}

declare dso_local i64 @ldsem_down_read_trylock(i32*) #1

declare dso_local i32 @ldsem_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
