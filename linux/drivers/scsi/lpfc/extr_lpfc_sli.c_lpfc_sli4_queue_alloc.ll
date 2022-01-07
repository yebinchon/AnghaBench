; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_hba*, i32, i32, i32, i32, i32 }
%struct.lpfc_hba = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.lpfc_dmabuf = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_sli4_hba_process_cq = common dso_local global i32 0, align 4
@lpfc_sli4_sp_process_cq = common dso_local global i32 0, align 4
@lpfc_sli4_dly_hba_process_cq = common dso_local global i32 0, align 4
@lpfc_sli4_dly_sp_process_cq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_queue*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %28, %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @ALIGN(i32 %33, i32 %34)
  %36 = load i32, i32* %14, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %45, %30
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = add i64 88, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @cpu_to_node(i32 %58)
  %60 = call i8* @kzalloc_node(i32 %56, i32 %57, i32 %59)
  %61 = bitcast i8* %60 to %struct.lpfc_queue*
  store %struct.lpfc_queue* %61, %struct.lpfc_queue** %12, align 8
  %62 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %63 = icmp ne %struct.lpfc_queue* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %6, align 8
  br label %188

65:                                               ; preds = %51
  %66 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %67 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %66, i32 0, i32 16
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %70 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %69, i32 0, i32 15
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %73 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %72, i32 0, i32 14
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %76 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %75, i32 0, i32 10
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %79 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %78, i32 0, i32 13
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %82 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %81, i32 0, i32 12
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %88 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %87, i64 1
  %89 = bitcast %struct.lpfc_queue* %88 to i8**
  %90 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %91 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %90, i32 0, i32 1
  store i8** %89, i8*** %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sdiv i32 %92, %93
  %95 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %96 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %99 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %102 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %107 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %107, i32 0, i32 11
  store %struct.lpfc_hba* %106, %struct.lpfc_hba** %108, align 8
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %164, %65
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %112 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %167

115:                                              ; preds = %109
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = call i32 @dev_to_node(i32* %120)
  %122 = call i8* @kzalloc_node(i32 24, i32 %116, i32 %121)
  %123 = bitcast i8* %122 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %123, %struct.lpfc_dmabuf** %13, align 8
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %125 = icmp ne %struct.lpfc_dmabuf* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  br label %185

127:                                              ; preds = %115
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %134 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %133, i32 0, i32 3
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @dma_alloc_coherent(i32* %131, i32 %132, i32* %134, i32 %135)
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %138 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %140 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %127
  %144 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %145 = call i32 @kfree(%struct.lpfc_dmabuf* %144)
  br label %185

146:                                              ; preds = %127
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %149 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %151 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %150, i32 0, i32 2
  %152 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %153 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %152, i32 0, i32 10
  %154 = call i32 @list_add_tail(i32* %151, i32* %153)
  %155 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %156 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %159 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %158, i32 0, i32 1
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %157, i8** %163, align 8
  br label %164

164:                                              ; preds = %146
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %109

167:                                              ; preds = %109
  %168 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %169 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %168, i32 0, i32 9
  %170 = load i32, i32* @lpfc_sli4_hba_process_cq, align 4
  %171 = call i32 @INIT_WORK(i32* %169, i32 %170)
  %172 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %173 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %172, i32 0, i32 8
  %174 = load i32, i32* @lpfc_sli4_sp_process_cq, align 4
  %175 = call i32 @INIT_WORK(i32* %173, i32 %174)
  %176 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %177 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %176, i32 0, i32 7
  %178 = load i32, i32* @lpfc_sli4_dly_hba_process_cq, align 4
  %179 = call i32 @INIT_DELAYED_WORK(i32* %177, i32 %178)
  %180 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %181 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %180, i32 0, i32 6
  %182 = load i32, i32* @lpfc_sli4_dly_sp_process_cq, align 4
  %183 = call i32 @INIT_DELAYED_WORK(i32* %181, i32 %182)
  %184 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  store %struct.lpfc_queue* %184, %struct.lpfc_queue** %6, align 8
  br label %188

185:                                              ; preds = %143, %126
  %186 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %187 = call i32 @lpfc_sli4_queue_free(%struct.lpfc_queue* %186)
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %6, align 8
  br label %188

188:                                              ; preds = %185, %167, %64
  %189 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  ret %struct.lpfc_queue* %189
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @lpfc_sli4_queue_free(%struct.lpfc_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
