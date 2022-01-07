; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_exec_nemb_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_exec_nemb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { void (%struct.beiscsi_hba*, i32)*, %struct.be_dma_mem, i32 }
%struct.be_dma_mem = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@MCC_TAG_STATE_ASYNC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.be_dma_mem*, void (%struct.beiscsi_hba*, i32)*, i8*, i32)* @beiscsi_exec_nemb_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %0, %struct.be_dma_mem* %1, void (%struct.beiscsi_hba*, i32)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca void (%struct.beiscsi_hba*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_ctrl_info*, align 8
  %13 = alloca %struct.be_mcc_wrb*, align 8
  %14 = alloca %struct.be_sge*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.be_dma_mem*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %8, align 8
  store void (%struct.beiscsi_hba*, i32)* %2, void (%struct.beiscsi_hba*, i32)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 0
  store %struct.be_ctrl_info* %19, %struct.be_ctrl_info** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %24 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %23, i32* %15)
  store %struct.be_mcc_wrb* %24, %struct.be_mcc_wrb** %13, align 8
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %26 = icmp ne %struct.be_mcc_wrb* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %29 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %143

33:                                               ; preds = %5
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %35 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %34)
  store %struct.be_sge* %35, %struct.be_sge** %14, align 8
  %36 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %37 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %36, i32 %39, i32 0, i32 1)
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @upper_32_bits(i32 %43)
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %47 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %49 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %54 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %60 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load void (%struct.beiscsi_hba*, i32)*, void (%struct.beiscsi_hba*, i32)** %9, align 8
  %62 = icmp ne void (%struct.beiscsi_hba*, i32)* %61, null
  br i1 %62, label %63, label %104

63:                                               ; preds = %33
  %64 = load i32, i32* @MCC_TAG_STATE_ASYNC, align 4
  %65 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %66 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = call i32 @set_bit(i32 %64, i32* %71)
  %73 = load void (%struct.beiscsi_hba*, i32)*, void (%struct.beiscsi_hba*, i32)** %9, align 8
  %74 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %75 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store void (%struct.beiscsi_hba*, i32)* %73, void (%struct.beiscsi_hba*, i32)** %80, align 8
  %81 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %82 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store %struct.be_dma_mem* %88, %struct.be_dma_mem** %17, align 8
  %89 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %90 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.be_dma_mem*, %struct.be_dma_mem** %17, align 8
  %93 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.be_dma_mem*, %struct.be_dma_mem** %17, align 8
  %98 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %100 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.be_dma_mem*, %struct.be_dma_mem** %17, align 8
  %103 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %63, %33
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %105, i32 %106)
  %108 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %109 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load void (%struct.beiscsi_hba*, i32)*, void (%struct.beiscsi_hba*, i32)** %9, align 8
  %112 = icmp ne void (%struct.beiscsi_hba*, i32)* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %159

114:                                              ; preds = %104
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %118 = call i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %115, i32 %116, i32* null, %struct.be_dma_mem* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %124 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @memcpy(i8* %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %6, align 4
  br label %159

135:                                              ; preds = %128
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @EBUSY, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %6, align 4
  br label %159

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %27
  %144 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %145 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %149 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %152 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %155 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dma_free_coherent(i32* %147, i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %143, %140, %133, %113
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba*, i32, i32*, %struct.be_dma_mem*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
