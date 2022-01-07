; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ktermios = type { i32, i32, i8* }

@EXTPROC = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@TIOCPKT_DOSTOP = common dso_local global i32 0, align 4
@TIOCPKT_NOSTOP = common dso_local global i32 0, align 4
@TIOCPKT_IOCTL = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @pty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %127

12:                                               ; preds = %2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %12
  %20 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EXTPROC, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = call i32 @L_EXTPROC(%struct.tty_struct* %25)
  %27 = or i32 %24, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IXON, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %19
  %35 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* @VSTOP, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 19
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* @VSTART, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 17
  br label %52

52:                                               ; preds = %43, %34, %19
  %53 = phi i1 [ false, %34 ], [ false, %19 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %56 = call i64 @I_IXON(%struct.tty_struct* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %60 = call signext i8 @STOP_CHAR(%struct.tty_struct* %59)
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 19
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %65 = call signext i8 @START_CHAR(%struct.tty_struct* %64)
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 17
  br label %68

68:                                               ; preds = %63, %58, %52
  %69 = phi i1 [ false, %58 ], [ false, %52 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %74, %68
  %78 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 3
  %80 = call i32 @spin_lock_irq(i32* %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %77
  %85 = load i32, i32* @TIOCPKT_DOSTOP, align 4
  %86 = load i32, i32* @TIOCPKT_NOSTOP, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @TIOCPKT_DOSTOP, align 4
  %97 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %98 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %107

101:                                              ; preds = %84
  %102 = load i32, i32* @TIOCPKT_NOSTOP, align 4
  %103 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @TIOCPKT_IOCTL, align 4
  %113 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %114 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %108
  %118 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %119 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 3
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %122 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = call i32 @wake_up_interruptible(i32* %124)
  br label %126

126:                                              ; preds = %117, %74
  br label %127

127:                                              ; preds = %126, %12, %2
  %128 = load i32, i32* @CSIZE, align 4
  %129 = load i32, i32* @PARENB, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @CS8, align 4
  %138 = load i32, i32* @CREAD, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %141 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  ret void
}

declare dso_local i32 @L_EXTPROC(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
