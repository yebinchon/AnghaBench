; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_ldisc_flush(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %4)
  store %struct.tty_ldisc* %5, %struct.tty_ldisc** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %8 = call i32 @tty_buffer_flush(%struct.tty_struct* %6, %struct.tty_ldisc* %7)
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %10 = icmp ne %struct.tty_ldisc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %13 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %12)
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_flush(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
