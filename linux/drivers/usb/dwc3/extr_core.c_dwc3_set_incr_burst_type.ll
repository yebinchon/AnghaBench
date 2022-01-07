; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_set_incr_burst_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_set_incr_burst_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.device* }
%struct.device = type { i32 }

@DWC3_GSBUSCFG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"snps,incr-burst-type-adjustment\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error to get memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error to get property\0A\00", align 1
@INCRX_UNDEF_LENGTH_BURST_MODE = common dso_local global i32 0, align 4
@INCRX_BURST_MODE = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCRBRST_MASK = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCRBRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR256BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR128BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR64BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR32BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR16BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR8BRSTENA = common dso_local global i32 0, align 4
@DWC3_GSBUSCFG0_INCR4BRSTENA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_set_incr_burst_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_set_incr_burst_type(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DWC3_GSBUSCFG0, align 4
  %18 = call i32 @dwc3_readl(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_property_count_u32(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %131

24:                                               ; preds = %1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kcalloc(i32 %25, i32 4, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %131

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @device_property_read_u32_array(%struct.device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %131

45:                                               ; preds = %33
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load i32, i32* @INCRX_UNDEF_LENGTH_BURST_MODE, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %71, %50
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %52

74:                                               ; preds = %52
  br label %77

75:                                               ; preds = %45
  %76 = load i32, i32* @INCRX_BURST_MODE, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load i32, i32* @DWC3_GSBUSCFG0_INCRBRST_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @DWC3_GSBUSCFG0_INCRBRSTENA, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %77
  %91 = load i32, i32* %5, align 4
  switch i32 %91, label %121 [
    i32 256, label %92
    i32 128, label %96
    i32 64, label %100
    i32 32, label %104
    i32 16, label %108
    i32 8, label %112
    i32 4, label %116
    i32 1, label %120
  ]

92:                                               ; preds = %90
  %93 = load i32, i32* @DWC3_GSBUSCFG0_INCR256BRSTENA, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %124

96:                                               ; preds = %90
  %97 = load i32, i32* @DWC3_GSBUSCFG0_INCR128BRSTENA, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %124

100:                                              ; preds = %90
  %101 = load i32, i32* @DWC3_GSBUSCFG0_INCR64BRSTENA, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %124

104:                                              ; preds = %90
  %105 = load i32, i32* @DWC3_GSBUSCFG0_INCR32BRSTENA, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %124

108:                                              ; preds = %90
  %109 = load i32, i32* @DWC3_GSBUSCFG0_INCR16BRSTENA, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %124

112:                                              ; preds = %90
  %113 = load i32, i32* @DWC3_GSBUSCFG0_INCR8BRSTENA, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %124

116:                                              ; preds = %90
  %117 = load i32, i32* @DWC3_GSBUSCFG0_INCR4BRSTENA, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %124

120:                                              ; preds = %90
  br label %124

121:                                              ; preds = %90
  %122 = load %struct.device*, %struct.device** %3, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %120, %116, %112, %108, %104, %100, %96, %92
  %125 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %126 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DWC3_GSBUSCFG0, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @dwc3_writel(i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %40, %30, %23
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
