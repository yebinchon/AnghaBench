; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_init_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_init_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.ktermios, %struct.TYPE_2__* }
%struct.ktermios = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ktermios, %struct.ktermios** }

@TTY_DRIVER_RESET_TERMIOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_init_termios(%struct.tty_struct* %0) #0 {
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
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 1
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = bitcast %struct.ktermios* %18 to i8*
  %24 = bitcast %struct.ktermios* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  br label %62

25:                                               ; preds = %1
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.ktermios**, %struct.ktermios*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %30, i64 %32
  %34 = load %struct.ktermios*, %struct.ktermios** %33, align 8
  store %struct.ktermios* %34, %struct.ktermios** %3, align 8
  %35 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %36 = icmp ne %struct.ktermios* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %25
  %38 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  %40 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %41 = bitcast %struct.ktermios* %39 to i8*
  %42 = bitcast %struct.ktermios* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %61

52:                                               ; preds = %25
  %53 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 1
  %55 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = bitcast %struct.ktermios* %54 to i8*
  %60 = bitcast %struct.ktermios* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 12, i1 false)
  br label %61

61:                                               ; preds = %52, %37
  br label %62

62:                                               ; preds = %61, %16
  %63 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 1
  %65 = call i32 @tty_termios_input_baud_rate(%struct.ktermios* %64)
  %66 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 1
  %71 = call i32 @tty_termios_baud_rate(%struct.ktermios* %70)
  %72 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios*) #2

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
