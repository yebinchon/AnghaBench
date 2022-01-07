; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_add_changeset_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_add_changeset_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_changeset = type { i32 }
%struct.target = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.property* }
%struct.property = type { %struct.property*, %struct.property*, %struct.property* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"ERROR: changing value of #address-cells is not allowed in %pOF\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"ERROR: changing value of #size-cells is not allowed in %pOF\0A\00", align 1
@OF_OVERLAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [71 x i8] c"WARNING: memory leak will occur if overlay removed, property: %pOF/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.overlay_changeset*, %struct.target*, %struct.property*, i32)* @add_changeset_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_changeset_property(%struct.overlay_changeset* %0, %struct.target* %1, %struct.property* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.overlay_changeset*, align 8
  %7 = alloca %struct.target*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.property*, align 8
  %11 = alloca %struct.property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.overlay_changeset* %0, %struct.overlay_changeset** %6, align 8
  store %struct.target* %1, %struct.target** %7, align 8
  store %struct.property* %2, %struct.property** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.property* null, %struct.property** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.target*, %struct.target** %7, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load %struct.property*, %struct.property** %8, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 1
  %21 = load %struct.property*, %struct.property** %20, align 8
  %22 = call i32 @of_prop_cmp(%struct.property* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.property*, %struct.property** %8, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 1
  %27 = load %struct.property*, %struct.property** %26, align 8
  %28 = call i32 @of_prop_cmp(%struct.property* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.property*, %struct.property** %8, align 8
  %32 = getelementptr inbounds %struct.property, %struct.property* %31, i32 0, i32 1
  %33 = load %struct.property*, %struct.property** %32, align 8
  %34 = call i32 @of_prop_cmp(%struct.property* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %24, %18
  store i32 0, i32* %5, align 4
  br label %186

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.target*, %struct.target** %7, align 8
  %40 = getelementptr inbounds %struct.target, %struct.target* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.target*, %struct.target** %7, align 8
  %45 = getelementptr inbounds %struct.target, %struct.target* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.property*, %struct.property** %8, align 8
  %48 = getelementptr inbounds %struct.property, %struct.property* %47, i32 0, i32 1
  %49 = load %struct.property*, %struct.property** %48, align 8
  %50 = call %struct.property* @of_find_property(%struct.TYPE_6__* %46, %struct.property* %49, i32* null)
  store %struct.property* %50, %struct.property** %11, align 8
  br label %52

51:                                               ; preds = %38
  store %struct.property* null, %struct.property** %11, align 8
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.property*, %struct.property** %11, align 8
  %57 = icmp ne %struct.property* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %186

61:                                               ; preds = %55
  %62 = load %struct.overlay_changeset*, %struct.overlay_changeset** %6, align 8
  %63 = load %struct.property*, %struct.property** %8, align 8
  %64 = call %struct.property* @dup_and_fixup_symbol_prop(%struct.overlay_changeset* %62, %struct.property* %63)
  store %struct.property* %64, %struct.property** %10, align 8
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.property*, %struct.property** %8, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.property* @__of_prop_dup(%struct.property* %66, i32 %67)
  store %struct.property* %68, %struct.property** %10, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.property*, %struct.property** %10, align 8
  %71 = icmp ne %struct.property* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %186

75:                                               ; preds = %69
  %76 = load %struct.property*, %struct.property** %11, align 8
  %77 = icmp ne %struct.property* %76, null
  br i1 %77, label %104, label %78

78:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  %79 = load %struct.target*, %struct.target** %7, align 8
  %80 = getelementptr inbounds %struct.target, %struct.target* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.target*, %struct.target** %7, align 8
  %85 = getelementptr inbounds %struct.target, %struct.target* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.property*, %struct.property** %87, align 8
  %89 = load %struct.property*, %struct.property** %10, align 8
  %90 = getelementptr inbounds %struct.property, %struct.property* %89, i32 0, i32 2
  store %struct.property* %88, %struct.property** %90, align 8
  %91 = load %struct.property*, %struct.property** %10, align 8
  %92 = load %struct.target*, %struct.target** %7, align 8
  %93 = getelementptr inbounds %struct.target, %struct.target* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store %struct.property* %91, %struct.property** %95, align 8
  br label %96

96:                                               ; preds = %83, %78
  %97 = load %struct.overlay_changeset*, %struct.overlay_changeset** %6, align 8
  %98 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %97, i32 0, i32 0
  %99 = load %struct.target*, %struct.target** %7, align 8
  %100 = getelementptr inbounds %struct.target, %struct.target* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.property*, %struct.property** %10, align 8
  %103 = call i32 @of_changeset_add_property(i32* %98, %struct.TYPE_6__* %101, %struct.property* %102)
  store i32 %103, i32* %12, align 4
  br label %152

104:                                              ; preds = %75
  %105 = load %struct.property*, %struct.property** %11, align 8
  %106 = getelementptr inbounds %struct.property, %struct.property* %105, i32 0, i32 1
  %107 = load %struct.property*, %struct.property** %106, align 8
  %108 = call i32 @of_prop_cmp(%struct.property* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %104
  %111 = load %struct.property*, %struct.property** %11, align 8
  %112 = load %struct.property*, %struct.property** %10, align 8
  %113 = call i32 @of_prop_val_eq(%struct.property* %111, %struct.property* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load %struct.target*, %struct.target** %7, align 8
  %117 = getelementptr inbounds %struct.target, %struct.target* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 (i8*, %struct.TYPE_6__*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %115, %110
  br label %151

123:                                              ; preds = %104
  %124 = load %struct.property*, %struct.property** %11, align 8
  %125 = getelementptr inbounds %struct.property, %struct.property* %124, i32 0, i32 1
  %126 = load %struct.property*, %struct.property** %125, align 8
  %127 = call i32 @of_prop_cmp(%struct.property* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load %struct.property*, %struct.property** %11, align 8
  %131 = load %struct.property*, %struct.property** %10, align 8
  %132 = call i32 @of_prop_val_eq(%struct.property* %130, %struct.property* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = load %struct.target*, %struct.target** %7, align 8
  %136 = getelementptr inbounds %struct.target, %struct.target* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = call i32 (i8*, %struct.TYPE_6__*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_6__* %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %134, %129
  br label %150

142:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  %143 = load %struct.overlay_changeset*, %struct.overlay_changeset** %6, align 8
  %144 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %143, i32 0, i32 0
  %145 = load %struct.target*, %struct.target** %7, align 8
  %146 = getelementptr inbounds %struct.target, %struct.target* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.property*, %struct.property** %10, align 8
  %149 = call i32 @of_changeset_update_property(i32* %144, %struct.TYPE_6__* %147, %struct.property* %148)
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %142, %141
  br label %151

151:                                              ; preds = %150, %122
  br label %152

152:                                              ; preds = %151, %96
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %152
  %156 = load %struct.target*, %struct.target** %7, align 8
  %157 = getelementptr inbounds %struct.target, %struct.target* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* @OF_OVERLAY, align 4
  %160 = call i32 @of_node_check_flag(%struct.TYPE_6__* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %155
  %163 = load %struct.target*, %struct.target** %7, align 8
  %164 = getelementptr inbounds %struct.target, %struct.target* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load %struct.property*, %struct.property** %10, align 8
  %167 = getelementptr inbounds %struct.property, %struct.property* %166, i32 0, i32 1
  %168 = load %struct.property*, %struct.property** %167, align 8
  %169 = call i32 (i8*, %struct.TYPE_6__*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_6__* %165, %struct.property* %168)
  br label %170

170:                                              ; preds = %162, %155, %152
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170
  %174 = load %struct.property*, %struct.property** %10, align 8
  %175 = getelementptr inbounds %struct.property, %struct.property* %174, i32 0, i32 1
  %176 = load %struct.property*, %struct.property** %175, align 8
  %177 = call i32 @kfree(%struct.property* %176)
  %178 = load %struct.property*, %struct.property** %10, align 8
  %179 = getelementptr inbounds %struct.property, %struct.property* %178, i32 0, i32 0
  %180 = load %struct.property*, %struct.property** %179, align 8
  %181 = call i32 @kfree(%struct.property* %180)
  %182 = load %struct.property*, %struct.property** %10, align 8
  %183 = call i32 @kfree(%struct.property* %182)
  br label %184

184:                                              ; preds = %173, %170
  %185 = load i32, i32* %12, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %72, %58, %36
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @of_prop_cmp(%struct.property*, i8*) #1

declare dso_local %struct.property* @of_find_property(%struct.TYPE_6__*, %struct.property*, i32*) #1

declare dso_local %struct.property* @dup_and_fixup_symbol_prop(%struct.overlay_changeset*, %struct.property*) #1

declare dso_local %struct.property* @__of_prop_dup(%struct.property*, i32) #1

declare dso_local i32 @of_changeset_add_property(i32*, %struct.TYPE_6__*, %struct.property*) #1

declare dso_local i32 @of_prop_val_eq(%struct.property*, %struct.property*) #1

declare dso_local i32 @pr_err(i8*, %struct.TYPE_6__*, ...) #1

declare dso_local i32 @of_changeset_update_property(i32*, %struct.TYPE_6__*, %struct.property*) #1

declare dso_local i32 @of_node_check_flag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
