; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty3270* }
%struct.tty3270 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32 }

@TF_INPUT = common dso_local global i32 0, align 4
@TF_INPUTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @tty3270_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.tty3270*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  store %struct.tty3270* %9, %struct.tty3270** %5, align 8
  %10 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %11 = icmp ne %struct.tty3270* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %15 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = call i64 @L_ICANON(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = call i64 @L_ECHO(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @TF_INPUT, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @TF_INPUTN, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %33 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %39 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %41 = call i32 @tty3270_update_prompt(%struct.tty3270* %40, i32* null, i32 0)
  %42 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %43 = call i32 @tty3270_set_timer(%struct.tty3270* %42, i32 1)
  br label %44

44:                                               ; preds = %36, %29
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %47 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %50

50:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @L_ICANON(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @tty3270_update_prompt(%struct.tty3270*, i32*, i32) #1

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
