; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_interrupt_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_interrupt_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i64, i64, i32, i32, i32, i64 (%struct.driver_data*)*, i64 (%struct.driver_data*)* }

@SSCR1 = common dso_local global i32 0, align 4
@SSCR1_TIE = common dso_local global i32 0, align 4
@SSSR_TFS = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSSR_ROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"interrupt_transfer: fifo overrun\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SSSR_TUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"interrupt_transfer: fifo underrun\00", align 1
@SSSR_TINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @interrupt_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_transfer(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = load i32, i32* @SSCR1, align 4
  %11 = call i32 @pxa2xx_spi_read(%struct.driver_data* %9, i32 %10)
  %12 = load i32, i32* @SSCR1_TIE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SSSR_TFS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %18, %15 ], [ %25, %19 ]
  store i32 %27, i32* %4, align 4
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = load i32, i32* @SSSR, align 4
  %30 = call i32 @pxa2xx_spi_read(%struct.driver_data* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SSSR_ROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %39 = call i32 @int_error_stop(%struct.driver_data* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %2, align 4
  br label %159

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SSSR_TUR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %48 = call i32 @int_error_stop(%struct.driver_data* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %2, align 4
  br label %159

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SSSR_TINT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %57 = load i32, i32* @SSSR, align 4
  %58 = load i32, i32* @SSSR_TINT, align 4
  %59 = call i32 @pxa2xx_spi_write(%struct.driver_data* %56, i32 %57, i32 %58)
  %60 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %61 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %60, i32 0, i32 6
  %62 = load i64 (%struct.driver_data*)*, i64 (%struct.driver_data*)** %61, align 8
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = call i64 %62(%struct.driver_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %68 = call i32 @int_transfer_complete(%struct.driver_data* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %2, align 4
  br label %159

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %84, %71
  %73 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %74 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %73, i32 0, i32 6
  %75 = load i64 (%struct.driver_data*)*, i64 (%struct.driver_data*)** %74, align 8
  %76 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %77 = call i64 %75(%struct.driver_data* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %81 = call i32 @int_transfer_complete(%struct.driver_data* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %2, align 4
  br label %159

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 7
  %87 = load i64 (%struct.driver_data*)*, i64 (%struct.driver_data*)** %86, align 8
  %88 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %89 = call i64 %87(%struct.driver_data* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %72, label %91

91:                                               ; preds = %84
  %92 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %93 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %92, i32 0, i32 6
  %94 = load i64 (%struct.driver_data*)*, i64 (%struct.driver_data*)** %93, align 8
  %95 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %96 = call i64 %94(%struct.driver_data* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %100 = call i32 @int_transfer_complete(%struct.driver_data* %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %2, align 4
  br label %159

102:                                              ; preds = %91
  %103 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %104 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %107 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %102
  %111 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %112 = load i32, i32* @SSCR1, align 4
  %113 = call i32 @pxa2xx_spi_read(%struct.driver_data* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @SSCR1_TIE, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %119 = call i64 @pxa25x_ssp_comp(%struct.driver_data* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %110
  %122 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %123 = call i32 @pxa2xx_spi_clear_rx_thre(%struct.driver_data* %122, i32* %7)
  %124 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %128 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %126, %129
  store i32 %130, i32* %6, align 4
  %131 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %132 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %140 [
    i32 4, label %134
    i32 2, label %137
  ]

134:                                              ; preds = %121
  %135 = load i32, i32* %6, align 4
  %136 = ashr i32 %135, 2
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %121
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %121, %137, %134
  %141 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %142 = call i32 @pxa2xx_spi_get_rx_default_thre(%struct.driver_data* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %140
  %149 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @pxa2xx_spi_set_rx_thre(%struct.driver_data* %149, i32* %7, i32 %150)
  br label %152

152:                                              ; preds = %148, %110
  %153 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %154 = load i32, i32* @SSCR1, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @pxa2xx_spi_write(%struct.driver_data* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %102
  %158 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %98, %79, %66, %46, %37
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @int_error_stop(%struct.driver_data*, i8*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @int_transfer_complete(%struct.driver_data*) #1

declare dso_local i64 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_clear_rx_thre(%struct.driver_data*, i32*) #1

declare dso_local i32 @pxa2xx_spi_get_rx_default_thre(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_set_rx_thre(%struct.driver_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
