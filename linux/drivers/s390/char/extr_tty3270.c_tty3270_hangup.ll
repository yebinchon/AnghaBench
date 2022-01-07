; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty3270* }
%struct.tty3270 = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@TAX_RESET = common dso_local global i32 0, align 4
@TAC_RESET = common dso_local global i32 0, align 4
@TTY_UPDATE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @tty3270_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty3270*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  store %struct.tty3270* %6, %struct.tty3270** %3, align 8
  %7 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %8 = icmp ne %struct.tty3270* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %12 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %16 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %18 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %22 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @TAX_RESET, align 4
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %27 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %26, i32 0, i32 6
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @TAC_RESET, align 4
  %29 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %32 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %31, i32 0, i32 4
  store i32 %28, i32* %32, align 4
  %33 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %34 = call i32 @tty3270_blank_screen(%struct.tty3270* %33)
  br label %35

35:                                               ; preds = %45, %10
  %36 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %37 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %40 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 2
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %47 = call i32 @tty3270_blank_line(%struct.tty3270* %46)
  br label %35

48:                                               ; preds = %35
  %49 = load i32, i32* @TTY_UPDATE_ALL, align 4
  %50 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %51 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %53 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %57 = call i32 @tty3270_set_timer(%struct.tty3270* %56, i32 1)
  br label %58

58:                                               ; preds = %48, %9
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tty3270_blank_screen(%struct.tty3270*) #1

declare dso_local i32 @tty3270_blank_line(%struct.tty3270*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
