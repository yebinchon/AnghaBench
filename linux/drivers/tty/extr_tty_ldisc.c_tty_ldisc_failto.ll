; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_failto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_failto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty_ldisc*, i32 }
%struct.tty_ldisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @tty_ldisc_failto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_ldisc_failto(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %8, i32 %9)
  store %struct.tty_ldisc* %10, %struct.tty_ldisc** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = call i32 @lockdep_assert_held_write(i32* %12)
  %14 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %15 = call i64 @IS_ERR(%struct.tty_ldisc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.tty_ldisc* %18)
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  store %struct.tty_ldisc* %21, %struct.tty_ldisc** %23, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tty_set_termios_ldisc(%struct.tty_struct* %24, i32 %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %29 = call i32 @tty_ldisc_open(%struct.tty_struct* %27, %struct.tty_ldisc* %28)
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %33 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct*, i32) #1

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @PTR_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_set_termios_ldisc(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_put(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
