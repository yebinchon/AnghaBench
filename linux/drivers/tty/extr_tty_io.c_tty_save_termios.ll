; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_save_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_save_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.ktermios, %struct.TYPE_2__* }
%struct.ktermios = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.ktermios** }

@TTY_DRIVER_RESET_TERMIOS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_save_termios(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.ktermios*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TTY_DRIVER_RESET_TERMIOS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.ktermios**, %struct.ktermios*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %22, i64 %24
  %26 = load %struct.ktermios*, %struct.ktermios** %25, align 8
  store %struct.ktermios* %26, %struct.ktermios** %3, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %28 = icmp eq %struct.ktermios* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %17
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ktermios* @kmalloc(i32 4, i32 %30)
  store %struct.ktermios* %31, %struct.ktermios** %3, align 8
  %32 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %33 = icmp eq %struct.ktermios* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  %36 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %37 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.ktermios**, %struct.ktermios*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %41, i64 %43
  store %struct.ktermios* %36, %struct.ktermios** %44, align 8
  br label %45

45:                                               ; preds = %35, %17
  %46 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %47 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 1
  %49 = bitcast %struct.ktermios* %46 to i8*
  %50 = bitcast %struct.ktermios* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %45, %34, %16
  ret void
}

declare dso_local %struct.ktermios* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
