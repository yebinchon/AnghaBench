; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_dpaa_sys.c_qbman_init_private_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_dpaa_sys.c_qbman_init_private_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.reserved_mem = type { i64, i64 }
%struct.property = type { i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No memory-region found for index %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"of_reserved_mem_lookup() returned NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_init_private_mem(%struct.device* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.reserved_mem*, align 8
  %12 = alloca %struct.property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.device_node* %20, %struct.device_node** %10, align 8
  %21 = load %struct.device_node*, %struct.device_node** %10, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %125

29:                                               ; preds = %4
  %30 = load %struct.device_node*, %struct.device_node** %10, align 8
  %31 = call %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node* %30)
  store %struct.reserved_mem* %31, %struct.reserved_mem** %11, align 8
  %32 = load %struct.reserved_mem*, %struct.reserved_mem** %11, align 8
  %33 = icmp ne %struct.reserved_mem* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %125

39:                                               ; preds = %29
  %40 = load %struct.reserved_mem*, %struct.reserved_mem** %11, align 8
  %41 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.reserved_mem*, %struct.reserved_mem** %11, align 8
  %45 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %10, align 8
  %49 = call %struct.property* @of_find_property(%struct.device_node* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  store %struct.property* %49, %struct.property** %12, align 8
  %50 = load %struct.property*, %struct.property** %12, align 8
  %51 = icmp ne %struct.property* %50, null
  br i1 %51, label %124, label %52

52:                                               ; preds = %39
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @devm_kzalloc(%struct.device* %53, i32 16, i32 %54)
  %56 = bitcast i8* %55 to %struct.property*
  store %struct.property* %56, %struct.property** %12, align 8
  %57 = load %struct.property*, %struct.property** %12, align 8
  %58 = icmp ne %struct.property* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %125

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @devm_kzalloc(%struct.device* %63, i32 16, i32 %64)
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %15, align 8
  %67 = load %struct.property*, %struct.property** %12, align 8
  %68 = getelementptr inbounds %struct.property, %struct.property* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.property*, %struct.property** %12, align 8
  %70 = getelementptr inbounds %struct.property, %struct.property* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %125

76:                                               ; preds = %62
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @upper_32_bits(i64 %78)
  %80 = call i32 @cpu_to_be32(i32 %79)
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @lower_32_bits(i64 %84)
  %86 = call i32 @cpu_to_be32(i32 %85)
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @upper_32_bits(i64 %90)
  %92 = call i32 @cpu_to_be32(i32 %91)
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @lower_32_bits(i64 %96)
  %98 = call i32 @cpu_to_be32(i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.property*, %struct.property** %12, align 8
  %102 = getelementptr inbounds %struct.property, %struct.property* %101, i32 0, i32 0
  store i32 16, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @devm_kstrdup(%struct.device* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.property*, %struct.property** %12, align 8
  %107 = getelementptr inbounds %struct.property, %struct.property* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.property*, %struct.property** %12, align 8
  %109 = getelementptr inbounds %struct.property, %struct.property* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %76
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %125

115:                                              ; preds = %76
  %116 = load %struct.device_node*, %struct.device_node** %10, align 8
  %117 = load %struct.property*, %struct.property** %12, align 8
  %118 = call i32 @of_add_property(%struct.device_node* %116, %struct.property* %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %125

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %39
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %121, %112, %73, %59, %34, %23
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @devm_kstrdup(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_add_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
