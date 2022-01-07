; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_clear_int_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_clear_int_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i32, i64 }
%struct.spi_device = type { i32 }

@WILC_SPI_REG_BASE = common dso_local global i64 0, align 8
@MAX_NUM_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed wilc_spi_write_reg, set reg %x ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unexpected interrupt cleared %d...\0A\00", align 1
@SEL_VMM_TBL0 = common dso_local global i32 0, align 4
@SEL_VMM_TBL1 = common dso_local global i32 0, align 4
@WILC_VMM_TBL_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"fail write reg vmm_tbl_ctl...\0A\00", align 1
@EN_VMM = common dso_local global i32 0, align 4
@WILC_VMM_CORE_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"fail write reg vmm_core_ctl...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32)* @wilc_spi_clear_int_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_clear_int_ext(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.wilc_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.wilc*, %struct.wilc** %4, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 0
  %18 = load %struct.wilc_spi*, %struct.wilc_spi** %17, align 8
  store %struct.wilc_spi* %18, %struct.wilc_spi** %7, align 8
  %19 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %20 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.wilc*, %struct.wilc** %4, align 8
  %25 = load i64, i64* @WILC_SPI_REG_BASE, align 8
  %26 = sub nsw i64 59460, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @spi_internal_write(%struct.wilc* %24, i64 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %148

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MAX_NUM_INT, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %41 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.wilc*, %struct.wilc** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 4296, %51
  %53 = call i32 @wilc_spi_write_reg(%struct.wilc* %49, i32 %52, i32 1)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %38

64:                                               ; preds = %57, %38
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 4296, %71
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %148

75:                                               ; preds = %64
  %76 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %77 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %95, %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MAX_NUM_INT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %79

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %29
  store i32 0, i32* %10, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SEL_VMM_TBL0, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = call i32 @BIT(i32 0)
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @SEL_VMM_TBL1, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call i32 @BIT(i32 1)
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.wilc*, %struct.wilc** %4, align 8
  %119 = load i32, i32* @WILC_VMM_TBL_CTL, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @wilc_spi_write_reg(%struct.wilc* %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %148

129:                                              ; preds = %117
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @EN_VMM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load %struct.wilc*, %struct.wilc** %4, align 8
  %136 = load i32, i32* @WILC_VMM_CORE_CTL, align 4
  %137 = call i32 @wilc_spi_write_reg(%struct.wilc* %135, i32 %136, i32 1)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %148

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %129
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %140, %124, %67, %23
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_internal_write(%struct.wilc*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wilc_spi_write_reg(%struct.wilc*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
