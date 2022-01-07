; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_4__*, %struct.SGDescriptor** }
%struct.TYPE_4__ = type { i32 }
%struct.SGDescriptor = type { i8*, i8*, i8* }
%struct.CommandList = type { i64, %struct.TYPE_3__, %struct.SGDescriptor* }
%struct.TYPE_3__ = type { i32 }

@HPSA_SG_CHAIN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_map_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_map_sg_chain_block(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca %struct.SGDescriptor*, align 8
  %7 = alloca %struct.SGDescriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  %10 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %11 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %10, i32 0, i32 2
  %12 = load %struct.SGDescriptor*, %struct.SGDescriptor** %11, align 8
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %12, i64 %17
  store %struct.SGDescriptor* %18, %struct.SGDescriptor** %6, align 8
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 2
  %21 = load %struct.SGDescriptor**, %struct.SGDescriptor*** %20, align 8
  %22 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %23 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.SGDescriptor*, %struct.SGDescriptor** %21, i64 %24
  %26 = load %struct.SGDescriptor*, %struct.SGDescriptor** %25, align 8
  store %struct.SGDescriptor* %26, %struct.SGDescriptor** %7, align 8
  %27 = load i32, i32* @HPSA_SG_CHAIN, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.SGDescriptor*, %struct.SGDescriptor** %6, align 8
  %30 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %32 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 24, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.SGDescriptor*, %struct.SGDescriptor** %6, align 8
  %46 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %48 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.SGDescriptor*, %struct.SGDescriptor** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_map_single(i32* %50, %struct.SGDescriptor* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %56 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @dma_mapping_error(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %2
  %63 = call i8* @cpu_to_le64(i32 0)
  %64 = load %struct.SGDescriptor*, %struct.SGDescriptor** %6, align 8
  %65 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 -1, i32* %3, align 4
  br label %71

66:                                               ; preds = %2
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @cpu_to_le64(i32 %67)
  %69 = load %struct.SGDescriptor*, %struct.SGDescriptor** %6, align 8
  %70 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.SGDescriptor*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
