; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.aspeed_pinctrl_data = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.aspeed_pin_function*, %struct.aspeed_pin_group* }
%struct.aspeed_pin_function = type { i32 }
%struct.aspeed_pin_group = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.aspeed_pin_desc* }
%struct.aspeed_pin_desc = type { i32, %struct.aspeed_sig_expr*** }
%struct.aspeed_sig_expr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Muxing pin %d for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"No function %s found on pin %s (%d). Found signal(s) %s for function(s) %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_pinctrl_data*, align 8
  %11 = alloca %struct.aspeed_pin_group*, align 8
  %12 = alloca %struct.aspeed_pin_function*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.aspeed_pin_desc*, align 8
  %15 = alloca %struct.aspeed_sig_expr*, align 8
  %16 = alloca %struct.aspeed_sig_expr**, align 8
  %17 = alloca %struct.aspeed_sig_expr***, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %21 = call %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %20)
  store %struct.aspeed_pinctrl_data* %21, %struct.aspeed_pinctrl_data** %10, align 8
  %22 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %23 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.aspeed_pin_group*, %struct.aspeed_pin_group** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.aspeed_pin_group, %struct.aspeed_pin_group* %25, i64 %27
  store %struct.aspeed_pin_group* %28, %struct.aspeed_pin_group** %11, align 8
  %29 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %30 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.aspeed_pin_function*, %struct.aspeed_pin_function** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.aspeed_pin_function, %struct.aspeed_pin_function* %32, i64 %34
  store %struct.aspeed_pin_function* %35, %struct.aspeed_pin_function** %12, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %135, %3
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.aspeed_pin_group*, %struct.aspeed_pin_group** %11, align 8
  %39 = getelementptr inbounds %struct.aspeed_pin_group, %struct.aspeed_pin_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %138

42:                                               ; preds = %36
  %43 = load %struct.aspeed_pin_group*, %struct.aspeed_pin_group** %11, align 8
  %44 = getelementptr inbounds %struct.aspeed_pin_group, %struct.aspeed_pin_group* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %51 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %56, align 8
  store %struct.aspeed_pin_desc* %57, %struct.aspeed_pin_desc** %14, align 8
  store %struct.aspeed_sig_expr* null, %struct.aspeed_sig_expr** %15, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.aspeed_pin_function*, %struct.aspeed_pin_function** %12, align 8
  %60 = getelementptr inbounds %struct.aspeed_pin_function, %struct.aspeed_pin_function* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %14, align 8
  %64 = icmp ne %struct.aspeed_pin_desc* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %42
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %139

68:                                               ; preds = %42
  %69 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %14, align 8
  %70 = getelementptr inbounds %struct.aspeed_pin_desc, %struct.aspeed_pin_desc* %69, i32 0, i32 1
  %71 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %70, align 8
  store %struct.aspeed_sig_expr*** %71, %struct.aspeed_sig_expr**** %17, align 8
  %72 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %17, align 8
  %73 = icmp ne %struct.aspeed_sig_expr*** %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %135

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %98, %75
  %77 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %17, align 8
  %78 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %77, align 8
  store %struct.aspeed_sig_expr** %78, %struct.aspeed_sig_expr*** %16, align 8
  %79 = icmp ne %struct.aspeed_sig_expr** %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %16, align 8
  %82 = load %struct.aspeed_pin_function*, %struct.aspeed_pin_function** %12, align 8
  %83 = getelementptr inbounds %struct.aspeed_pin_function, %struct.aspeed_pin_function* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.aspeed_sig_expr* @aspeed_find_expr_by_name(%struct.aspeed_sig_expr** %81, i32 %84)
  store %struct.aspeed_sig_expr* %85, %struct.aspeed_sig_expr** %15, align 8
  %86 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %15, align 8
  %87 = icmp ne %struct.aspeed_sig_expr* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %101

89:                                               ; preds = %80
  %90 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %91 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %90, i32 0, i32 0
  %92 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %16, align 8
  %93 = call i32 @aspeed_disable_sig(%struct.TYPE_5__* %91, %struct.aspeed_sig_expr** %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %139

98:                                               ; preds = %89
  %99 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %17, align 8
  %100 = getelementptr inbounds %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %99, i32 1
  store %struct.aspeed_sig_expr*** %100, %struct.aspeed_sig_expr**** %17, align 8
  br label %76

101:                                              ; preds = %88, %76
  %102 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %15, align 8
  %103 = icmp ne %struct.aspeed_sig_expr* %102, null
  br i1 %103, label %125, label %104

104:                                              ; preds = %101
  %105 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %14, align 8
  %106 = call i8* @get_defined_functions(%struct.aspeed_pin_desc* %105)
  store i8* %106, i8** %18, align 8
  %107 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %14, align 8
  %108 = call i8* @get_defined_signals(%struct.aspeed_pin_desc* %107)
  store i8* %108, i8** %19, align 8
  %109 = load %struct.aspeed_pin_function*, %struct.aspeed_pin_function** %12, align 8
  %110 = getelementptr inbounds %struct.aspeed_pin_function, %struct.aspeed_pin_function* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %14, align 8
  %113 = getelementptr inbounds %struct.aspeed_pin_desc, %struct.aspeed_pin_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i8*, i8** %19, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 @pr_warn(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i32 %115, i8* %116, i8* %117)
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @kfree(i8* %119)
  %121 = load i8*, i8** %18, align 8
  %122 = call i32 @kfree(i8* %121)
  %123 = load i32, i32* @ENXIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %139

125:                                              ; preds = %101
  %126 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %127 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %126, i32 0, i32 0
  %128 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %15, align 8
  %129 = call i32 @aspeed_sig_expr_enable(%struct.TYPE_5__* %127, %struct.aspeed_sig_expr* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %139

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %74
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %36

138:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %132, %104, %96, %65
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.aspeed_sig_expr* @aspeed_find_expr_by_name(%struct.aspeed_sig_expr**, i32) #1

declare dso_local i32 @aspeed_disable_sig(%struct.TYPE_5__*, %struct.aspeed_sig_expr**) #1

declare dso_local i8* @get_defined_functions(%struct.aspeed_pin_desc*) #1

declare dso_local i8* @get_defined_signals(%struct.aspeed_pin_desc*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @aspeed_sig_expr_enable(%struct.TYPE_5__*, %struct.aspeed_sig_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
