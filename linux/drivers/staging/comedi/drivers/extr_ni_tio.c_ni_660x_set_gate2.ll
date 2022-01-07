; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_gate2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_gate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@NI_660X_NEXT_SRC_GATE2_SEL = common dso_local global i32 0, align 4
@NI_660X_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_660X_MAX_UP_DOWN_PIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_660x_set_gate2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_set_gate2(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @CR_CHAN(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %17 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %12
    i32 132, label %12
    i32 133, label %12
    i32 131, label %15
  ]

12:                                               ; preds = %2, %2, %2, %2, %2
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 31
  store i32 %14, i32* %7, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_660X_NEXT_SRC_GATE2_SEL, align 4
  store i32 %16, i32* %7, align 4
  br label %64

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %24)
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 31
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %27, %18
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NI_660X_MAX_RTSI_CHAN, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %64

39:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NI_660X_MAX_UP_DOWN_PIN, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32 %46)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 31
  store i32 %51, i32* %7, align 4
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %40

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NI_660X_MAX_UP_DOWN_PIN, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %60, %38, %15, %12
  %65 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ni_tio_set_gate2_raw(%struct.ni_gpct* %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32) #1

declare dso_local i32 @ni_tio_set_gate2_raw(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
