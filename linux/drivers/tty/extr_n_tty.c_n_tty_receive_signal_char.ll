; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_signal_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_signal_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32, i8)* @n_tty_receive_signal_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_signal_char(%struct.tty_struct* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = call i32 @isig(i32 %7, %struct.tty_struct* %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = call i64 @I_IXON(%struct.tty_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @start_tty(%struct.tty_struct* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = call i64 @L_ECHO(%struct.tty_struct* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8, i8* %6, align 1
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i32 @echo_char(i8 zeroext %21, %struct.tty_struct* %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @commit_echoes(%struct.tty_struct* %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 @process_echoes(%struct.tty_struct* %27)
  br label %29

29:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @isig(i32, %struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @commit_echoes(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
