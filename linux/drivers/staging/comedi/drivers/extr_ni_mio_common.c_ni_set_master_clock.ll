; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_set_master_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_set_master_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32, i32, i64 }

@NI_MIO_INTERNAL_CLOCK = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIG_USE_CLK = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIG_DIR_REG = common dso_local global i32 0, align 4
@TIMEBASE_1_NS = common dso_local global i32 0, align 4
@NI_M_CLK_FOUT2_TIMEBASE1_PLL = common dso_local global i32 0, align 4
@NI_M_CLK_FOUT2_TIMEBASE3_PLL = common dso_local global i32 0, align 4
@NI_M_CLK_FOUT2_REG = common dso_local global i32 0, align 4
@NI_M_PLL_CTRL_REG = common dso_local global i32 0, align 4
@NI_MIO_RTSI_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"we don't handle an unspecified clock period correctly yet, returning error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_set_master_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_set_master_clock(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  store %struct.ni_private* %11, %struct.ni_private** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NI_MIO_INTERNAL_CLOCK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  %16 = load i32, i32* @NISTC_RTSI_TRIG_USE_CLK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %24 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NISTC_RTSI_TRIG_DIR_REG, align 4
  %27 = call i32 @ni_stc_writew(%struct.comedi_device* %22, i32 %25, i32 %26)
  %28 = load i32, i32* @TIMEBASE_1_NS, align 4
  %29 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %32 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %15
  %36 = load i32, i32* @NI_M_CLK_FOUT2_TIMEBASE1_PLL, align 4
  %37 = load i32, i32* @NI_M_CLK_FOUT2_TIMEBASE3_PLL, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %41 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NI_M_CLK_FOUT2_REG, align 4
  %49 = call i32 @ni_writew(%struct.comedi_device* %44, i32 %47, i32 %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = load i32, i32* @NI_M_PLL_CTRL_REG, align 4
  %52 = call i32 @ni_writew(%struct.comedi_device* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %35, %15
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %56 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %104

57:                                               ; preds = %3
  %58 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %59 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ni_mseries_set_pll_master_clock(%struct.comedi_device* %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @NI_MIO_RTSI_CLOCK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i32, i32* @NISTC_RTSI_TRIG_USE_CLK, align 4
  %73 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %74 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %78 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %79 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NISTC_RTSI_TRIG_DIR_REG, align 4
  %82 = call i32 @ni_stc_writew(%struct.comedi_device* %77, i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %71
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %95 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %98 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %102

99:                                               ; preds = %67
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %105

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %53
  store i32 3, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %99, %85, %62
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_mseries_set_pll_master_clock(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
