; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_buf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_buf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_tty_data = type { i8* }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.n_tty_data*, i64)* @echo_buf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @echo_buf_addr(%struct.n_tty_data* %0, i64 %1) #0 {
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i64, align 8
  store %struct.n_tty_data* %0, %struct.n_tty_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %6 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = and i64 %8, %11
  %13 = getelementptr inbounds i8, i8* %7, i64 %12
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
