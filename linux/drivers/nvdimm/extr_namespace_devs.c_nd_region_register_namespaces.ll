; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_register_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_register_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { %struct.device*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.nd_namespace_blk = type { i32 }
%struct.nd_namespace_pmem = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"namespace%d.%d\00", align 1
@nd_namespace_attribute_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_register_namespaces(%struct.nd_region* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nd_namespace_blk*, align 8
  %13 = alloca %struct.nd_namespace_pmem*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.device*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.device** null, %struct.device*** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 3
  %19 = call i32 @nvdimm_bus_lock(i32* %18)
  %20 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %21 = call i32 @init_active_labels(%struct.nd_region* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %26 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %25, i32 0, i32 3
  %27 = call i32 @nvdimm_bus_unlock(i32* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %171

29:                                               ; preds = %2
  %30 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %31 = call i32 @nd_region_to_nstype(%struct.nd_region* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %39 [
    i32 129, label %33
    i32 128, label %36
    i32 130, label %36
  ]

33:                                               ; preds = %29
  %34 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %35 = call %struct.device** @create_namespace_io(%struct.nd_region* %34)
  store %struct.device** %35, %struct.device*** %6, align 8
  br label %40

36:                                               ; preds = %29, %29
  %37 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %38 = call %struct.device** @create_namespaces(%struct.nd_region* %37)
  store %struct.device** %38, %struct.device*** %6, align 8
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %36, %33
  %41 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %42 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %41, i32 0, i32 3
  %43 = call i32 @nvdimm_bus_unlock(i32* %42)
  %44 = load %struct.device**, %struct.device*** %6, align 8
  %45 = icmp ne %struct.device** %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %171

49:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %107, %49
  %51 = load %struct.device**, %struct.device*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.device*, %struct.device** %51, i64 %53
  %55 = load %struct.device*, %struct.device** %54, align 8
  %56 = icmp ne %struct.device* %55, null
  br i1 %56, label %57, label %110

57:                                               ; preds = %50
  %58 = load %struct.device**, %struct.device*** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.device*, %struct.device** %58, i64 %60
  %62 = load %struct.device*, %struct.device** %61, align 8
  store %struct.device* %62, %struct.device** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 130
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %66)
  store %struct.nd_namespace_blk* %67, %struct.nd_namespace_blk** %12, align 8
  %68 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %69 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %68, i32 0, i32 2
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @ida_simple_get(i32* %69, i32 0, i32 0, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %12, align 8
  %74 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %91

75:                                               ; preds = %57
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %79)
  store %struct.nd_namespace_pmem* %80, %struct.nd_namespace_pmem** %13, align 8
  %81 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %82 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %81, i32 0, i32 2
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @ida_simple_get(i32* %82, i32 0, i32 0, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %13, align 8
  %87 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %78
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %110

95:                                               ; preds = %91
  %96 = load %struct.device*, %struct.device** %10, align 8
  %97 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %98 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dev_set_name(%struct.device* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* @nd_namespace_attribute_groups, align 4
  %103 = load %struct.device*, %struct.device** %10, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = call i32 @nd_device_register(%struct.device* %105)
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %50

110:                                              ; preds = %94, %50
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.device**, %struct.device*** %6, align 8
  %115 = getelementptr inbounds %struct.device*, %struct.device** %114, i64 0
  %116 = load %struct.device*, %struct.device** %115, align 8
  %117 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %118 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %117, i32 0, i32 0
  store %struct.device* %116, %struct.device** %118, align 8
  br label %119

119:                                              ; preds = %113, %110
  %120 = load %struct.device**, %struct.device*** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.device*, %struct.device** %120, i64 %122
  %124 = load %struct.device*, %struct.device** %123, align 8
  %125 = icmp ne %struct.device* %124, null
  br i1 %125, label %126, label %160

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %145, %126
  %129 = load %struct.device**, %struct.device*** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.device*, %struct.device** %129, i64 %131
  %133 = load %struct.device*, %struct.device** %132, align 8
  %134 = icmp ne %struct.device* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load %struct.device**, %struct.device*** %6, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.device*, %struct.device** %136, i64 %138
  %140 = load %struct.device*, %struct.device** %139, align 8
  store %struct.device* %140, %struct.device** %15, align 8
  %141 = load %struct.device*, %struct.device** %15, align 8
  %142 = call i32 @device_initialize(%struct.device* %141)
  %143 = load %struct.device*, %struct.device** %15, align 8
  %144 = call i32 @put_device(%struct.device* %143)
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %128

148:                                              ; preds = %128
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32*, i32** %5, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %148
  br label %160

160:                                              ; preds = %159, %119
  %161 = load %struct.device**, %struct.device*** %6, align 8
  %162 = call i32 @kfree(%struct.device** %161)
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %167, %46, %24
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @nvdimm_bus_lock(i32*) #1

declare dso_local i32 @init_active_labels(%struct.nd_region*) #1

declare dso_local i32 @nvdimm_bus_unlock(i32*) #1

declare dso_local i32 @nd_region_to_nstype(%struct.nd_region*) #1

declare dso_local %struct.device** @create_namespace_io(%struct.nd_region*) #1

declare dso_local %struct.device** @create_namespaces(%struct.nd_region*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @nd_device_register(%struct.device*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
