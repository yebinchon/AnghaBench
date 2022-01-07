; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_namespace_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_namespace_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32*, i64 }
%struct.nd_namespace_common = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"namespace already active\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"namespace already set to: %s\0A\00", align 1
@namespace_match = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"'%s' not found under %s\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@SZ_16M = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"%s too small to host\0A\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"%s already claimed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd_namespace_store(%struct.device* %0, %struct.nd_namespace_common** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nd_namespace_common**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_namespace_common*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.nd_namespace_common** %1, %struct.nd_namespace_common*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @EBUSY, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %161

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrndup(i8* %23, i64 %24, i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %161

32:                                               ; preds = %22
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @strim(i8* %33)
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %32
  br label %46

43:                                               ; preds = %38
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %9, align 8
  br label %157

46:                                               ; preds = %42
  %47 = load %struct.nd_namespace_common**, %struct.nd_namespace_common*** %7, align 8
  %48 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %47, align 8
  store %struct.nd_namespace_common* %48, %struct.nd_namespace_common** %10, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.nd_namespace_common**, %struct.nd_namespace_common*** %7, align 8
  %55 = call i32 @nd_detach_and_reset(%struct.device* %53, %struct.nd_namespace_common** %54)
  br label %157

56:                                               ; preds = %46
  %57 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %58 = icmp ne %struct.nd_namespace_common* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %62 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %61, i32 0, i32 1
  %63 = call i8* @dev_name(i32* %62)
  %64 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i64, i64* @EBUSY, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %9, align 8
  br label %157

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* @namespace_match, align 4
  %74 = call %struct.device* @device_find_child(i32* %71, i8* %72, i32 %73)
  store %struct.device* %74, %struct.device** %11, align 8
  %75 = load %struct.device*, %struct.device** %11, align 8
  %76 = icmp ne %struct.device* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @dev_name(i32* %82)
  %84 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %83)
  %85 = load i64, i64* @ENODEV, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %9, align 8
  br label %157

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %88)
  store %struct.nd_namespace_common* %89, %struct.nd_namespace_common** %10, align 8
  %90 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %91 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %118 [
    i32 129, label %93
    i32 132, label %94
    i32 131, label %94
    i32 128, label %102
    i32 130, label %110
  ]

93:                                               ; preds = %87
  br label %121

94:                                               ; preds = %87, %87
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i32 @is_nd_btt(%struct.device* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* @EBUSY, align 8
  %100 = sub i64 0, %99
  store i64 %100, i64* %9, align 8
  br label %153

101:                                              ; preds = %94
  br label %121

102:                                              ; preds = %87
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = call i32 @is_nd_pfn(%struct.device* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* @EBUSY, align 8
  %108 = sub i64 0, %107
  store i64 %108, i64* %9, align 8
  br label %153

109:                                              ; preds = %102
  br label %121

110:                                              ; preds = %87
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = call i32 @is_nd_dax(%struct.device* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* @EBUSY, align 8
  %116 = sub i64 0, %115
  store i64 %116, i64* %9, align 8
  br label %153

117:                                              ; preds = %110
  br label %121

118:                                              ; preds = %87
  %119 = load i64, i64* @EBUSY, align 8
  %120 = sub i64 0, %119
  store i64 %120, i64* %9, align 8
  br label %153

121:                                              ; preds = %117, %109, %101, %93
  %122 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %123 = call i64 @__nvdimm_namespace_capacity(%struct.nd_namespace_common* %122)
  %124 = load i64, i64* @SZ_16M, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  %130 = load i64, i64* @ENXIO, align 8
  %131 = sub i64 0, %130
  store i64 %131, i64* %9, align 8
  br label %153

132:                                              ; preds = %121
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = call i32 @is_nvdimm_bus_locked(%struct.device* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN_ON_ONCE(i32 %137)
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %141 = load %struct.nd_namespace_common**, %struct.nd_namespace_common*** %7, align 8
  %142 = call i32 @__nd_attach_ndns(%struct.device* %139, %struct.nd_namespace_common* %140, %struct.nd_namespace_common** %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %132
  %145 = load %struct.device*, %struct.device** %6, align 8
  %146 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %147 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %146, i32 0, i32 1
  %148 = call i8* @dev_name(i32* %147)
  %149 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  %150 = load i64, i64* @EBUSY, align 8
  %151 = sub i64 0, %150
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %144, %132
  br label %153

153:                                              ; preds = %152, %126, %118, %114, %106, %98
  %154 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %155 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %154, i32 0, i32 1
  %156 = call i32 @put_device(i32* %155)
  br label %157

157:                                              ; preds = %153, %77, %59, %52, %43
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @kfree(i8* %158)
  %160 = load i64, i64* %9, align 8
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %157, %29, %17
  %162 = load i64, i64* %5, align 8
  ret i64 %162
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @strim(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nd_detach_and_reset(%struct.device*, %struct.nd_namespace_common**) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local %struct.device* @device_find_child(i32*, i8*, i32) #1

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local i32 @is_nd_btt(%struct.device*) #1

declare dso_local i32 @is_nd_pfn(%struct.device*) #1

declare dso_local i32 @is_nd_dax(%struct.device*) #1

declare dso_local i64 @__nvdimm_namespace_capacity(%struct.nd_namespace_common*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(%struct.device*) #1

declare dso_local i32 @__nd_attach_ndns(%struct.device*, %struct.nd_namespace_common*, %struct.nd_namespace_common**) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
