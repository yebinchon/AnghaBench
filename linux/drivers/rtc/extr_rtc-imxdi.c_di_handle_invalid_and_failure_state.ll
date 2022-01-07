; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_invalid_and_failure_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_invalid_and_failure_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DSR_WTD = common dso_local global i32 0, align 4
@DSR_ETBD = common dso_local global i32 0, align 4
@DSR_ETAD = common dso_local global i32 0, align 4
@DSR_EBD = common dso_local global i32 0, align 4
@DSR_SAD = common dso_local global i32 0, align 4
@DSR_TTD = common dso_local global i32 0, align 4
@DSR_CTD = common dso_local global i32 0, align 4
@DSR_VTD = common dso_local global i32 0, align 4
@DSR_MCO = common dso_local global i32 0, align 4
@DSR_TCO = common dso_local global i32 0, align 4
@DCR = common dso_local global i64 0, align 8
@DCR_TDCHL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DCR_TDCSL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@DTCR = common dso_local global i64 0, align 8
@DSR = common dso_local global i64 0, align 8
@DSR_NVF = common dso_local global i32 0, align 4
@DSR_SVF = common dso_local global i32 0, align 4
@DSR_WBF = common dso_local global i32 0, align 4
@DSR_WNF = common dso_local global i32 0, align 4
@DSR_WCF = common dso_local global i32 0, align 4
@DSR_WEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"There are still some sources of pain in DSR: %08x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Cannot clear the security violation flag. We are ending up in an endless loop!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdi_dev*, i32)* @di_handle_invalid_and_failure_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_handle_invalid_and_failure_state(%struct.imxdi_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imxdi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DSR_WTD, align 4
  %9 = load i32, i32* @DSR_ETBD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DSR_ETAD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DSR_EBD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DSR_SAD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DSR_TTD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DSR_CTD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DSR_VTD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DSR_MCO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DSR_TCO, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %7, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %2
  %30 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %31 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DCR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @__raw_readl(i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DCR_TDCHL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %42 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %154

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DCR_TDCSL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %52 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %154

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %58 = load i64, i64* @DTCR, align 8
  %59 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %57, i32 0, i64 %58)
  %60 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @DSR_WTD, align 4
  %63 = load i32, i32* @DSR_ETBD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DSR_ETAD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @DSR_EBD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DSR_SAD, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DSR_TTD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @DSR_CTD, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DSR_VTD, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DSR_MCO, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DSR_TCO, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %61, %80
  %82 = load i64, i64* @DSR, align 8
  %83 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %60, i32 %81, i64 %82)
  %84 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %85 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DSR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @DSR_NVF, align 4
  %92 = load i32, i32* @DSR_SVF, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @DSR_WBF, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @DSR_WNF, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @DSR_WCF, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @DSR_WEF, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %90, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %56
  %106 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %107 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @DSR_NVF, align 4
  %112 = load i32, i32* @DSR_SVF, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @DSR_WBF, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @DSR_WNF, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @DSR_WCF, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @DSR_WEF, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = and i32 %110, %122
  %124 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %105, %56
  %126 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %127 = load i32, i32* @DSR_SVF, align 4
  %128 = load i64, i64* @DSR, align 8
  %129 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %126, i32 %127, i64 %128)
  %130 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %131 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DSR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readl(i64 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @DSR_SVF, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %125
  %141 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %142 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @dev_crit(i32* %144, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %147 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %154

150:                                              ; preds = %125
  %151 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @di_handle_invalid_state(%struct.imxdi_dev* %151, i32 %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %140, %50, %40
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @di_what_is_to_be_done(%struct.imxdi_dev*, i8*) #1

declare dso_local i32 @di_write_busy_wait(%struct.imxdi_dev*, i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @di_handle_invalid_state(%struct.imxdi_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
