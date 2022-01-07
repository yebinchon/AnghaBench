; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@NI_GPCT_DISABLED_GATE_SELECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_set_gate_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 0
  %13 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %12, align 8
  store %struct.ni_gpct_device* %13, %struct.ni_gpct_device** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  %16 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %81 [
    i32 0, label %20
    i32 1, label %47
  ]

20:                                               ; preds = %3
  %21 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %22 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %23 = call i32 @ni_tio_set_gate_mode(%struct.ni_gpct* %21, i32 %22)
  %24 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %25 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %27
    i32 130, label %31
  ]

27:                                               ; preds = %20, %20
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ni_m_set_gate(%struct.ni_gpct* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ni_660x_set_gate(%struct.ni_gpct* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %85

43:                                               ; preds = %38
  %44 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ni_tio_set_gate_mode(%struct.ni_gpct* %44, i32 %45)
  br label %84

47:                                               ; preds = %3
  %48 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %49 = call i32 @ni_tio_has_gate2_registers(%struct.ni_gpct_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %85

54:                                               ; preds = %47
  %55 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %56 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %57 = call i32 @ni_tio_set_gate2_mode(%struct.ni_gpct* %55, i32 %56)
  %58 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %59 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %69 [
    i32 128, label %61
    i32 130, label %65
  ]

61:                                               ; preds = %54
  %62 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ni_m_set_gate2(%struct.ni_gpct* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %72

65:                                               ; preds = %54
  %66 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ni_660x_set_gate2(%struct.ni_gpct* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %54
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %85

72:                                               ; preds = %65, %61
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %72
  %78 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ni_tio_set_gate2_mode(%struct.ni_gpct* %78, i32 %79)
  br label %84

81:                                               ; preds = %3
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %77, %43
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81, %75, %69, %51, %41, %35
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_set_gate_mode(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_m_set_gate(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_660x_set_gate(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_has_gate2_registers(%struct.ni_gpct_device*) #1

declare dso_local i32 @ni_tio_set_gate2_mode(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_m_set_gate2(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_660x_set_gate2(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
