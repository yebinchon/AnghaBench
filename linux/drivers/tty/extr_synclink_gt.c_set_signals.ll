; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_set_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32 }

@VCR = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i8 0, align 1
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @set_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_signals(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i8, align 1
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @VCR, align 4
  %6 = call zeroext i8 @rd_reg8(%struct.slgt_info* %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SerialSignal_DTR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i8, i8* @BIT3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  br label %28

20:                                               ; preds = %1
  %21 = load i8, i8* @BIT3, align 1
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, -1
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %20, %13
  %29 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SerialSignal_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8, i8* @BIT2, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %3, align 1
  br label %50

42:                                               ; preds = %28
  %43 = load i8, i8* @BIT2, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %3, align 1
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = load i32, i32* @VCR, align 4
  %53 = load i8, i8* %3, align 1
  %54 = call i32 @wr_reg8(%struct.slgt_info* %51, i32 %52, i8 zeroext %53)
  ret void
}

declare dso_local zeroext i8 @rd_reg8(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
