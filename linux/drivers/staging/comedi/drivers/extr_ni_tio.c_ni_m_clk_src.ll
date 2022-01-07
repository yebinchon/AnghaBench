; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@NI_M_TIMEBASE_1_CLK = common dso_local global i32 0, align 4
@NI_M_TIMEBASE_2_CLK = common dso_local global i32 0, align 4
@NI_M_TIMEBASE_3_CLK = common dso_local global i32 0, align 4
@NI_M_LOGIC_LOW_CLK = common dso_local global i32 0, align 4
@NI_M_NEXT_GATE_CLK = common dso_local global i32 0, align 4
@NI_M_NEXT_TC_CLK = common dso_local global i32 0, align 4
@NI_M_PXI10_CLK = common dso_local global i32 0, align 4
@NI_M_PXI_STAR_TRIGGER_CLK = common dso_local global i32 0, align 4
@NI_M_ANALOG_TRIGGER_OUT_CLK = common dso_local global i32 0, align 4
@NI_M_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_M_MAX_PFI_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ni_m_clk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_clk_src(i32 %0, i32* %1) #0 {
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
  switch i32 %12, label %31 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
    i32 135, label %19
    i32 134, label %21
    i32 133, label %23
    i32 132, label %25
    i32 131, label %27
    i32 136, label %29
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_M_TIMEBASE_1_CLK, align 4
  store i32 %14, i32* %7, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_M_TIMEBASE_2_CLK, align 4
  store i32 %16, i32* %7, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_M_TIMEBASE_3_CLK, align 4
  store i32 %18, i32* %7, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_M_LOGIC_LOW_CLK, align 4
  store i32 %20, i32* %7, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* @NI_M_NEXT_GATE_CLK, align 4
  store i32 %22, i32* %7, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load i32, i32* @NI_M_NEXT_TC_CLK, align 4
  store i32 %24, i32* %7, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load i32, i32* @NI_M_PXI10_CLK, align 4
  store i32 %26, i32* %7, align 4
  br label %78

27:                                               ; preds = %2
  %28 = load i32, i32* @NI_M_PXI_STAR_TRIGGER_CLK, align 4
  store i32 %28, i32* %7, align 4
  br label %78

29:                                               ; preds = %2
  %30 = load i32, i32* @NI_M_ANALOG_TRIGGER_OUT_CLK, align 4
  store i32 %30, i32* %7, align 4
  br label %78

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @NI_M_RTSI_CLK(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %32

48:                                               ; preds = %41, %32
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %78

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32 %60)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @NI_M_PFI_CLK(i32 %64)
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %54

70:                                               ; preds = %63, %54
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %82

78:                                               ; preds = %74, %52, %29, %27, %25, %23, %21, %19, %17, %15, %13
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @GI_SRC_SEL(i32 %79)
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_RTSI_CLK(i32) #1

declare dso_local i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_PFI_CLK(i32) #1

declare dso_local i32 @GI_SRC_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
