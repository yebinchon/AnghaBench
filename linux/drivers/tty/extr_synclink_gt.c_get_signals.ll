; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_get_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_get_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32 }

@SSR = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i16 0, align 2
@SerialSignal_DSR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i16 0, align 2
@SerialSignal_CTS = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@SerialSignal_DCD = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i16 0, align 2
@SerialSignal_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @get_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_signals(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @SSR, align 4
  %6 = call zeroext i16 @rd_reg16(%struct.slgt_info* %4, i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load i32, i32* @SerialSignal_RTS, align 4
  %8 = load i32, i32* @SerialSignal_DTR, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @BIT3, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @SerialSignal_DSR, align 4
  %22 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i16, i16* %3, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @BIT2, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @SerialSignal_CTS, align 4
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i16, i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @BIT1, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @SerialSignal_DCD, align 4
  %48 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i16, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @BIT0, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @SerialSignal_RI, align 4
  %61 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %52
  ret void
}

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
