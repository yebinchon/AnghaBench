; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_eqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.hwi_context_memory = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.be_queue_info, %struct.beiscsi_hba* }
%struct.be_queue_info = type { %struct.be_dma_mem, i32 }
%struct.be_dma_mem = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BM_%d : be_fill_queue Failed for EQ\0A\00", align 1
@BEISCSI_EQ_DELAY_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"BM_%d : beiscsi_cmd_eq_createFailed for EQ\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"BM_%d : eqid = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*)* @beiscsi_create_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_create_eqs(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_queue_info*, align 8
  %11 = alloca %struct.be_dma_mem*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %5, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @PAGES_REQUIRED(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %30
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %121, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %33
  %42 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %43 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.be_queue_info* %48, %struct.be_queue_info** %10, align 8
  %49 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %50 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %49, i32 0, i32 0
  store %struct.be_dma_mem* %50, %struct.be_dma_mem** %11, align 8
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %52 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %53 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store %struct.beiscsi_hba* %51, %struct.beiscsi_hba** %58, align 8
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @dma_alloc_coherent(i32* %62, i32 %65, i32* %13, i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %41
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %125

73:                                               ; preds = %41
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %76 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @be_fill_queue(%struct.be_queue_info* %77, i32 %81, i32 4, i8* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %90 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %125

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %94 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 2
  %97 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %98 = load i32, i32* @BEISCSI_EQ_DELAY_DEF, align 4
  %99 = call i32 @beiscsi_cmd_eq_create(i32* %96, %struct.be_queue_info* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %106 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %125

107:                                              ; preds = %91
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %111 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %112 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %33

124:                                              ; preds = %33
  store i32 0, i32* %3, align 4
  br label %169

125:                                              ; preds = %102, %86, %70
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %164, %125
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %129 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %126
  %135 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %136 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store %struct.be_queue_info* %141, %struct.be_queue_info** %10, align 8
  %142 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %143 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %142, i32 0, i32 0
  store %struct.be_dma_mem* %143, %struct.be_dma_mem** %11, align 8
  %144 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %145 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %134
  %149 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %150 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @PAGE_SIZE, align 4
  %155 = mul i32 %153, %154
  %156 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %157 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %160 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dma_free_coherent(i32* %152, i32 %155, i8* %158, i32 %161)
  br label %163

163:                                              ; preds = %148, %134
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %126

167:                                              ; preds = %126
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %124
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @PAGES_REQUIRED(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @be_fill_queue(%struct.be_queue_info*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @beiscsi_cmd_eq_create(i32*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
