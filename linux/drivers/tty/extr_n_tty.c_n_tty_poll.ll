; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@TTY_OTHER_CLOSED = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32*)* @n_tty_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_poll(%struct.tty_struct* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 6
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @poll_wait(%struct.file* %8, i32* %10, i32* %11)
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 5
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = call i64 @input_available_p(%struct.tty_struct* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @EPOLLIN, align 4
  %23 = load i32, i32* @EPOLLRDNORM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tty_buffer_flush_work(i32 %30)
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = call i64 @input_available_p(%struct.tty_struct* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* @EPOLLIN, align 4
  %37 = load i32, i32* @EPOLLRDNORM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %27
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32, i32* @EPOLLPRI, align 4
  %56 = load i32, i32* @EPOLLIN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @EPOLLRDNORM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %54, %47, %42
  %63 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %64 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 1
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @EPOLLHUP, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = call i64 @tty_hung_up_p(%struct.file* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @EPOLLHUP, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %80
  %88 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %89 = call i32 @tty_is_writelocked(%struct.tty_struct* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %87
  %92 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %93 = call i64 @tty_chars_in_buffer(%struct.tty_struct* %92)
  %94 = load i64, i64* @WAKEUP_CHARS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %98 = call i64 @tty_write_room(%struct.tty_struct* %97)
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @EPOLLOUT, align 4
  %102 = load i32, i32* @EPOLLWRNORM, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %100, %96, %91, %87, %80
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @input_available_p(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_buffer_flush_work(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @tty_is_writelocked(%struct.tty_struct*) #1

declare dso_local i64 @tty_chars_in_buffer(%struct.tty_struct*) #1

declare dso_local i64 @tty_write_room(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
