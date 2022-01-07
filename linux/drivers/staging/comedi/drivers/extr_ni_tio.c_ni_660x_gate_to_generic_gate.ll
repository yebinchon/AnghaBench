; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_gate_to_generic_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_gate_to_generic_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_SOURCE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_GATE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@NI_660X_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_660X_MAX_GATE_PIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ni_660x_gate_to_generic_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_gate_to_generic_gate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %19 [
    i32 128, label %9
    i32 132, label %11
    i32 129, label %13
    i32 130, label %15
    i32 131, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_GATE_SELECT, align 4
  store i32 %10, i32* %6, align 4
  br label %66

11:                                               ; preds = %2
  %12 = load i32, i32* @NI_GPCT_GATE_PIN_i_GATE_SELECT, align 4
  store i32 %12, i32* %6, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %14, i32* %6, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %16, i32* %6, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %18, i32* %6, align 4
  br label %66

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @NI_660X_RTSI_GATE_SEL(i32 %26)
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %29, %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %66

41:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NI_660X_MAX_GATE_PIN, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @NI_660X_PIN_GATE_SEL(i32 %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %42

58:                                               ; preds = %51, %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NI_660X_MAX_GATE_PIN, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %62, %40, %17, %15, %13, %11, %9
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @NI_660X_RTSI_GATE_SEL(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_660X_PIN_GATE_SEL(i32) #1

declare dso_local i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
