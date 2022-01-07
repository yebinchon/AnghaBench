; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_termios_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_termios_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktermios = type { i32, i64* }

@IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ktermios*, %struct.ktermios*)* @pl2303_termios_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_termios_change(%struct.ktermios* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.ktermios*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  store %struct.ktermios* %0, %struct.ktermios** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %6 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %7 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %10 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = xor i32 %8, %11
  %13 = load i32, i32* @IXON, align 4
  %14 = load i32, i32* @IXANY, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @VSTART, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @VSTART, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %24, %30
  br i1 %31, label %46, label %32

32:                                               ; preds = %18
  %33 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %34 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @VSTOP, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %40 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @VSTOP, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %38, %44
  br label %46

46:                                               ; preds = %32, %18, %2
  %47 = phi i1 [ true, %18 ], [ true, %2 ], [ %45, %32 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %50 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %51 = call i64 @tty_termios_hw_change(%struct.ktermios* %49, %struct.ktermios* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i1 [ true, %46 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i64 @tty_termios_hw_change(%struct.ktermios*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
