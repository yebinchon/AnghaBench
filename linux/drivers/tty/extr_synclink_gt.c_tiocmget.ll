; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.slgt_info* }
%struct.slgt_info = type { i32, i32, i32 }

@SerialSignal_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SerialSignal_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@SerialSignal_RI = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@SerialSignal_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@SerialSignal_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s tiocmget value=%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  store %struct.slgt_info* %8, %struct.slgt_info** %3, align 8
  %9 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %10 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %9, i32 0, i32 2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = call i32 @get_signals(%struct.slgt_info* %13)
  %15 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SerialSignal_RTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @TIOCM_RTS, align 4
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SerialSignal_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @TIOCM_DTR, align 4
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = add i32 %29, %40
  %42 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SerialSignal_DCD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @TIOCM_CAR, align 4
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = add i32 %41, %52
  %54 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SerialSignal_RI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @TIOCM_RNG, align 4
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = add i32 %53, %64
  %66 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %67 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SerialSignal_DSR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @TIOCM_DSR, align 4
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = add i32 %65, %76
  %78 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SerialSignal_CTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @TIOCM_CTS, align 4
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = add i32 %77, %88
  store i32 %89, i32* %4, align 4
  %90 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %91 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @DBGINFO(i8* %95)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_signals(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGINFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
