; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_parse_pinmux_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_parse_pinmux_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_pinctrl = type { i32, %struct.pinctrl_dev* }
%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.rza1_mux_conf = type { i32, i64, i32, i64, i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Missing %s property\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to parse pin configuration options for %pOFn\0A\00", align 1
@MUX_FLAGS_SWIO_INPUT = common dso_local global i64 0, align 8
@MUX_FLAGS_SWIO_OUTPUT = common dso_local global i64 0, align 8
@MUX_PIN_ID_MASK = common dso_local global i32 0, align 4
@RZA1_NPORTS = common dso_local global i32 0, align 4
@RZA1_PINS_PER_PORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Wrong port %u pin %u for %s property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza1_pinctrl*, %struct.device_node*, %struct.rza1_mux_conf*, i32*)* @rza1_parse_pinmux_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_parse_pinmux_node(%struct.rza1_pinctrl* %0, %struct.device_node* %1, %struct.rza1_mux_conf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rza1_pinctrl*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rza1_mux_conf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pinctrl_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.property*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rza1_mux_conf*, align 8
  store %struct.rza1_pinctrl* %0, %struct.rza1_pinctrl** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.rza1_mux_conf* %2, %struct.rza1_mux_conf** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %22, align 8
  store %struct.pinctrl_dev* %23, %struct.pinctrl_dev** %10, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call %struct.property* @of_find_property(%struct.device_node* %24, i8* %25, i32* null)
  store %struct.property* %26, %struct.property** %14, align 8
  %27 = load %struct.property*, %struct.property** %14, align 8
  %28 = icmp ne %struct.property* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %31 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %170

37:                                               ; preds = %4
  %38 = load %struct.property*, %struct.property** %14, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %46 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %44, %struct.pinctrl_dev* %45, i64** %12, i32* %13)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %51 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.device_node*, %struct.device_node** %7, align 8
  %54 = ptrtoint %struct.device_node* %53 to i32
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %5, align 4
  br label %170

57:                                               ; preds = %37
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %16, align 8
  %64 = icmp eq i64 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %87

67:                                               ; preds = %65
  %68 = load i64*, i64** %12, align 8
  %69 = load i32, i32* %17, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pinconf_to_config_param(i64 %72)
  switch i32 %73, label %82 [
    i32 129, label %74
    i32 128, label %78
  ]

74:                                               ; preds = %67
  %75 = load i64, i64* @MUX_FLAGS_SWIO_INPUT, align 8
  %76 = load i64, i64* %16, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %16, align 8
  br label %83

78:                                               ; preds = %67
  %79 = load i64, i64* @MUX_FLAGS_SWIO_OUTPUT, align 8
  %80 = load i64, i64* %16, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %67, %78
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %17, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %58

87:                                               ; preds = %65
  %88 = load i64*, i64** %12, align 8
  %89 = call i32 @kfree(i64* %88)
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %165, %87
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %168

94:                                               ; preds = %90
  %95 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %8, align 8
  %96 = load i32, i32* %17, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %95, i64 %97
  store %struct.rza1_mux_conf* %98, %struct.rza1_mux_conf** %20, align 8
  %99 = load %struct.device_node*, %struct.device_node** %7, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @of_property_read_u32_index(%struct.device_node* %99, i8* %100, i32 %101, i32* %19)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %5, align 4
  br label %170

107:                                              ; preds = %94
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @MUX_PIN_ID_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %112 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %114 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @RZA1_PIN_ID_TO_PORT(i32 %115)
  %117 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %118 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %120 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @RZA1_PIN_ID_TO_PIN(i32 %121)
  %123 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %124 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @MUX_FUNC(i32 %125)
  %127 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %128 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %131 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %133 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RZA1_NPORTS, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %107
  %138 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %139 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RZA1_PINS_PER_PORT, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %137, %107
  %144 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %145 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %148 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %151 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %149, i64 %152, i8* %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %170

157:                                              ; preds = %137
  %158 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %20, align 8
  %159 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %17, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %17, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %90

168:                                              ; preds = %90
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %143, %105, %49, %29
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @RZA1_PIN_ID_TO_PORT(i32) #1

declare dso_local i64 @RZA1_PIN_ID_TO_PIN(i32) #1

declare dso_local i32 @MUX_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
