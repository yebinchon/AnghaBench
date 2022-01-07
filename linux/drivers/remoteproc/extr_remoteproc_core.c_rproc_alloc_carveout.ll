; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_alloc_carveout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_alloc_carveout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i64, %struct.device }
%struct.device = type { %struct.device* }
%struct.rproc_mem_entry = type { i32, i8*, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate dma memory: len 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"carveout va %pK, dma %pad, len 0x%x\0A\00", align 1
@FW_RSC_ADDR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Allocated carveout doesn't fit device address request\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"iommu_map failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"carveout mapped 0x%x to %pad\0A\00", align 1
@HIGH_BITS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"DMA address cast in 32bit to fit resource table format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.rproc_mem_entry*)* @rproc_alloc_carveout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_alloc_carveout(%struct.rproc* %0, %struct.rproc_mem_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.rproc_mem_entry*, align 8
  %6 = alloca %struct.rproc_mem_entry*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.rproc_mem_entry* %1, %struct.rproc_mem_entry** %5, align 8
  store %struct.rproc_mem_entry* null, %struct.rproc_mem_entry** %6, align 8
  %11 = load %struct.rproc*, %struct.rproc** %4, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  %16 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %17 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(%struct.device* %15, i32 %18, i64* %8, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %28 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %167

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %37 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.device*, i8*, i8*, i64*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %35, i64* %8, i32 %38)
  %40 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %41 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FW_RSC_ADDR_ANY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = load %struct.rproc*, %struct.rproc** %4, align 8
  %47 = getelementptr inbounds %struct.rproc, %struct.rproc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %52 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load %struct.device*, %struct.device** %59, align 8
  %61 = call i32 @dev_warn(%struct.device* %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %45, %33
  %64 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %65 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FW_RSC_ADDR_ANY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %126

69:                                               ; preds = %63
  %70 = load %struct.rproc*, %struct.rproc** %4, align 8
  %71 = getelementptr inbounds %struct.rproc, %struct.rproc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %69
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.rproc_mem_entry* @kzalloc(i32 40, i32 %75)
  store %struct.rproc_mem_entry* %76, %struct.rproc_mem_entry** %6, align 8
  %77 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %6, align 8
  %78 = icmp ne %struct.rproc_mem_entry* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %156

82:                                               ; preds = %74
  %83 = load %struct.rproc*, %struct.rproc** %4, align 8
  %84 = getelementptr inbounds %struct.rproc, %struct.rproc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %87 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %91 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %94 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @iommu_map(i64 %85, i32 %88, i64 %89, i32 %92, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %153

103:                                              ; preds = %82
  %104 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %105 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %6, align 8
  %108 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %110 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %6, align 8
  %113 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %6, align 8
  %115 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %114, i32 0, i32 4
  %116 = load %struct.rproc*, %struct.rproc** %4, align 8
  %117 = getelementptr inbounds %struct.rproc, %struct.rproc* %116, i32 0, i32 0
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.device*, %struct.device** %7, align 8
  %120 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %121 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (%struct.device*, i8*, i8*, i64*, ...) @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %124, i64* %8)
  br label %126

126:                                              ; preds = %103, %69, %63
  %127 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %128 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FW_RSC_ADDR_ANY, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i64, i64* %8, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @HIGH_BITS_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.device*, %struct.device** %7, align 8
  %140 = call i32 @dev_warn(%struct.device* %139, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i64, i64* %8, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %145 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %141, %126
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %149 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %152 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  store i32 0, i32* %3, align 4
  br label %167

153:                                              ; preds = %99
  %154 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %6, align 8
  %155 = call i32 @kfree(%struct.rproc_mem_entry* %154)
  br label %156

156:                                              ; preds = %153, %79
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = getelementptr inbounds %struct.device, %struct.device* %157, i32 0, i32 0
  %159 = load %struct.device*, %struct.device** %158, align 8
  %160 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %5, align 8
  %161 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @dma_free_coherent(%struct.device* %159, i32 %162, i8* %163, i64 %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %156, %146, %23
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.rproc_mem_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @iommu_map(i64, i32, i64, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.rproc_mem_entry*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
