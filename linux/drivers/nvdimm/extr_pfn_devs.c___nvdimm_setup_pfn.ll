; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c___nvdimm_setup_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c___nvdimm_setup_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfn = type { i64, i8*, %struct.nd_pfn_sb*, i32, %struct.nd_namespace_common* }
%struct.nd_pfn_sb = type { i32, i32, i32, i32 }
%struct.nd_namespace_common = type { i32 }
%struct.dev_pagemap = type { i32, %struct.vmem_altmap, %struct.vmem_altmap }
%struct.vmem_altmap = type { i64, i64, i8*, i64, i8*, i32, i32 }
%struct.resource = type { i64, i64, i8*, i64, i8*, i32, i32 }
%struct.nd_namespace_io = type { %struct.vmem_altmap }

@PFN_MODE_RAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PFN_MODE_PMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"number of pfns truncated from %lld to %ld\0A\00", align 1
@PGMAP_ALTMAP_VALID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_pfn*, %struct.dev_pagemap*)* @__nvdimm_setup_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvdimm_setup_pfn(%struct.nd_pfn* %0, %struct.dev_pagemap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_pfn*, align 8
  %5 = alloca %struct.dev_pagemap*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.vmem_altmap*, align 8
  %8 = alloca %struct.nd_pfn_sb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nd_namespace_common*, align 8
  %14 = alloca %struct.nd_namespace_io*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.vmem_altmap, align 8
  store %struct.nd_pfn* %0, %struct.nd_pfn** %4, align 8
  store %struct.dev_pagemap* %1, %struct.dev_pagemap** %5, align 8
  %18 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %19 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %18, i32 0, i32 2
  %20 = bitcast %struct.vmem_altmap* %19 to %struct.resource*
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %22 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %21, i32 0, i32 1
  store %struct.vmem_altmap* %22, %struct.vmem_altmap** %7, align 8
  %23 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %24 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %23, i32 0, i32 2
  %25 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %24, align 8
  store %struct.nd_pfn_sb* %25, %struct.nd_pfn_sb** %8, align 8
  %26 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %8, align 8
  %27 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le64_to_cpu(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %8, align 8
  %32 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @__le32_to_cpu(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %8, align 8
  %36 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @__le32_to_cpu(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = call i64 (...) @info_block_reserve()
  store i64 %39, i64* %12, align 8
  %40 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %41 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %40, i32 0, i32 4
  %42 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %41, align 8
  store %struct.nd_namespace_common* %42, %struct.nd_namespace_common** %13, align 8
  %43 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %44 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %43, i32 0, i32 0
  %45 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %44)
  store %struct.nd_namespace_io* %45, %struct.nd_namespace_io** %14, align 8
  %46 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %49, %50
  store i64 %51, i64* %15, align 8
  %52 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %53 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %16, align 8
  %58 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 2
  %61 = load i64, i64* %16, align 8
  %62 = call i8* @PHYS_PFN(i64 %61)
  store i8* %62, i8** %60, align 8
  %63 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 4
  store i8* null, i8** %64, align 8
  %65 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 5
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @init_altmap_reserve(i64 %66)
  store i32 %67, i32* %65, align 8
  %68 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %17, i32 0, i32 6
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @init_altmap_base(i64 %69)
  store i32 %70, i32* %68, align 4
  %71 = load %struct.resource*, %struct.resource** %6, align 8
  %72 = bitcast %struct.resource* %71 to %struct.vmem_altmap*
  %73 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %74 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %73, i32 0, i32 0
  %75 = call i32 @memcpy(%struct.vmem_altmap* %72, %struct.vmem_altmap* %74, i32 48)
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %87 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PFN_MODE_RAM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %2
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %164

98:                                               ; preds = %91
  %99 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %8, align 8
  %100 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le64_to_cpu(i32 %101)
  %103 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %104 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %163

105:                                              ; preds = %2
  %106 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %107 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PFN_MODE_PMEM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %159

111:                                              ; preds = %105
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = bitcast %struct.resource* %112 to %struct.vmem_altmap*
  %114 = call i64 @resource_size(%struct.vmem_altmap* %113)
  %115 = load i64, i64* %9, align 8
  %116 = sub nsw i64 %114, %115
  %117 = call i8* @PHYS_PFN(i64 %116)
  %118 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %119 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %121 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %120, i32 0, i32 2
  %122 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %121, align 8
  %123 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le64_to_cpu(i32 %124)
  %126 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %127 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ugt i8* %125, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %111
  %131 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %132 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %131, i32 0, i32 3
  %133 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %134 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %133, i32 0, i32 2
  %135 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %134, align 8
  %136 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le64_to_cpu(i32 %137)
  %139 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %140 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %138, i8* %141)
  br label %143

143:                                              ; preds = %130, %111
  %144 = load %struct.vmem_altmap*, %struct.vmem_altmap** %7, align 8
  %145 = call i32 @memcpy(%struct.vmem_altmap* %144, %struct.vmem_altmap* %17, i32 48)
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %12, align 8
  %148 = sub nsw i64 %146, %147
  %149 = call i8* @PHYS_PFN(i64 %148)
  %150 = load %struct.vmem_altmap*, %struct.vmem_altmap** %7, align 8
  %151 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.vmem_altmap*, %struct.vmem_altmap** %7, align 8
  %153 = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @PGMAP_ALTMAP_VALID, align 4
  %155 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %156 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %162

159:                                              ; preds = %105
  %160 = load i32, i32* @ENXIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %164

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162, %98
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %159, %95
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local i64 @info_block_reserve(...) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i8* @PHYS_PFN(i64) #1

declare dso_local i32 @init_altmap_reserve(i64) #1

declare dso_local i32 @init_altmap_base(i64) #1

declare dso_local i32 @memcpy(%struct.vmem_altmap*, %struct.vmem_altmap*, i32) #1

declare dso_local i64 @resource_size(%struct.vmem_altmap*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
