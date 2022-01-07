; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_allocate_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_allocate_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_2__*, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVSCSI_MAX_NUM_PAGES_REQ_RING = common dso_local global i32 0, align 4
@pvscsi_ring_pages = common dso_local global i32 0, align 4
@PVSCSI_MAX_NUM_REQ_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4
@PVSCSI_MAX_NUM_PAGES_CMP_RING = common dso_local global i32 0, align 4
@PVSCSI_MAX_NUM_PAGES_MSG_RING = common dso_local global i32 0, align 4
@pvscsi_msg_ring_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*)* @pvscsi_allocate_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_allocate_rings(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvscsi_adapter*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %3, align 8
  %4 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %9, i32 0, i32 10
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @dma_alloc_coherent(i32* %7, i32 %8, i32* %10, i32 %11)
  %13 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %13, i32 0, i32 13
  store i8* %12, i8** %14, align 8
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %15, i32 0, i32 13
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %1
  %23 = load i32, i32* @PVSCSI_MAX_NUM_PAGES_REQ_RING, align 4
  %24 = load i32, i32* @pvscsi_ring_pages, align 4
  %25 = call i8* @min(i32 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PVSCSI_MAX_NUM_REQ_ENTRIES_PER_PAGE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %45, i32 0, i32 9
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @dma_alloc_coherent(i32* %39, i32 %44, i32* %46, i32 %47)
  %49 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %49, i32 0, i32 12
  store i8* %48, i8** %50, align 8
  %51 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %51, i32 0, i32 12
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %22
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %159

58:                                               ; preds = %22
  %59 = load i32, i32* @PVSCSI_MAX_NUM_PAGES_CMP_RING, align 4
  %60 = load i32, i32* @pvscsi_ring_pages, align 4
  %61 = call i8* @min(i32 %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %65, i32 0, i32 6
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %74, i32 0, i32 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @dma_alloc_coherent(i32* %68, i32 %73, i32* %75, i32 %76)
  %78 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %78, i32 0, i32 11
  store i8* %77, i8** %79, align 8
  %80 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %80, i32 0, i32 11
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %58
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %159

87:                                               ; preds = %58
  %88 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = call i32 @IS_ALIGNED(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = call i32 @IS_ALIGNED(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  %106 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = call i32 @IS_ALIGNED(i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %159

120:                                              ; preds = %87
  %121 = load i32, i32* @PVSCSI_MAX_NUM_PAGES_MSG_RING, align 4
  %122 = load i32, i32* @pvscsi_msg_ring_pages, align 4
  %123 = call i8* @min(i32 %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %127, i32 0, i32 6
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %136, i32 0, i32 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @dma_alloc_coherent(i32* %130, i32 %135, i32* %137, i32 %138)
  %140 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %142, i32 0, i32 5
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %120
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %159

149:                                              ; preds = %120
  %150 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = call i32 @IS_ALIGNED(i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @BUG_ON(i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %149, %146, %119, %84, %55, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
