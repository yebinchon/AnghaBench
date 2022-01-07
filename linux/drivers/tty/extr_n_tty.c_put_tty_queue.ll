; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_put_tty_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_put_tty_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_tty_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.n_tty_data*)* @put_tty_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_tty_queue(i8 zeroext %0, %struct.n_tty_data* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.n_tty_data*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.n_tty_data* %1, %struct.n_tty_data** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %7 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %8 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @read_buf_addr(%struct.n_tty_data* %6, i32 %9)
  store i8 %5, i8* %10, align 1
  %11 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  ret void
}

declare dso_local i8* @read_buf_addr(%struct.n_tty_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
