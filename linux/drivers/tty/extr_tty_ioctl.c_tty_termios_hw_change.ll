; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_termios_hw_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_termios_hw_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktermios = type { i64, i64, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_termios_hw_change(%struct.ktermios* %0, %struct.ktermios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  store %struct.ktermios* %0, %struct.ktermios** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  %6 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %7 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %10 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %40

22:                                               ; preds = %13
  %23 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %25, %28
  %30 = load i32, i32* @HUPCL, align 4
  %31 = load i32, i32* @CREAD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CLOCAL, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %29, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
