; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@GI_M_HW_ARM_SEL_MASK = common dso_local global i32 0, align 4
@GI_660X_HW_ARM_SEL_MASK = common dso_local global i32 0, align 4
@GI_ARM = common dso_local global i32 0, align 4
@GI_ARM_COPY = common dso_local global i32 0, align 4
@NI_GPCT_ARM_UNKNOWN = common dso_local global i32 0, align 4
@GI_HW_ARM_ENA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GI_DISARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_arm(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 1
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %8, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %23 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %27
    i32 130, label %29
  ]

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %21, %25
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @GI_M_HW_ARM_SEL_MASK, align 4
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @GI_660X_HW_ARM_SEL_MASK, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %29, %27, %26
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %43 [
    i32 132, label %33
    i32 131, label %37
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @GI_ARM, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load i32, i32* @GI_ARM, align 4
  %39 = load i32, i32* @GI_ARM_COPY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %64

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NI_GPCT_ARM_UNKNOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @GI_HW_ARM_ENA, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @GI_HW_ARM_SEL(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %52, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %63

60:                                               ; preds = %46, %43
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %87

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %37, %33
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @NITIO_CNT_MODE_REG(i32 %69)
  %71 = load i32, i32* @GI_HW_ARM_ENA, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %68, i32 %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %64
  br label %81

77:                                               ; preds = %3
  %78 = load i32, i32* @GI_DISARM, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @NITIO_CMD_REG(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ni_tio_set_bits_transient(%struct.ni_gpct* %82, i32 %84, i32 0, i32 0, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %60
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @GI_HW_ARM_SEL(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_CNT_MODE_REG(i32) #1

declare dso_local i32 @ni_tio_set_bits_transient(%struct.ni_gpct*, i32, i32, i32, i32) #1

declare dso_local i32 @NITIO_CMD_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
