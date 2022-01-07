; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i8* }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.rza2_pinctrl_priv = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing pinmux property\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MUX_PIN_ID_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Parsed %pOF with %d pins\0A\00", align 1
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to parse DT node %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @rza2_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rza2_pinctrl_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.property*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %22 = call %struct.rza2_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %21)
  store %struct.rza2_pinctrl_priv* %22, %struct.rza2_pinctrl_priv** %10, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call %struct.property* @of_find_property(%struct.device_node* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %24, %struct.property** %18, align 8
  %25 = load %struct.property*, %struct.property** %18, align 8
  %26 = icmp ne %struct.property* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %29 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %183

34:                                               ; preds = %4
  %35 = load %struct.property*, %struct.property** %18, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %42 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @devm_kcalloc(i32 %43, i32 %44, i32 4, i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %48 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @devm_kcalloc(i32 %49, i32 %50, i32 4, i32 %51)
  store i32* %52, i32** %12, align 8
  %53 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %54 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8** @devm_kzalloc(i32 %55, i32 8, i32 %56)
  store i8** %57, i8*** %19, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %34
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8**, i8*** %19, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %60, %34
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %183

69:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @of_property_read_u32_index(%struct.device_node* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %76, i32* %20)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  br label %183

82:                                               ; preds = %74
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* @MUX_PIN_ID_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %20, align 4
  %91 = call i32 @MUX_FUNC(i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %70

99:                                               ; preds = %70
  %100 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %101 = load %struct.device_node*, %struct.device_node** %7, align 8
  %102 = getelementptr inbounds %struct.device_node, %struct.device_node* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @pinctrl_generic_add_group(%struct.pinctrl_dev* %100, i8* %103, i32* %104, i32 %105, i32* null)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %5, align 4
  br label %183

111:                                              ; preds = %99
  %112 = load %struct.device_node*, %struct.device_node** %7, align 8
  %113 = getelementptr inbounds %struct.device_node, %struct.device_node* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8**, i8*** %19, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %118 = load %struct.device_node*, %struct.device_node** %7, align 8
  %119 = getelementptr inbounds %struct.device_node, %struct.device_node* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %19, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @pinmux_generic_add_function(%struct.pinctrl_dev* %117, i8* %120, i8** %121, i32 1, i32* %122)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %14, align 4
  br label %171

128:                                              ; preds = %111
  %129 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %130 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.device_node*, %struct.device_node** %7, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @dev_dbg(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %132, i32 %133)
  %135 = load i32*, i32** %9, align 8
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call %struct.pinctrl_map* @kzalloc(i32 24, i32 %136)
  %138 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %137, %struct.pinctrl_map** %138, align 8
  %139 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %140 = load %struct.pinctrl_map*, %struct.pinctrl_map** %139, align 8
  %141 = icmp ne %struct.pinctrl_map* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %128
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %14, align 4
  br label %167

145:                                              ; preds = %128
  %146 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %147 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %148 = load %struct.pinctrl_map*, %struct.pinctrl_map** %147, align 8
  %149 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load %struct.device_node*, %struct.device_node** %7, align 8
  %151 = getelementptr inbounds %struct.device_node, %struct.device_node* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %154 = load %struct.pinctrl_map*, %struct.pinctrl_map** %153, align 8
  %155 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i8* %152, i8** %157, align 8
  %158 = load %struct.device_node*, %struct.device_node** %7, align 8
  %159 = getelementptr inbounds %struct.device_node, %struct.device_node* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %162 = load %struct.pinctrl_map*, %struct.pinctrl_map** %161, align 8
  %163 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i8* %160, i8** %165, align 8
  %166 = load i32*, i32** %9, align 8
  store i32 1, i32* %166, align 4
  store i32 0, i32* %5, align 4
  br label %183

167:                                              ; preds = %142
  %168 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @pinmux_generic_remove_function(%struct.pinctrl_dev* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %126
  %172 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @pinctrl_generic_remove_group(%struct.pinctrl_dev* %172, i32 %173)
  %175 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %10, align 8
  %176 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.device_node*, %struct.device_node** %7, align 8
  %179 = getelementptr inbounds %struct.device_node, %struct.device_node* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %171, %145, %109, %80, %66, %27
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local %struct.rza2_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i8** @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @MUX_FUNC(i32) #1

declare dso_local i32 @pinctrl_generic_add_group(%struct.pinctrl_dev*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @pinmux_generic_add_function(%struct.pinctrl_dev*, i8*, i8**, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.device_node*, i32) #1

declare dso_local %struct.pinctrl_map* @kzalloc(i32, i32) #1

declare dso_local i32 @pinmux_generic_remove_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @pinctrl_generic_remove_group(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
