; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_sync_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_sync_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i32 }
%struct.spi_device = type { i32 }

@MAX_NUM_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Too many interrupts (%d)...\0A\00", align 1
@WILC_PIN_MUX_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed read reg (%08x)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed write reg (%08x)...\0A\00", align 1
@WILC_INTR_ENABLE = common dso_local global i32 0, align 4
@WILC_INTR2_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32)* @wilc_spi_sync_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_sync_ext(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.wilc_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wilc*, %struct.wilc** %4, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.spi_device* @to_spi_device(i32 %13)
  store %struct.spi_device* %14, %struct.spi_device** %6, align 8
  %15 = load %struct.wilc*, %struct.wilc** %4, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 0
  %17 = load %struct.wilc_spi*, %struct.wilc_spi** %16, align 8
  store %struct.wilc_spi* %17, %struct.wilc_spi** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX_NUM_INT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %144

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %29 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wilc*, %struct.wilc** %4, align 8
  %31 = load i32, i32* @WILC_PIN_MUX_0, align 4
  %32 = call i32 @wilc_spi_read_reg(%struct.wilc* %30, i32 %31, i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load i32, i32* @WILC_PIN_MUX_0, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %144

40:                                               ; preds = %26
  %41 = call i32 @BIT(i32 8)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.wilc*, %struct.wilc** %4, align 8
  %45 = load i32, i32* @WILC_PIN_MUX_0, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @wilc_spi_write_reg(%struct.wilc* %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load i32, i32* @WILC_PIN_MUX_0, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %144

55:                                               ; preds = %40
  %56 = load %struct.wilc*, %struct.wilc** %4, align 8
  %57 = load i32, i32* @WILC_INTR_ENABLE, align 4
  %58 = call i32 @wilc_spi_read_reg(%struct.wilc* %56, i32 %57, i32* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* @WILC_INTR_ENABLE, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 0, i32* %3, align 4
  br label %144

66:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %81, %66
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 5
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 27, %76
  %78 = call i32 @BIT(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %67

86:                                               ; preds = %73
  %87 = load %struct.wilc*, %struct.wilc** %4, align 8
  %88 = load i32, i32* @WILC_INTR_ENABLE, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @wilc_spi_write_reg(%struct.wilc* %87, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 0
  %96 = load i32, i32* @WILC_INTR_ENABLE, align 4
  %97 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  store i32 0, i32* %3, align 4
  br label %144

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %98
  %102 = load %struct.wilc*, %struct.wilc** %4, align 8
  %103 = load i32, i32* @WILC_INTR2_ENABLE, align 4
  %104 = call i32 @wilc_spi_read_reg(%struct.wilc* %102, i32 %103, i32* %8)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 0
  %110 = load i32, i32* @WILC_INTR2_ENABLE, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %144

112:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %117, 0
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ false, %113 ], [ %118, %116 ]
  br i1 %120, label %121, label %131

121:                                              ; preds = %119
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %5, align 4
  br label %113

131:                                              ; preds = %119
  %132 = load %struct.wilc*, %struct.wilc** %4, align 8
  %133 = load i32, i32* @WILC_INTR2_ENABLE, align 4
  %134 = call i32 @wilc_spi_read_reg(%struct.wilc* %132, i32 %133, i32* %8)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %131
  %138 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %139 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %138, i32 0, i32 0
  %140 = load i32, i32* @WILC_INTR2_ENABLE, align 4
  %141 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  store i32 0, i32* %3, align 4
  br label %144

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %98
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %137, %107, %93, %61, %50, %35, %21
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wilc_spi_read_reg(%struct.wilc*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wilc_spi_write_reg(%struct.wilc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
