; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_6__, i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)* }

@.str = private unnamed_addr constant [12 x i8] c"%p: hangup\0A\00", align 1
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@TTY_DRIVER_RESET_TERMIOS = common dso_local global i32 0, align 4
@N_TTY = common dso_local global i32 0, align 4
@N_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_ldisc_hangup(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @tty_ldisc_debug(%struct.tty_struct* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %11)
  store %struct.tty_ldisc* %12, %struct.tty_ldisc** %5, align 8
  %13 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %14 = icmp ne %struct.tty_ldisc* %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %2
  %16 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %17 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %19, align 8
  %21 = icmp ne i32 (%struct.tty_struct*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %24 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = call i32 %27(%struct.tty_struct* %28)
  br label %30

30:                                               ; preds = %22, %15
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %31)
  %33 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 5
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %40 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %42, align 8
  %44 = icmp ne i32 (%struct.tty_struct*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %47 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %49, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = call i32 %50(%struct.tty_struct* %51)
  br label %53

53:                                               ; preds = %45, %38, %30
  %54 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %55 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %57, align 8
  %59 = icmp ne i32 (%struct.tty_struct*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %62 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %64, align 8
  %66 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %67 = call i32 %65(%struct.tty_struct* %66)
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.tty_ldisc*, %struct.tty_ldisc** %5, align 8
  %70 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %69)
  br label %71

71:                                               ; preds = %68, %2
  %72 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 4
  %74 = load i32, i32* @EPOLLOUT, align 4
  %75 = call i32 @wake_up_interruptible_poll(i32* %73, i32 %74)
  %76 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %77 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %76, i32 0, i32 3
  %78 = load i32, i32* @EPOLLIN, align 4
  %79 = call i32 @wake_up_interruptible_poll(i32* %77, i32 %78)
  %80 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %81 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %82 = call i32 @tty_ldisc_lock(%struct.tty_struct* %80, i32 %81)
  %83 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %84 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TTY_DRIVER_RESET_TERMIOS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %71
  %92 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %93 = call i32 @tty_reset_termios(%struct.tty_struct* %92)
  br label %94

94:                                               ; preds = %91, %71
  %95 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @tty_ldisc_reinit(%struct.tty_struct* %103, i32 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %112 = load i32, i32* @N_TTY, align 4
  %113 = call i64 @tty_ldisc_reinit(%struct.tty_struct* %111, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %117 = load i32, i32* @N_NULL, align 4
  %118 = call i64 @tty_ldisc_reinit(%struct.tty_struct* %116, i32 %117)
  %119 = icmp slt i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @WARN_ON(i32 %120)
  br label %122

122:                                              ; preds = %115, %110, %102
  br label %126

123:                                              ; preds = %99
  %124 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %125 = call i32 @tty_ldisc_kill(%struct.tty_struct* %124)
  br label %126

126:                                              ; preds = %123, %122
  br label %127

127:                                              ; preds = %126, %94
  %128 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %129 = call i32 @tty_ldisc_unlock(%struct.tty_struct* %128)
  ret void
}

declare dso_local i32 @tty_ldisc_debug(%struct.tty_struct*, i8*, i64) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

declare dso_local i32 @tty_ldisc_lock(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_reset_termios(%struct.tty_struct*) #1

declare dso_local i64 @tty_ldisc_reinit(%struct.tty_struct*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_ldisc_kill(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
