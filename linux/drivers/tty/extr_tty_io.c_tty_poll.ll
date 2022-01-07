; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, %struct.file*, i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"tty_poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @tty_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.tty_ldisc*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.tty_struct* @file_tty(%struct.file* %9)
  store %struct.tty_struct* %10, %struct.tty_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i32 @file_inode(%struct.file* %12)
  %14 = call i64 @tty_paranoia_check(%struct.tty_struct* %11, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %19 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %18)
  store %struct.tty_ldisc* %19, %struct.tty_ldisc** %7, align 8
  %20 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %21 = icmp ne %struct.tty_ldisc* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @hung_up_tty_poll(%struct.file* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %17
  %27 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %28 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.tty_struct*, %struct.file*, i32*)*, i32 (%struct.tty_struct*, %struct.file*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.tty_struct*, %struct.file*, i32*)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %35 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.tty_struct*, %struct.file*, i32*)*, i32 (%struct.tty_struct*, %struct.file*, i32*)** %37, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 %38(%struct.tty_struct* %39, %struct.file* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %45 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %22, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.tty_struct* @file_tty(%struct.file*) #1

declare dso_local i64 @tty_paranoia_check(%struct.tty_struct*, i32, i8*) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #1

declare dso_local i32 @hung_up_tty_poll(%struct.file*, i32*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
