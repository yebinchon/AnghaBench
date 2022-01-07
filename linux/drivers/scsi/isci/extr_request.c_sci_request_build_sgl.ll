; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_request_build_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_request_build_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, %struct.isci_host* }
%struct.isci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_task = type { i64, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.scu_sgl_element_pair = type { i8*, i8*, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @sci_request_build_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_request_build_sgl(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scu_sgl_element_pair*, align 8
  %9 = alloca %struct.scu_sgl_element_pair*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %10 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %11 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %10, i32 0, i32 1
  %12 = load %struct.isci_host*, %struct.isci_host** %11, align 8
  store %struct.isci_host* %12, %struct.isci_host** %3, align 8
  %13 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %14 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %13)
  store %struct.sas_task* %14, %struct.sas_task** %4, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.scu_sgl_element_pair* null, %struct.scu_sgl_element_pair** %8, align 8
  store %struct.scu_sgl_element_pair* null, %struct.scu_sgl_element_pair** %9, align 8
  %15 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %1
  %20 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 3
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  store %struct.scatterlist* %22, %struct.scatterlist** %5, align 8
  br label %23

23:                                               ; preds = %65, %19
  %24 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %25 = icmp ne %struct.scatterlist* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %27, i64 %28)
  store %struct.scu_sgl_element_pair* %29, %struct.scu_sgl_element_pair** %8, align 8
  %30 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %31 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %30, i32 0, i32 2
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = call i32 @init_sgl_element(%struct.TYPE_5__* %31, %struct.scatterlist* %32)
  %34 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %35 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %34)
  store %struct.scatterlist* %35, %struct.scatterlist** %5, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %37 = icmp ne %struct.scatterlist* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %40 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %39, i32 0, i32 3
  %41 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %42 = call i32 @init_sgl_element(%struct.TYPE_5__* %40, %struct.scatterlist* %41)
  %43 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %44 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %43)
  store %struct.scatterlist* %44, %struct.scatterlist** %5, align 8
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %47 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %46, i32 0, i32 3
  %48 = call i32 @memset(%struct.TYPE_5__* %47, i32 0, i32 24)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %9, align 8
  %51 = icmp ne %struct.scu_sgl_element_pair* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %54 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @to_sgl_element_pair_dma(%struct.isci_host* %53, %struct.isci_request* %54, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @upper_32_bits(i32 %57)
  %59 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %9, align 8
  %60 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @lower_32_bits(i32 %61)
  %63 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %9, align 8
  %64 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %52, %49
  %66 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  store %struct.scu_sgl_element_pair* %66, %struct.scu_sgl_element_pair** %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %23

69:                                               ; preds = %23
  br label %107

70:                                               ; preds = %1
  %71 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %71, i64 %72)
  store %struct.scu_sgl_element_pair* %73, %struct.scu_sgl_element_pair** %8, align 8
  %74 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %75 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %79 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %78, i32 0, i32 3
  %80 = load %struct.scatterlist*, %struct.scatterlist** %79, align 8
  %81 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %82 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %85 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dma_map_single(i32* %77, %struct.scatterlist* %80, i32 %83, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %90 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %92 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %95 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i8* @upper_32_bits(i32 %97)
  %99 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %100 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i8* @lower_32_bits(i32 %102)
  %104 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %105 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %70, %69
  %108 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %109 = icmp ne %struct.scu_sgl_element_pair* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %112 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %111, i32 0, i32 1
  store i8* null, i8** %112, align 8
  %113 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %8, align 8
  %114 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %113, i32 0, i32 0
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  ret void
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request*, i64) #1

declare dso_local i32 @init_sgl_element(%struct.TYPE_5__*, %struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @to_sgl_element_pair_dma(%struct.isci_host*, %struct.isci_request*, i64) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
