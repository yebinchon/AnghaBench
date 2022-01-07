; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.tty_struct*)* @process_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_output(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.n_tty_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.n_tty_data*, %struct.n_tty_data** %10, align 8
  store %struct.n_tty_data* %11, %struct.n_tty_data** %6, align 8
  %12 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %13 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %16 = call i32 @tty_write_room(%struct.tty_struct* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i8, i8* %4, align 1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @do_output_char(i8 zeroext %17, %struct.tty_struct* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %22 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @do_output_char(i8 zeroext, %struct.tty_struct*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
