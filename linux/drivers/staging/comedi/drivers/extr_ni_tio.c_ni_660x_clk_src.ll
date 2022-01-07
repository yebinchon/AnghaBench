; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@NI_660X_TIMEBASE_1_CLK = common dso_local global i32 0, align 4
@NI_660X_TIMEBASE_2_CLK = common dso_local global i32 0, align 4
@NI_660X_TIMEBASE_3_CLK = common dso_local global i32 0, align 4
@NI_660X_LOGIC_LOW_CLK = common dso_local global i32 0, align 4
@NI_660X_SRC_PIN_I_CLK = common dso_local global i32 0, align 4
@NI_660X_NEXT_GATE_CLK = common dso_local global i32 0, align 4
@NI_660X_NEXT_TC_CLK = common dso_local global i32 0, align 4
@NI_660X_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_660X_MAX_SRC_PIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ni_660x_clk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_clk_src(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NI_GPCT_CLOCK_SRC_SELECT_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %27 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
    i32 134, label %19
    i32 131, label %21
    i32 133, label %23
    i32 132, label %25
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_660X_TIMEBASE_1_CLK, align 4
  store i32 %14, i32* %7, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_660X_TIMEBASE_2_CLK, align 4
  store i32 %16, i32* %7, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_660X_TIMEBASE_3_CLK, align 4
  store i32 %18, i32* %7, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_660X_LOGIC_LOW_CLK, align 4
  store i32 %20, i32* %7, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load i32, i32* @NI_660X_SRC_PIN_I_CLK, align 4
  store i32 %22, i32* %7, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* @NI_660X_NEXT_GATE_CLK, align 4
  store i32 %24, i32* %7, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load i32, i32* @NI_660X_NEXT_TC_CLK, align 4
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @NI_660X_RTSI_CLK(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %28

44:                                               ; preds = %37, %28
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %74

49:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @NI_660X_MAX_SRC_PIN, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32 %56)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @NI_660X_SRC_PIN_CLK(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %66

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %50

66:                                               ; preds = %59, %50
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @NI_660X_MAX_SRC_PIN, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %70, %48, %25, %23, %21, %19, %17, %15, %13
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GI_SRC_SEL(i32 %75)
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660X_RTSI_CLK(i32) #1

declare dso_local i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660X_SRC_PIN_CLK(i32) #1

declare dso_local i32 @GI_SRC_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
