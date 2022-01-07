; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.n_tty_data* }
%struct.n_tty_data = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TTY_LDISC_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @n_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = call %struct.n_tty_data* @vzalloc(i32 12)
  store %struct.n_tty_data* %5, %struct.n_tty_data** %4, align 8
  %6 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %7 = icmp ne %struct.n_tty_data* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %14 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %16 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %19 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 2
  store %struct.n_tty_data* %21, %struct.n_tty_data** %23, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @TTY_LDISC_HALTED, align 4
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = call i32 @n_tty_set_termios(%struct.tty_struct* %30, i32* null)
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = call i32 @tty_unthrottle(%struct.tty_struct* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %11, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.n_tty_data* @vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @n_tty_set_termios(%struct.tty_struct*, i32*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
