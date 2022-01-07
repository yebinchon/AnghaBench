; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_map = type { i32, i32, i32, i32 }
%struct.pinctrl_maps = type { i32, i32, %struct.pinctrl_map* }

@.str = private unnamed_addr constant [21 x i8] c"add %u pinctrl maps\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to register map %s (%d): no device given\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to register map %d: no map name given\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"failed to register map %s (%d): no pin control device given\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"failed to register map %s (%d): invalid type given\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pinctrl_maps_mutex = common dso_local global i32 0, align 4
@pinctrl_maps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_register_map(%struct.pinctrl_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_maps*, align 8
  store %struct.pinctrl_map* %0, %struct.pinctrl_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %120, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %123

17:                                               ; preds = %13
  %18 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %18, i64 %20
  %22 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %26, i64 %28
  %30 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %167

36:                                               ; preds = %17
  %37 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %37, i64 %39
  %41 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %167

49:                                               ; preds = %36
  %50 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %50, i64 %52
  %54 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 129
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %58, i64 %60
  %62 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %57
  %66 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %66, i64 %68
  %70 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %167

76:                                               ; preds = %57, %49
  %77 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %77, i64 %79
  %81 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %108 [
    i32 129, label %83
    i32 128, label %84
    i32 130, label %96
    i32 131, label %96
  ]

83:                                               ; preds = %76
  br label %119

84:                                               ; preds = %76
  %85 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %85, i64 %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @pinmux_validate_map(%struct.pinctrl_map* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %167

95:                                               ; preds = %84
  br label %119

96:                                               ; preds = %76, %76
  %97 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %97, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @pinconf_validate_map(%struct.pinctrl_map* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %167

107:                                              ; preds = %96
  br label %119

108:                                              ; preds = %76
  %109 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %109, i64 %111
  %113 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %167

119:                                              ; preds = %107, %95, %83
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %13

123:                                              ; preds = %13
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call %struct.pinctrl_maps* @kzalloc(i32 16, i32 %124)
  store %struct.pinctrl_maps* %125, %struct.pinctrl_maps** %10, align 8
  %126 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %127 = icmp ne %struct.pinctrl_maps* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %167

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %134 = getelementptr inbounds %struct.pinctrl_maps, %struct.pinctrl_maps* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %131
  %138 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = mul i64 16, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call %struct.pinctrl_map* @kmemdup(%struct.pinctrl_map* %138, i32 %142, i32 %143)
  %145 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %146 = getelementptr inbounds %struct.pinctrl_maps, %struct.pinctrl_maps* %145, i32 0, i32 2
  store %struct.pinctrl_map* %144, %struct.pinctrl_map** %146, align 8
  %147 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %148 = getelementptr inbounds %struct.pinctrl_maps, %struct.pinctrl_maps* %147, i32 0, i32 2
  %149 = load %struct.pinctrl_map*, %struct.pinctrl_map** %148, align 8
  %150 = icmp ne %struct.pinctrl_map* %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %137
  %152 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %153 = call i32 @kfree(%struct.pinctrl_maps* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %167

156:                                              ; preds = %137
  br label %161

157:                                              ; preds = %131
  %158 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %159 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %160 = getelementptr inbounds %struct.pinctrl_maps, %struct.pinctrl_maps* %159, i32 0, i32 2
  store %struct.pinctrl_map* %158, %struct.pinctrl_map** %160, align 8
  br label %161

161:                                              ; preds = %157, %156
  %162 = call i32 @mutex_lock(i32* @pinctrl_maps_mutex)
  %163 = load %struct.pinctrl_maps*, %struct.pinctrl_maps** %10, align 8
  %164 = getelementptr inbounds %struct.pinctrl_maps, %struct.pinctrl_maps* %163, i32 0, i32 1
  %165 = call i32 @list_add_tail(i32* %164, i32* @pinctrl_maps)
  %166 = call i32 @mutex_unlock(i32* @pinctrl_maps_mutex)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %161, %151, %128, %108, %105, %93, %65, %44, %25
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pinmux_validate_map(%struct.pinctrl_map*, i32) #1

declare dso_local i32 @pinconf_validate_map(%struct.pinctrl_map*, i32) #1

declare dso_local %struct.pinctrl_maps* @kzalloc(i32, i32) #1

declare dso_local %struct.pinctrl_map* @kmemdup(%struct.pinctrl_map*, i32, i32) #1

declare dso_local i32 @kfree(%struct.pinctrl_maps*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
