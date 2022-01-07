; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_gate_to_generic_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_gate_to_generic_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_TIMESTAMP_MUX_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_AI_START2_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_AI_START1_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@NI_M_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_M_MAX_PFI_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ni_m_gate_to_generic_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_gate_to_generic_gate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 134, label %11
    i32 129, label %13
    i32 131, label %15
    i32 135, label %17
    i32 130, label %19
    i32 133, label %21
    i32 132, label %23
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NI_GPCT_TIMESTAMP_MUX_GATE_SELECT, align 4
  store i32 %10, i32* %6, align 4
  br label %72

11:                                               ; preds = %2
  %12 = load i32, i32* @NI_GPCT_AI_START2_GATE_SELECT, align 4
  store i32 %12, i32* %6, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT, align 4
  store i32 %14, i32* %6, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %16, i32* %6, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_GPCT_AI_START1_GATE_SELECT, align 4
  store i32 %18, i32* %6, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %20, i32* %6, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* @NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT, align 4
  store i32 %22, i32* %6, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %24, i32* %6, align 4
  br label %72

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @NI_M_RTSI_GATE_SEL(i32 %32)
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %26

42:                                               ; preds = %35, %26
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %72

47:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @NI_M_PFI_GATE_SEL(i32 %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @NI_GPCT_PFI_GATE_SELECT(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %48

64:                                               ; preds = %57, %48
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %67 = icmp ule i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %68, %46, %23, %21, %19, %17, %15, %13, %11, %9
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @NI_M_RTSI_GATE_SEL(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_M_PFI_GATE_SEL(i32) #1

declare dso_local i32 @NI_GPCT_PFI_GATE_SELECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
