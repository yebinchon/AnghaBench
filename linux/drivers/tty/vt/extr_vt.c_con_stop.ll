; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @con_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_stop(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = icmp ne %struct.tty_struct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @vc_cons_allocated(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @vt_kbd_con_stop(i32 %16)
  br label %18

18:                                               ; preds = %15, %14, %6
  ret void
}

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @vt_kbd_con_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
