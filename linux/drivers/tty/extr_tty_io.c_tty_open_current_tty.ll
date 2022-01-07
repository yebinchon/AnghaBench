; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_open_current_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_open_current_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }

@TTYAUX_MAJOR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (i64, %struct.file*)* @tty_open_current_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @tty_open_current_tty(i64 %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @TTYAUX_MAJOR, align 4
  %10 = call i64 @MKDEV(i32 %9, i32 0)
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  br label %42

13:                                               ; preds = %2
  %14 = call %struct.tty_struct* (...) @get_current_tty()
  store %struct.tty_struct* %14, %struct.tty_struct** %6, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %16 = icmp ne %struct.tty_struct* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.tty_struct* @ERR_PTR(i32 %19)
  store %struct.tty_struct* %20, %struct.tty_struct** %3, align 8
  br label %42

21:                                               ; preds = %13
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %28 = call i32 @tty_lock(%struct.tty_struct* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %30 = call i32 @tty_kref_put(%struct.tty_struct* %29)
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = call i32 @tty_reopen(%struct.tty_struct* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %37 = call i32 @tty_unlock(%struct.tty_struct* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.tty_struct* @ERR_PTR(i32 %38)
  store %struct.tty_struct* %39, %struct.tty_struct** %6, align 8
  br label %40

40:                                               ; preds = %35, %21
  %41 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  store %struct.tty_struct* %41, %struct.tty_struct** %3, align 8
  br label %42

42:                                               ; preds = %40, %17, %12
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %43
}

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local %struct.tty_struct* @get_current_tty(...) #1

declare dso_local %struct.tty_struct* @ERR_PTR(i32) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_reopen(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
