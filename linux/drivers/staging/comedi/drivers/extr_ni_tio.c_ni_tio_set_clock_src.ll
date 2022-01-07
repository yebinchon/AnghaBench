; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_clock_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_clock_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32, %struct.comedi_device* }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid clock source 0x%x\0A\00", align 1
@NI_GPCT_INVERT_CLOCK_SRC_BIT = common dso_local global i32 0, align 4
@GI_SRC_POL_INVERT = common dso_local global i32 0, align 4
@GI_SRC_SEL_MASK = common dso_local global i32 0, align 4
@NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32)* @ni_tio_set_clock_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_set_clock_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.comedi_device*, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 2
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %8, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %20 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %26 [
    i32 130, label %22
    i32 129, label %25
    i32 128, label %25
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ni_660x_clk_src(i32 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  br label %29

25:                                               ; preds = %3, %3
  br label %26

26:                                               ; preds = %3, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ni_m_clk_src(i32 %27, i32* %10)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %34 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %33, i32 0, i32 1
  %35 = load %struct.comedi_device*, %struct.comedi_device** %34, align 8
  store %struct.comedi_device* %35, %struct.comedi_device** %12, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %110

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NI_GPCT_INVERT_CLOCK_SRC_BIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @GI_SRC_POL_INVERT, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @NITIO_INPUT_SEL_REG(i32 %53)
  %55 = load i32, i32* @GI_SRC_SEL_MASK, align 4
  %56 = load i32, i32* @GI_SRC_POL_INVERT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %52, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ni_tio_set_source_subselect(%struct.ni_gpct* %60, i32 %61)
  %63 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %64 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %85 [
    i32 133, label %70
    i32 132, label %71
    i32 131, label %78
  ]

70:                                               ; preds = %66
  br label %88

71:                                               ; preds = %66
  %72 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %73 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @GI_PRESCALE_X2(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %88

78:                                               ; preds = %66
  %79 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %80 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @GI_PRESCALE_X8(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %88

85:                                               ; preds = %66
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %110

88:                                               ; preds = %78, %71, %70
  %89 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @NITIO_CNT_MODE_REG(i32 %90)
  %92 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %93 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @GI_PRESCALE_X2(i32 %94)
  %96 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %97 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @GI_PRESCALE_X8(i32 %98)
  %100 = or i32 %95, %99
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %89, i32 %91, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %88, %51
  %104 = load i32, i32* %7, align 4
  %105 = mul i32 %104, 1000
  %106 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %107 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %109 = call i32 @ni_tio_set_sync_mode(%struct.ni_gpct* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %85, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ni_660x_clk_src(i32, i32*) #1

declare dso_local i32 @ni_m_clk_src(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_INPUT_SEL_REG(i32) #1

declare dso_local i32 @ni_tio_set_source_subselect(%struct.ni_gpct*, i32) #1

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @GI_PRESCALE_X2(i32) #1

declare dso_local i32 @GI_PRESCALE_X8(i32) #1

declare dso_local i32 @NITIO_CNT_MODE_REG(i32) #1

declare dso_local i32 @ni_tio_set_sync_mode(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
