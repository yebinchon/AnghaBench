; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_new_io_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_new_io_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.lpfc_io_buf = type { i32, i32, %struct.lpfc_iocbq, i32, i32, i64, i64, i32, i32 }
%struct.lpfc_iocbq = type { %struct.lpfc_io_buf*, i32, i64 }

@prep_nblist = common dso_local global i32 0, align 4
@post_nblist = common dso_local global i32 0, align 4
@nvme_nblist = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@SLI4_PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"3369 Memory alignment err: addr=%lx\0A\00", align 1
@NO_XRI = common dso_local global i64 0, align 8
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"6121 Failed to allocate IOTAG for XRI:0x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"6114 Allocate %d out of %d requested new NVME buffers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_new_io_buf(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* @prep_nblist, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load i32, i32* @post_nblist, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load i32, i32* @nvme_nblist, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %192, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %195

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.lpfc_io_buf* @kzalloc(i32 64, i32 %25)
  store %struct.lpfc_io_buf* %26, %struct.lpfc_io_buf** %5, align 8
  %27 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %28 = icmp ne %struct.lpfc_io_buf* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %195

30:                                               ; preds = %24
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %35, i32 0, i32 3
  %37 = call i64 @dma_pool_zalloc(i32 %33, i32 %34, i32* %36)
  %38 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %46 = call i32 @kfree(%struct.lpfc_io_buf* %45)
  br label %195

47:                                               ; preds = %30
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %58, i32 0, i32 8
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  br label %99

61:                                               ; preds = %52, %47
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %61
  %69 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = and i64 %71, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %68
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load i32, i32* @LOG_FCP, align 4
  %81 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %93 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_pool_free(i32 %88, i64 %91, i32 %94)
  %96 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %97 = call i32 @kfree(%struct.lpfc_io_buf* %96)
  br label %195

98:                                               ; preds = %68, %61
  br label %99

99:                                               ; preds = %98, %57
  %100 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %101 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %100, i32 0, i32 7
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = call i64 @lpfc_sli4_next_xritag(%struct.lpfc_hba* %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @NO_XRI, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %113 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dma_pool_free(i32 %111, i64 %114, i32 %117)
  %119 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %120 = call i32 @kfree(%struct.lpfc_io_buf* %119)
  br label %195

121:                                              ; preds = %99
  %122 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %123 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %122, i32 0, i32 2
  store %struct.lpfc_iocbq* %123, %struct.lpfc_iocbq** %6, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %126 = call i64 @lpfc_sli_next_iotag(%struct.lpfc_hba* %124, %struct.lpfc_iocbq* %125)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %121
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %134 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %137 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dma_pool_free(i32 %132, i64 %135, i32 %138)
  %140 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %141 = call i32 @kfree(%struct.lpfc_io_buf* %140)
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %143 = load i32, i32* @KERN_ERR, align 4
  %144 = load i32, i32* @LOG_NVME_IOERR, align 4
  %145 = load i64, i64* %8, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @lpfc_sli4_free_xri(%struct.lpfc_hba* %148, i64 %149)
  br label %195

151:                                              ; preds = %121
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %154 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %163 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %165 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %166 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %165, i32 0, i32 0
  store %struct.lpfc_io_buf* %164, %struct.lpfc_io_buf** %166, align 8
  %167 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %168 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %171 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %170, i32 0, i32 6
  store i64 %169, i64* %171, align 8
  %172 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %173 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %176 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %178 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %179 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %179, i32 0, i32 0
  store %struct.lpfc_io_buf* %177, %struct.lpfc_io_buf** %180, align 8
  %181 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %182 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %181, i32 0, i32 1
  %183 = call i32 @spin_lock_init(i32* %182)
  %184 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %185 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %184, i32 0, i32 0
  %186 = call i32 @list_add_tail(i32* %185, i32* @post_nblist)
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %151
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %20

195:                                              ; preds = %129, %108, %77, %44, %29, %20
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %197 = load i32, i32* @KERN_INFO, align 4
  %198 = load i32, i32* @LOG_NVME, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %199, i32 %200)
  %202 = call i32 @list_empty(i32* @post_nblist)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %195
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @lpfc_sli4_post_io_sgl_list(%struct.lpfc_hba* %205, i32* @post_nblist, i32 %206)
  store i32 %207, i32* %10, align 4
  br label %209

208:                                              ; preds = %195
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i32, i32* %10, align 4
  ret i32 %210
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.lpfc_io_buf* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_io_buf*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i64 @lpfc_sli4_next_xritag(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli_next_iotag(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli4_free_xri(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_sli4_post_io_sgl_list(%struct.lpfc_hba*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
