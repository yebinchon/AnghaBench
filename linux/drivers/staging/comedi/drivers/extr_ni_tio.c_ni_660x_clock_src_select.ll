; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clock_src_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clock_src_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_TC_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_660X_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_660X_MAX_SRC_PIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32*)* @ni_660x_clock_src_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_clock_src_select(%struct.ni_gpct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @NITIO_INPUT_SEL_REG(i32 %14)
  %16 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %13, i32 %15)
  %17 = call i32 @GI_BITS_TO_SRC(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %33 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
    i32 134, label %25
    i32 131, label %27
    i32 133, label %29
    i32 132, label %31
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS, align 4
  store i32 %20, i32* %6, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load i32, i32* @NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS, align 4
  store i32 %22, i32* %6, align 4
  br label %80

23:                                               ; preds = %2
  %24 = load i32, i32* @NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS, align 4
  store i32 %24, i32* %6, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load i32, i32* @NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS, align 4
  store i32 %26, i32* %6, align 4
  br label %80

27:                                               ; preds = %2
  %28 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS, align 4
  store i32 %28, i32* %6, align 4
  br label %80

29:                                               ; preds = %2
  %30 = load i32, i32* @NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS, align 4
  store i32 %30, i32* %6, align 4
  br label %80

31:                                               ; preds = %2
  %32 = load i32, i32* @NI_GPCT_NEXT_TC_CLOCK_SRC_BITS, align 4
  store i32 %32, i32* %6, align 4
  br label %80

33:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @NI_660X_RTSI_CLK(i32 %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %34

50:                                               ; preds = %43, %34
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %80

55:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NI_660X_MAX_SRC_PIN, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @NI_660X_SRC_PIN_CLK(i32 %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32 %66)
  store i32 %67, i32* %6, align 4
  br label %72

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %56

72:                                               ; preds = %65, %56
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @NI_660X_MAX_SRC_PIN, align 4
  %75 = icmp ule i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %87

80:                                               ; preds = %76, %54, %31, %29, %27, %25, %23, %21, %19
  %81 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %82 = call i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct* %81)
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @GI_BITS_TO_SRC(i32) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_INPUT_SEL_REG(i32) #1

declare dso_local i32 @NI_660X_RTSI_CLK(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660X_SRC_PIN_CLK(i32) #1

declare dso_local i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
