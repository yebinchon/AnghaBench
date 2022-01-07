; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_gate2_to_generic_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_gate2_to_generic_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_SOURCE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_SELECTED_GATE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@NI_660X_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_660X_MAX_UP_DOWN_PIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ni_660x_gate2_to_generic_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_gate2_to_generic_gate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %11
    i32 131, label %13
    i32 132, label %15
    i32 130, label %17
    i32 133, label %19
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_GATE_SELECT, align 4
  store i32 %10, i32* %6, align 4
  br label %68

11:                                               ; preds = %2
  %12 = load i32, i32* @NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT, align 4
  store i32 %12, i32* %6, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %14, i32* %6, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %16, i32* %6, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_GPCT_SELECTED_GATE_GATE_SELECT, align 4
  store i32 %18, i32* %6, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %20, i32* %6, align 4
  br label %68

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @NI_660X_RTSI_GATE2_SEL(i32 %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %22

38:                                               ; preds = %31, %22
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %68

43:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NI_660X_MAX_UP_DOWN_PIN, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @NI_660X_UD_PIN_GATE2_SEL(i32 %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %44

60:                                               ; preds = %53, %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @NI_660X_MAX_UP_DOWN_PIN, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %64, %42, %19, %17, %15, %13, %11, %9
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @NI_660X_RTSI_GATE2_SEL(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_660X_UD_PIN_GATE2_SEL(i32) #1

declare dso_local i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
