; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_echo_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@ECHO_OP_START = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @echo_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_char(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.n_tty_data*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  store %struct.n_tty_data* %8, %struct.n_tty_data** %5, align 8
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @ECHO_OP_START, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8, i8* @ECHO_OP_START, align 1
  %16 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %17 = call i32 @add_echo_byte(i8 zeroext %15, %struct.n_tty_data* %16)
  %18 = load i8, i8* @ECHO_OP_START, align 1
  %19 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %20 = call i32 @add_echo_byte(i8 zeroext %18, %struct.n_tty_data* %19)
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i64 @L_ECHOCTL(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8, i8* %3, align 1
  %27 = call i64 @iscntrl(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8, i8* @ECHO_OP_START, align 1
  %35 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %36 = call i32 @add_echo_byte(i8 zeroext %34, %struct.n_tty_data* %35)
  br label %37

37:                                               ; preds = %33, %29, %25, %21
  %38 = load i8, i8* %3, align 1
  %39 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %40 = call i32 @add_echo_byte(i8 zeroext %38, %struct.n_tty_data* %39)
  br label %41

41:                                               ; preds = %37, %14
  ret void
}

declare dso_local i32 @add_echo_byte(i8 zeroext, %struct.n_tty_data*) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i64 @iscntrl(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
