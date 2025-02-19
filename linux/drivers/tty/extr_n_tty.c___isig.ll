; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___isig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___isig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.pid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tty_struct*)* @__isig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isig(i32 %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.pid*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* %6)
  store %struct.pid* %7, %struct.pid** %5, align 8
  %8 = load %struct.pid*, %struct.pid** %5, align 8
  %9 = icmp ne %struct.pid* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pid*, %struct.pid** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @kill_pgrp(%struct.pid* %11, i32 %12, i32 1)
  %14 = load %struct.pid*, %struct.pid** %5, align 8
  %15 = call i32 @put_pid(%struct.pid* %14)
  br label %16

16:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct*) #1

declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
