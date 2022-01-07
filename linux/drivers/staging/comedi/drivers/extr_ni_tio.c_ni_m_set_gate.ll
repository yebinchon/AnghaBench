; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_set_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@NI_M_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_M_MAX_PFI_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_m_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_set_gate(%struct.ni_gpct* %0, i32 %1) #0 {
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
  switch i32 %11, label %15 [
    i32 128, label %12
    i32 134, label %12
    i32 129, label %12
    i32 131, label %12
    i32 135, label %12
    i32 130, label %12
    i32 133, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 31
  store i32 %14, i32* %7, align 4
  br label %62

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %22)
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 31
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %16

32:                                               ; preds = %25, %16
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %62

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @NI_GPCT_PFI_GATE_SELECT(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 31
  store i32 %49, i32* %7, align 4
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %47, %38
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %58, %36, %12
  %63 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ni_tio_set_gate_raw(%struct.ni_gpct* %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_GPCT_PFI_GATE_SELECT(i32) #1

declare dso_local i32 @ni_tio_set_gate_raw(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
