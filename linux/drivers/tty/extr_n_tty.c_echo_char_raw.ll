; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_char_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_char_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_tty_data = type { i32 }

@ECHO_OP_START = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.n_tty_data*)* @echo_char_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_char_raw(i8 zeroext %0, %struct.n_tty_data* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.n_tty_data*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.n_tty_data* %1, %struct.n_tty_data** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @ECHO_OP_START, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8, i8* @ECHO_OP_START, align 1
  %12 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %13 = call i32 @add_echo_byte(i8 zeroext %11, %struct.n_tty_data* %12)
  %14 = load i8, i8* @ECHO_OP_START, align 1
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %16 = call i32 @add_echo_byte(i8 zeroext %14, %struct.n_tty_data* %15)
  br label %21

17:                                               ; preds = %2
  %18 = load i8, i8* %3, align 1
  %19 = load %struct.n_tty_data*, %struct.n_tty_data** %4, align 8
  %20 = call i32 @add_echo_byte(i8 zeroext %18, %struct.n_tty_data* %19)
  br label %21

21:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @add_echo_byte(i8 zeroext, %struct.n_tty_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
