; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_txidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_txidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@IDLEMODE_FLAGS = common dso_local global i64 0, align 8
@IDLEMODE_ALT_ONE_ZERO = common dso_local global i64 0, align 8
@IDLEMODE_ZERO = common dso_local global i64 0, align 8
@IDLEMODE_ONE = common dso_local global i64 0, align 8
@IDLEMODE_ALT_MARK_SPACE = common dso_local global i64 0, align 8
@IDLEMODE_SPACE = common dso_local global i64 0, align 8
@IDLEMODE_MARK = common dso_local global i64 0, align 8
@IDLEMODE_MASK = common dso_local global i32 0, align 4
@TCSR = common dso_local global i32 0, align 4
@MGSL_MODE_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_txidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_txidle(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %5 = load i64, i64* @IDLEMODE_FLAGS, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %7 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %23 [
    i32 132, label %9
    i32 133, label %11
    i32 128, label %13
    i32 130, label %15
    i32 134, label %17
    i32 129, label %19
    i32 131, label %21
  ]

9:                                                ; preds = %1
  %10 = load i64, i64* @IDLEMODE_FLAGS, align 8
  store i64 %10, i64* %3, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load i64, i64* @IDLEMODE_ALT_ONE_ZERO, align 8
  store i64 %12, i64* %3, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @IDLEMODE_ZERO, align 8
  store i64 %14, i64* %3, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load i64, i64* @IDLEMODE_ONE, align 8
  store i64 %16, i64* %3, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load i64, i64* @IDLEMODE_ALT_MARK_SPACE, align 8
  store i64 %18, i64* %3, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load i64, i64* @IDLEMODE_SPACE, align 8
  store i64 %20, i64* %3, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @IDLEMODE_MARK, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %1, %21, %19, %17, %15, %13, %11, %9
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @IDLEMODE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %35 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %41 = load i32, i32* @TCSR, align 4
  %42 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %43 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usc_OutReg(%struct.mgsl_struct* %40, i32 %41, i32 %44)
  %46 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %47 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MGSL_MODE_RAW, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %23
  store i8 0, i8* %4, align 1
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %61 [
    i32 132, label %56
    i32 133, label %57
    i32 128, label %58
    i32 129, label %58
    i32 130, label %59
    i32 131, label %59
    i32 134, label %60
  ]

56:                                               ; preds = %52
  store i8 126, i8* %4, align 1
  br label %61

57:                                               ; preds = %52
  store i8 85, i8* %4, align 1
  br label %61

58:                                               ; preds = %52, %52
  store i8 0, i8* %4, align 1
  br label %61

59:                                               ; preds = %52, %52
  store i8 -1, i8* %4, align 1
  br label %61

60:                                               ; preds = %52
  store i8 -86, i8* %4, align 1
  br label %61

61:                                               ; preds = %52, %60, %59, %58, %57, %56
  %62 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %63 = load i8, i8* %4, align 1
  %64 = load i8, i8* %4, align 1
  %65 = call i32 @usc_SetTransmitSyncChars(%struct.mgsl_struct* %62, i8 zeroext %63, i8 zeroext %64)
  br label %66

66:                                               ; preds = %61, %23
  ret void
}

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_SetTransmitSyncChars(%struct.mgsl_struct*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
