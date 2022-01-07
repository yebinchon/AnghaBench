; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_pinctrl_dt_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_pinctrl_dt_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pinctrl_dev = type { i32 }
%struct.property = type { i8*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"no of_node; not parsing pinctrl DT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pinctrl-%d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"pinctrl-names\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pinctrl-\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"prop %s index %i invalid phandle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_dt_to_map(%struct.pinctrl* %0, %struct.pinctrl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl*, align 8
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device_node*, align 8
  store %struct.pinctrl* %0, %struct.pinctrl** %4, align 8
  store %struct.pinctrl_dev* %1, %struct.pinctrl_dev** %5, align 8
  %17 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %18 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = call i64 (...) @of_have_populated_dt()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @dev_dbg(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %136

33:                                               ; preds = %2
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_node_get(%struct.device_node* %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %128, %33
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @kasprintf(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call %struct.property* @of_find_property(%struct.device_node* %40, i8* %41, i32* %13)
  store %struct.property* %42, %struct.property** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @kfree(i8* %43)
  %45 = load %struct.property*, %struct.property** %10, align 8
  %46 = icmp ne %struct.property* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %136

55:                                               ; preds = %47
  br label %131

56:                                               ; preds = %36
  %57 = load %struct.property*, %struct.property** %10, align 8
  %58 = getelementptr inbounds %struct.property, %struct.property* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @of_property_read_string_index(%struct.device_node* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8** %11)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.property*, %struct.property** %10, align 8
  %71 = getelementptr inbounds %struct.property, %struct.property* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %69, %56
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %113, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %12, align 8
  %84 = ptrtoint i32* %82 to i32
  %85 = call i32 @be32_to_cpup(i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call %struct.device_node* @of_find_node_by_phandle(i32 %86)
  store %struct.device_node* %87, %struct.device_node** %16, align 8
  %88 = load %struct.device_node*, %struct.device_node** %16, align 8
  %89 = icmp ne %struct.device_node* %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %81
  %91 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %92 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.property*, %struct.property** %10, align 8
  %95 = getelementptr inbounds %struct.property, %struct.property* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @dev_err(%struct.TYPE_3__* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %132

101:                                              ; preds = %81
  %102 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %103 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.device_node*, %struct.device_node** %16, align 8
  %106 = call i32 @dt_to_map_one_config(%struct.pinctrl* %102, %struct.pinctrl_dev* %103, i8* %104, %struct.device_node* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.device_node*, %struct.device_node** %16, align 8
  %108 = call i32 @of_node_put(%struct.device_node* %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %132

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %77

116:                                              ; preds = %77
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @dt_remember_dummy_state(%struct.pinctrl* %120, i8* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %132

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %36

131:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %136

132:                                              ; preds = %125, %111, %90
  %133 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %134 = call i32 @pinctrl_dt_free_maps(%struct.pinctrl* %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %131, %50, %32
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @of_have_populated_dt(...) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i8*, i32) #1

declare dso_local i32 @dt_to_map_one_config(%struct.pinctrl*, %struct.pinctrl_dev*, i8*, %struct.device_node*) #1

declare dso_local i32 @dt_remember_dummy_state(%struct.pinctrl*, i8*) #1

declare dso_local i32 @pinctrl_dt_free_maps(%struct.pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
