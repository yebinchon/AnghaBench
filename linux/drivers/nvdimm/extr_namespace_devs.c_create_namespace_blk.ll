; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_create_namespace_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_create_namespace_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32*, i32* }
%struct.nd_region = type { i32, %struct.nd_interleave_set*, %struct.nd_mapping* }
%struct.nd_interleave_set = type { i32*, i32 }
%struct.nd_mapping = type { i32 }
%struct.nd_namespace_label = type { i64, i64, i8*, i64, i32, i32, i32 }
%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_blk = type { i32, i8*, i8*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.resource = type { i32 }

@NSLABEL_NAME_LEN = common dso_local global i32 0, align 4
@type_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"expect type_guid %pUb got %pUb\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expect cookie %#llx got %#llx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@namespace_blk_device_type = common dso_local global i32 0, align 4
@NSLABEL_UUID_LEN = common dso_local global i32 0, align 4
@abstraction_guid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%d: assign\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.nd_region*, %struct.nd_namespace_label*, i32)* @create_namespace_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @create_namespace_blk(%struct.nd_region* %0, %struct.nd_namespace_label* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_region*, align 8
  %6 = alloca %struct.nd_namespace_label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_mapping*, align 8
  %9 = alloca %struct.nd_interleave_set*, align 8
  %10 = alloca %struct.nvdimm_drvdata*, align 8
  %11 = alloca %struct.nd_namespace_blk*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.resource*, align 8
  %16 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %5, align 8
  store %struct.nd_namespace_label* %1, %struct.nd_namespace_label** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 2
  %19 = load %struct.nd_mapping*, %struct.nd_mapping** %18, align 8
  %20 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %19, i64 0
  store %struct.nd_mapping* %20, %struct.nd_mapping** %8, align 8
  %21 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %22 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %21, i32 0, i32 1
  %23 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %22, align 8
  store %struct.nd_interleave_set* %23, %struct.nd_interleave_set** %9, align 8
  %24 = load %struct.nd_mapping*, %struct.nd_mapping** %8, align 8
  %25 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %24)
  store %struct.nvdimm_drvdata* %25, %struct.nvdimm_drvdata** %10, align 8
  %26 = load i32, i32* @NSLABEL_NAME_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store %struct.device* null, %struct.device** %14, align 8
  %30 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %31 = load i32, i32* @type_guid, align 4
  %32 = call i64 @namespace_label_has(%struct.nvdimm_drvdata* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %3
  %35 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %36 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %35, i32 0, i32 1
  %37 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %38 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %37, i32 0, i32 6
  %39 = call i32 @guid_equal(i32* %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %43 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %46 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %45, i32 0, i32 1
  %47 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %48 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %47, i32 0, i32 6
  %49 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %46, i32* %48)
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.device* @ERR_PTR(i32 %51)
  store %struct.device* %52, %struct.device** %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

53:                                               ; preds = %34
  %54 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %55 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %58 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @__cpu_to_le64(i32* %59)
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %64 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %67 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %70 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32* @__le64_to_cpu(i64 %71)
  %73 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %68, i32* %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.device* @ERR_PTR(i32 %75)
  store %struct.device* %76, %struct.device** %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %3
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.nd_namespace_blk* @kzalloc(i32 56, i32 %79)
  store %struct.nd_namespace_blk* %80, %struct.nd_namespace_blk** %11, align 8
  %81 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %82 = icmp ne %struct.nd_namespace_blk* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.device* @ERR_PTR(i32 %85)
  store %struct.device* %86, %struct.device** %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

87:                                               ; preds = %78
  %88 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %89 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store %struct.device* %90, %struct.device** %14, align 8
  %91 = load %struct.device*, %struct.device** %14, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 1
  store i32* @namespace_blk_device_type, i32** %92, align 8
  %93 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %94 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %93, i32 0, i32 0
  %95 = load %struct.device*, %struct.device** %14, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %98 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %100 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32* @__le64_to_cpu(i64 %101)
  %103 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %104 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  %105 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %106 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @NSLABEL_UUID_LEN, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @kmemdup(i8* %107, i32 %108, i32 %109)
  %111 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %112 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %114 = load i32, i32* @abstraction_guid, align 4
  %115 = call i64 @namespace_label_has(%struct.nvdimm_drvdata* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %87
  %118 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %119 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %118, i32 0, i32 5
  %120 = call i32 @to_nvdimm_cclass(i32* %119)
  %121 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %122 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %117, %87
  %125 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %126 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %170

130:                                              ; preds = %124
  %131 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %132 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NSLABEL_NAME_LEN, align 4
  %135 = call i32 @memcpy(i8* %29, i32 %133, i32 %134)
  %136 = getelementptr inbounds i8, i8* %29, i64 0
  %137 = load i8, i8* %136, align 16
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %130
  %140 = load i32, i32* @NSLABEL_NAME_LEN, align 4
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @kmemdup(i8* %29, i32 %140, i32 %141)
  %143 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %144 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %146 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %139
  br label %170

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %153 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %154 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %11, align 8
  %155 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %6, align 8
  %156 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = call i32* @__le64_to_cpu(i64 %157)
  %159 = call %struct.resource* @nsblk_add_resource(%struct.nd_region* %152, %struct.nvdimm_drvdata* %153, %struct.nd_namespace_blk* %154, i32* %158)
  store %struct.resource* %159, %struct.resource** %15, align 8
  %160 = load %struct.resource*, %struct.resource** %15, align 8
  %161 = icmp ne %struct.resource* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %151
  br label %170

163:                                              ; preds = %151
  %164 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %165 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %10, align 8
  %166 = load %struct.resource*, %struct.resource** %15, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @nd_dbg_dpa(%struct.nd_region* %164, %struct.nvdimm_drvdata* %165, %struct.resource* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %169, %struct.device** %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

170:                                              ; preds = %162, %149, %129
  %171 = load %struct.device*, %struct.device** %14, align 8
  %172 = call i32 @namespace_blk_release(%struct.device* %171)
  %173 = load i32, i32* @ENXIO, align 4
  %174 = sub nsw i32 0, %173
  %175 = call %struct.device* @ERR_PTR(i32 %174)
  store %struct.device* %175, %struct.device** %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %170, %163, %83, %62, %41
  %177 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load %struct.device*, %struct.device** %4, align 8
  ret %struct.device* %178
}

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @namespace_label_has(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i32 @guid_equal(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i64 @__cpu_to_le64(i32*) #1

declare dso_local i32* @__le64_to_cpu(i64) #1

declare dso_local %struct.nd_namespace_blk* @kzalloc(i32, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @to_nvdimm_cclass(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.resource* @nsblk_add_resource(%struct.nd_region*, %struct.nvdimm_drvdata*, %struct.nd_namespace_blk*, i32*) #1

declare dso_local i32 @nd_dbg_dpa(%struct.nd_region*, %struct.nvdimm_drvdata*, %struct.resource*, i8*, i32) #1

declare dso_local i32 @namespace_blk_release(%struct.device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
