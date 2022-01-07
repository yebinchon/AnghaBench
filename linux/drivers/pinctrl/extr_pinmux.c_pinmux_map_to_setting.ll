; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_map_to_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_map_to_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_map = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.pinctrl_setting = type { %struct.TYPE_10__, %struct.pinctrl_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pinctrl_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pinmux_ops* }
%struct.pinmux_ops = type { i32 (%struct.pinctrl_dev.0*, i32, i8***, i32*)* }
%struct.pinctrl_dev.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"does not support mux function\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid function %s in map table\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"can't query groups for function %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"function %s can't be selected on any group\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid group \22%s\22 for function \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid group %s in map table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinmux_map_to_setting(%struct.pinctrl_map* %0, %struct.pinctrl_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_map*, align 8
  %5 = alloca %struct.pinctrl_setting*, align 8
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinmux_ops*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.pinctrl_map* %0, %struct.pinctrl_map** %4, align 8
  store %struct.pinctrl_setting* %1, %struct.pinctrl_setting** %5, align 8
  %12 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %13 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %12, i32 0, i32 1
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %13, align 8
  store %struct.pinctrl_dev* %14, %struct.pinctrl_dev** %6, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.pinmux_ops*, %struct.pinmux_ops** %18, align 8
  store %struct.pinmux_ops* %19, %struct.pinmux_ops** %7, align 8
  %20 = load %struct.pinmux_ops*, %struct.pinmux_ops** %7, align 8
  %21 = icmp ne %struct.pinmux_ops* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %154

29:                                               ; preds = %2
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %31 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %32 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @pinmux_func_name_to_selector(%struct.pinctrl_dev* %30, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %41 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %44 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %154

50:                                               ; preds = %29
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %53 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.pinmux_ops*, %struct.pinmux_ops** %7, align 8
  %57 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %56, i32 0, i32 0
  %58 = load i32 (%struct.pinctrl_dev.0*, i32, i8***, i32*)*, i32 (%struct.pinctrl_dev.0*, i32, i8***, i32*)** %57, align 8
  %59 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %60 = bitcast %struct.pinctrl_dev* %59 to %struct.pinctrl_dev.0*
  %61 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %62 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %58(%struct.pinctrl_dev.0* %60, i32 %65, i8*** %8, i32* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %50
  %70 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %71 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %74 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %154

80:                                               ; preds = %50
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %85 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %88 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %154

95:                                               ; preds = %80
  %96 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %97 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %127

102:                                              ; preds = %95
  %103 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %104 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %11, align 8
  %108 = load i8**, i8*** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @match_string(i8** %108, i32 %109, i8* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %102
  %115 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %116 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %120 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %154

126:                                              ; preds = %102
  br label %131

127:                                              ; preds = %95
  %128 = load i8**, i8*** %8, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %11, align 8
  br label %131

131:                                              ; preds = %127, %126
  %132 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @pinctrl_get_group_selector(%struct.pinctrl_dev* %132, i8* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %139 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %142 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %154

148:                                              ; preds = %131
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %151 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %148, %137, %114, %83, %69, %39, %22
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pinmux_func_name_to_selector(%struct.pinctrl_dev*, i8*) #1

declare dso_local i32 @match_string(i8**, i32, i8*) #1

declare dso_local i32 @pinctrl_get_group_selector(%struct.pinctrl_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
