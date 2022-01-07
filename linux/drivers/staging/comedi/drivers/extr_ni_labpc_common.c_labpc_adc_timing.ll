; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_adc_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_adc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_8254* }
%struct.comedi_8254 = type { i32, i32, i32, i32 }
%struct.comedi_cmd = type { i32 }

@I8254_MAX_COUNT = common dso_local global i32 0, align 4
@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*, i32)* @labpc_adc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_adc_timing(%struct.comedi_device* %0, %struct.comedi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_8254*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_8254*, %struct.comedi_8254** %12, align 8
  store %struct.comedi_8254* %13, %struct.comedi_8254** %7, align 8
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %125

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %26, 1
  %28 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I8254_MAX_COUNT, align 4
  %32 = mul i32 %30, %31
  %33 = udiv i32 %27, %32
  %34 = add i32 %33, 1
  %35 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %37, i32 0, i32 0
  %39 = call i32 @comedi_check_trigger_arg_min(i32* %38, i32 2)
  %40 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %40, i32 0, i32 0
  %42 = load i32, i32* @I8254_MAX_COUNT, align 4
  %43 = call i32 @comedi_check_trigger_arg_max(i32* %41, i32 %42)
  %44 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %56 [
    i32 129, label %57
    i32 128, label %70
    i32 130, label %83
  ]

56:                                               ; preds = %25
  br label %57

57:                                               ; preds = %25, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @DIV_ROUND_CLOSEST(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @DIV_ROUND_CLOSEST(i32 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %94

70:                                               ; preds = %25
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @DIV_ROUND_UP(i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @DIV_ROUND_UP(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %94

83:                                               ; preds = %25
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = udiv i32 %84, %85
  %87 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = udiv i32 %89, %90
  %92 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %83, %70, %57
  %95 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %95, i32 0, i32 2
  %97 = call i32 @comedi_check_trigger_arg_min(i32* %96, i32 2)
  %98 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %98, i32 0, i32 2
  %100 = load i32, i32* @I8254_MAX_COUNT, align 4
  %101 = call i32 @comedi_check_trigger_arg_max(i32* %99, i32 %100)
  %102 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %102, i32 0, i32 3
  %104 = call i32 @comedi_check_trigger_arg_min(i32* %103, i32 2)
  %105 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %105, i32 0, i32 3
  %107 = load i32, i32* @I8254_MAX_COUNT, align 4
  %108 = call i32 @comedi_check_trigger_arg_max(i32* %106, i32 %107)
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %111, %114
  %116 = call i32 @labpc_set_ai_convert_period(%struct.comedi_cmd* %109, i32 %110, i32 %115)
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = mul i32 %119, %122
  %124 = call i32 @labpc_set_ai_scan_period(%struct.comedi_cmd* %117, i32 %118, i32 %123)
  br label %158

125:                                              ; preds = %22, %3
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %129, i32* %9, i32 %132)
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @labpc_set_ai_scan_period(%struct.comedi_cmd* %134, i32 %135, i32 %136)
  br label %157

138:                                              ; preds = %125
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %142, i32* %8, i32 %145)
  %147 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %148 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @labpc_set_ai_convert_period(%struct.comedi_cmd* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %141, %138
  br label %157

157:                                              ; preds = %156, %128
  br label %158

158:                                              ; preds = %157, %94
  ret void
}

declare dso_local i32 @labpc_ai_convert_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @labpc_ai_scan_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @labpc_set_ai_convert_period(%struct.comedi_cmd*, i32, i32) #1

declare dso_local i32 @labpc_set_ai_scan_period(%struct.comedi_cmd*, i32, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
