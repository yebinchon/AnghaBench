; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.TYPE_2__*, %struct.slgt_info* }
%struct.TYPE_2__ = type { i32 }
%struct.slgt_info = type { i32, i32 }
%struct.ktermios = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s set_termios\0A\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 2
  %9 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  store %struct.slgt_info* %9, %struct.slgt_info** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @DBGINFO(i8* %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %19 = call i32 @change_params(%struct.slgt_info* %18)
  %20 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CBAUD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = call i64 @C_BAUD(%struct.tty_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @SerialSignal_RTS, align 4
  %32 = load i32, i32* @SerialSignal_DTR, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 1
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %44 = call i32 @set_signals(%struct.slgt_info* %43)
  %45 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %30, %26, %2
  %50 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %51 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CBAUD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %49
  %57 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %58 = call i64 @C_BAUD(%struct.tty_struct* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load i32, i32* @SerialSignal_DTR, align 4
  %62 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %63 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %67 = call i32 @C_CRTSCTS(%struct.tty_struct* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %71 = call i32 @tty_throttled(%struct.tty_struct* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* @SerialSignal_RTS, align 4
  %75 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %76 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %81 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %80, i32 0, i32 1
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %85 = call i32 @set_signals(%struct.slgt_info* %84)
  %86 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 1
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %79, %56, %49
  %91 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CRTSCTS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %99 = call i32 @C_CRTSCTS(%struct.tty_struct* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %103 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = call i32 @tx_release(%struct.tty_struct* %104)
  br label %106

106:                                              ; preds = %101, %97, %90
  ret void
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @change_params(%struct.slgt_info*) #1

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @tx_release(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
