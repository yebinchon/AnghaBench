; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_allocate_low_mem_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_allocate_low_mem_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@FSF_STATUS_READS_RECOM = common dso_local global i32 0, align 4
@zfcp_fsf_qtcb_cache = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@zfcp_fc_req_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*)* @zfcp_allocate_low_mem_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %4 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 7
  store i8* %4, i8** %7, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i8* %17, i8** %20, align 8
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %117

29:                                               ; preds = %16
  %30 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %117

42:                                               ; preds = %29
  %43 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %117

55:                                               ; preds = %42
  %56 = load i32, i32* @FSF_STATUS_READS_RECOM, align 4
  %57 = call i8* @mempool_create_kmalloc_pool(i32 %56, i32 4)
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %117

69:                                               ; preds = %55
  %70 = load i32, i32* @zfcp_fsf_qtcb_cache, align 4
  %71 = call i8* @mempool_create_slab_pool(i32 4, i32 %70)
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %117

83:                                               ; preds = %69
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 4, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUILD_BUG_ON(i32 %87)
  %89 = load i32, i32* @FSF_STATUS_READS_RECOM, align 4
  %90 = call i32 @mempool_create_page_pool(i32 %89, i32 0)
  %91 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %117

102:                                              ; preds = %83
  %103 = load i32, i32* @zfcp_fc_req_cache, align 4
  %104 = call i8* @mempool_create_slab_pool(i32 1, i32 %103)
  %105 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %113, %99, %80, %66, %52, %39, %26, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i8* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mempool_create_page_pool(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
