; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tty_struct = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @tty_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.tty_struct* @file_tty(%struct.file* %9)
  store %struct.tty_struct* %10, %struct.tty_struct** %7, align 8
  %11 = load i32, i32* @ENOTTY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %14 = call i32 @tty_lock(%struct.tty_struct* %13)
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @tty_hung_up_p(%struct.file* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @__tty_fasync(i32 %19, %struct.file* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %25 = call i32 @tty_unlock(%struct.tty_struct* %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.tty_struct* @file_tty(%struct.file*) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @__tty_fasync(i32, %struct.file*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
