; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_async_pdu_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_async_pdu_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.hba_parameters, i64, %struct.hwi_controller*, %struct.TYPE_25__ }
%struct.hba_parameters = type { i32, i32 }
%struct.hwi_controller = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.hd_async_context** }
%struct.hd_async_context = type { i32, %struct.hd_async_entry*, %struct.TYPE_24__, %struct.TYPE_31__ }
%struct.hd_async_entry = type { %struct.hd_async_handle*, %struct.TYPE_32__, %struct.hd_async_handle* }
%struct.TYPE_32__ = type { i32 }
%struct.hd_async_handle = type { i32, i32, i32, %struct.TYPE_20__, i8*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__, i64, i64, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.be_mem_descriptor = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_35__, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }

@BEISCSI_ULP_COUNT = common dso_local global i64 0, align 8
@HWI_MEM_ASYNC_PDU_CONTEXT_ULP0 = common dso_local global i64 0, align 8
@MEM_DESCR_OFFSET = common dso_local global i64 0, align 8
@HWI_MEM_ASYNC_HEADER_BUF_ULP0 = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_BUF_ULP%d va=%p\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"BM_%d : No Virtual address for ULP : %d\0A\00", align 1
@HWI_MEM_ASYNC_HEADER_RING_ULP0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_RING_ULP%d va=%p\0A\00", align 1
@HWI_MEM_ASYNC_HEADER_HANDLE_ULP0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [72 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_HANDLE_ULP%d va=%p\0A\00", align 1
@HWI_MEM_ASYNC_DATA_RING_ULP0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [68 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_DATA_RING_ULP%d va=%p\0A\00", align 1
@HWI_MEM_ASYNC_DATA_HANDLE_ULP0 = common dso_local global i64 0, align 8
@HWI_MEM_ASYNC_DATA_BUF_ULP0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_DATA_BUF_ULP%d va=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hwi_init_async_pdu_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwi_init_async_pdu_ctx(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hwi_controller*, align 8
  %5 = alloca %struct.hba_parameters*, align 8
  %6 = alloca %struct.hd_async_context*, align 8
  %7 = alloca %struct.hd_async_handle*, align 8
  %8 = alloca %struct.hd_async_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_mem_descriptor*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 0
  store %struct.hba_parameters* %15, %struct.hba_parameters** %5, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %594, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %597

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i64 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %593

27:                                               ; preds = %20
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %31, %struct.be_mem_descriptor** %13, align 8
  %32 = load i64, i64* @HWI_MEM_ASYNC_PDU_CONTEXT_ULP0, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 %32, %35
  %37 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %38 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %37, i64 %36
  store %struct.be_mem_descriptor* %38, %struct.be_mem_descriptor** %13, align 8
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 2
  %41 = load %struct.hwi_controller*, %struct.hwi_controller** %40, align 8
  store %struct.hwi_controller* %41, %struct.hwi_controller** %4, align 8
  %42 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %43 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %42, i32 0, i32 0
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.hd_async_context*
  %49 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %50 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %49, i32 0, i32 0
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load %struct.hd_async_context**, %struct.hd_async_context*** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.hd_async_context*, %struct.hd_async_context** %53, i64 %54
  store %struct.hd_async_context* %48, %struct.hd_async_context** %55, align 8
  %56 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %57 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %56, i32 0, i32 0
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.hd_async_context**, %struct.hd_async_context*** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.hd_async_context*, %struct.hd_async_context** %60, i64 %61
  %63 = load %struct.hd_async_context*, %struct.hd_async_context** %62, align 8
  store %struct.hd_async_context* %63, %struct.hd_async_context** %6, align 8
  %64 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %65 = call i32 @memset(%struct.hd_async_context* %64, i32 0, i32 112)
  %66 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %67 = ptrtoint %struct.hd_async_context* %66 to i64
  %68 = add i64 %67, 112
  %69 = inttoptr i64 %68 to %struct.hd_async_entry*
  %70 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %71 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %70, i32 0, i32 1
  store %struct.hd_async_entry* %69, %struct.hd_async_entry** %71, align 8
  %72 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @BEISCSI_ASYNC_HDQ_SIZE(%struct.beiscsi_hba* %72, i64 %73)
  %75 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %76 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %78 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %80, %struct.be_mem_descriptor** %13, align 8
  %81 = load i64, i64* @HWI_MEM_ASYNC_HEADER_BUF_ULP0, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %84 = mul i64 %82, %83
  %85 = add i64 %81, %84
  %86 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %87 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %86, i64 %85
  store %struct.be_mem_descriptor* %87, %struct.be_mem_descriptor** %13, align 8
  %88 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %89 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %88, i32 0, i32 0
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %27
  %96 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %99 = load i64, i64* %3, align 8
  %100 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %101 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %100, i32 0, i32 0
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %99, i64 %105)
  br label %113

107:                                              ; preds = %27
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %109 = load i32, i32* @KERN_WARNING, align 4
  %110 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %111 = load i64, i64* %3, align 8
  %112 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %107, %95
  %114 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %115 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %121 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %124 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %123, i32 0, i32 0
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %130 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 2
  store i64 %128, i64* %131, align 8
  %132 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %133 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %132, i32 0, i32 0
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %142 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  store i64 %140, i64* %146, align 8
  %147 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %148 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %150, %struct.be_mem_descriptor** %13, align 8
  %151 = load i64, i64* @HWI_MEM_ASYNC_HEADER_RING_ULP0, align 8
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %154 = mul i64 %152, %153
  %155 = add i64 %151, %154
  %156 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %157 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %156, i64 %155
  store %struct.be_mem_descriptor* %157, %struct.be_mem_descriptor** %13, align 8
  %158 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %159 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %158, i32 0, i32 0
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %113
  %166 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %167 = load i32, i32* @KERN_INFO, align 4
  %168 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %169 = load i64, i64* %3, align 8
  %170 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %171 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %170, i32 0, i32 0
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %169, i64 %175)
  br label %183

177:                                              ; preds = %113
  %178 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %179 = load i32, i32* @KERN_WARNING, align 4
  %180 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %181 = load i64, i64* %3, align 8
  %182 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %178, i32 %179, i32 %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %177, %165
  %184 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %185 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %184, i32 0, i32 0
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %191 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 4
  store i64 %189, i64* %192, align 8
  %193 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %194 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %196, %struct.be_mem_descriptor** %13, align 8
  %197 = load i64, i64* @HWI_MEM_ASYNC_HEADER_HANDLE_ULP0, align 8
  %198 = load i64, i64* %3, align 8
  %199 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %200 = mul i64 %198, %199
  %201 = add i64 %197, %200
  %202 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %203 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %202, i64 %201
  store %struct.be_mem_descriptor* %203, %struct.be_mem_descriptor** %13, align 8
  %204 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %205 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %204, i32 0, i32 0
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %183
  %212 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %213 = load i32, i32* @KERN_INFO, align 4
  %214 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %215 = load i64, i64* %3, align 8
  %216 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %217 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %216, i32 0, i32 0
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %215, i64 %221)
  br label %229

223:                                              ; preds = %183
  %224 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %225 = load i32, i32* @KERN_WARNING, align 4
  %226 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %227 = load i64, i64* %3, align 8
  %228 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %224, i32 %225, i32 %226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %223, %211
  %230 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %231 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %230, i32 0, i32 0
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %237 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 3
  store i64 %235, i64* %238, align 8
  %239 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %240 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %242, %struct.be_mem_descriptor** %13, align 8
  %243 = load i64, i64* @HWI_MEM_ASYNC_DATA_RING_ULP0, align 8
  %244 = load i64, i64* %3, align 8
  %245 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %246 = mul i64 %244, %245
  %247 = add i64 %243, %246
  %248 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %249 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %248, i64 %247
  store %struct.be_mem_descriptor* %249, %struct.be_mem_descriptor** %13, align 8
  %250 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %251 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %250, i32 0, i32 0
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %229
  %258 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %259 = load i32, i32* @KERN_INFO, align 4
  %260 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %261 = load i64, i64* %3, align 8
  %262 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %263 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %262, i32 0, i32 0
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %258, i32 %259, i32 %260, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %261, i64 %267)
  br label %275

269:                                              ; preds = %229
  %270 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %271 = load i32, i32* @KERN_WARNING, align 4
  %272 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %273 = load i64, i64* %3, align 8
  %274 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %273)
  br label %275

275:                                              ; preds = %269, %257
  %276 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %277 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %276, i32 0, i32 0
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %283 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 5
  store i64 %281, i64* %284, align 8
  %285 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %286 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %288, %struct.be_mem_descriptor** %13, align 8
  %289 = load i64, i64* @HWI_MEM_ASYNC_DATA_HANDLE_ULP0, align 8
  %290 = load i64, i64* %3, align 8
  %291 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %292 = mul i64 %290, %291
  %293 = add i64 %289, %292
  %294 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %295 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %294, i64 %293
  store %struct.be_mem_descriptor* %295, %struct.be_mem_descriptor** %13, align 8
  %296 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %297 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %296, i32 0, i32 0
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %275
  %304 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %305 = load i32, i32* @KERN_WARNING, align 4
  %306 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %307 = load i64, i64* %3, align 8
  %308 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %304, i32 %305, i32 %306, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %307)
  br label %309

309:                                              ; preds = %303, %275
  %310 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %311 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %310, i32 0, i32 0
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i64 0
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %317 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 4
  store i64 %315, i64* %318, align 8
  %319 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %320 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = inttoptr i64 %322 to %struct.hd_async_handle*
  store %struct.hd_async_handle* %323, %struct.hd_async_handle** %7, align 8
  %324 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %325 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = inttoptr i64 %327 to %struct.hd_async_handle*
  store %struct.hd_async_handle* %328, %struct.hd_async_handle** %8, align 8
  %329 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %330 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = inttoptr i64 %331 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %332, %struct.be_mem_descriptor** %13, align 8
  %333 = load i64, i64* @HWI_MEM_ASYNC_DATA_BUF_ULP0, align 8
  %334 = load i64, i64* %3, align 8
  %335 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %336 = mul i64 %334, %335
  %337 = add i64 %333, %336
  %338 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %339 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %338, i64 %337
  store %struct.be_mem_descriptor* %339, %struct.be_mem_descriptor** %13, align 8
  %340 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %341 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %340, i32 0, i32 0
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %309
  %348 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %349 = load i32, i32* @KERN_INFO, align 4
  %350 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %351 = load i64, i64* %3, align 8
  %352 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %353 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %352, i32 0, i32 0
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i64 0
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %348, i32 %349, i32 %350, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %351, i64 %357)
  br label %365

359:                                              ; preds = %309
  %360 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %361 = load i32, i32* @KERN_WARNING, align 4
  %362 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %363 = load i64, i64* %3, align 8
  %364 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %360, i32 %361, i32 %362, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %363)
  br label %365

365:                                              ; preds = %359, %347
  store i32 0, i32* %10, align 4
  %366 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %367 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 3
  store i64 0, i64* %368, align 8
  %369 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %370 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %373 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 0
  store i32 %371, i32* %374, align 8
  %375 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %376 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %375, i32 0, i32 0
  %377 = load %struct.TYPE_27__*, %struct.TYPE_27__** %376, align 8
  %378 = load i32, i32* %10, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %384 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 2
  store i64 %382, i64* %385, align 8
  %386 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %387 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %386, i32 0, i32 0
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %398 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  store i64 %396, i64* %402, align 8
  %403 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %404 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %403, i32 0, i32 0
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %412 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = udiv i32 %410, %414
  store i32 %415, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %416

416:                                              ; preds = %589, %365
  %417 = load i32, i32* %9, align 4
  %418 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %419 = load i64, i64* %3, align 8
  %420 = call i32 @BEISCSI_ASYNC_HDQ_SIZE(%struct.beiscsi_hba* %418, i64 %419)
  %421 = icmp ult i32 %417, %420
  br i1 %421, label %422, label %592

422:                                              ; preds = %416
  %423 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %424 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %423, i32 0, i32 0
  store i32 -1, i32* %424, align 8
  %425 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %426 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %425, i32 0, i32 1
  store i32 1, i32* %426, align 4
  %427 = load i32, i32* %9, align 4
  %428 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %429 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %431 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %430, i32 0, i32 5
  %432 = call i32 @INIT_LIST_HEAD(i32* %431)
  %433 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %434 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 2
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %438 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %9, align 4
  %441 = mul i32 %439, %440
  %442 = zext i32 %441 to i64
  %443 = add i64 %436, %442
  %444 = inttoptr i64 %443 to i8*
  %445 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %446 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %445, i32 0, i32 4
  store i8* %444, i8** %446, align 8
  %447 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %448 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %447, i32 0, i32 3
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %455 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %9, align 4
  %458 = mul i32 %456, %457
  %459 = zext i32 %458 to i64
  %460 = add nsw i64 %453, %459
  %461 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %462 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i32 0, i32 0
  store i64 %460, i64* %465, align 8
  %466 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %467 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %468 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %467, i32 0, i32 1
  %469 = load %struct.hd_async_entry*, %struct.hd_async_entry** %468, align 8
  %470 = load i32, i32* %9, align 4
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %469, i64 %471
  %473 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %472, i32 0, i32 2
  store %struct.hd_async_handle* %466, %struct.hd_async_handle** %473, align 8
  %474 = load %struct.hd_async_handle*, %struct.hd_async_handle** %7, align 8
  %475 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %474, i32 1
  store %struct.hd_async_handle* %475, %struct.hd_async_handle** %7, align 8
  %476 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %477 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %476, i32 0, i32 1
  %478 = load %struct.hd_async_entry*, %struct.hd_async_entry** %477, align 8
  %479 = load i32, i32* %9, align 4
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %478, i64 %480
  %482 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %482, i32 0, i32 0
  %484 = call i32 @INIT_LIST_HEAD(i32* %483)
  %485 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %486 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %485, i32 0, i32 0
  store i32 -1, i32* %486, align 8
  %487 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %488 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %487, i32 0, i32 1
  store i32 0, i32* %488, align 4
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %491 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  %492 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %493 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %492, i32 0, i32 5
  %494 = call i32 @INIT_LIST_HEAD(i32* %493)
  %495 = load i32, i32* %12, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %541, label %497

497:                                              ; preds = %422
  store i32 0, i32* %11, align 4
  %498 = load i32, i32* %10, align 4
  %499 = add i32 %498, 1
  store i32 %499, i32* %10, align 4
  %500 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %501 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %500, i32 0, i32 0
  %502 = load %struct.TYPE_27__*, %struct.TYPE_27__** %501, align 8
  %503 = load i32, i32* %10, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %509 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %509, i32 0, i32 2
  store i64 %507, i64* %510, align 8
  %511 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %512 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %511, i32 0, i32 0
  %513 = load %struct.TYPE_27__*, %struct.TYPE_27__** %512, align 8
  %514 = load i32, i32* %10, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %523 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  store i64 %521, i64* %527, align 8
  %528 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %529 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %528, i32 0, i32 0
  %530 = load %struct.TYPE_27__*, %struct.TYPE_27__** %529, align 8
  %531 = load i32, i32* %10, align 4
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %537 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = udiv i32 %535, %539
  store i32 %540, i32* %12, align 4
  br label %541

541:                                              ; preds = %497, %422
  %542 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %543 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %543, i32 0, i32 2
  %545 = load i64, i64* %544, align 8
  %546 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %547 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* %11, align 4
  %550 = mul i32 %548, %549
  %551 = zext i32 %550 to i64
  %552 = add i64 %545, %551
  %553 = inttoptr i64 %552 to i8*
  %554 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %555 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %554, i32 0, i32 4
  store i8* %553, i8** %555, align 8
  %556 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %557 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %564 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* %11, align 4
  %567 = mul i32 %565, %566
  %568 = zext i32 %567 to i64
  %569 = add nsw i64 %562, %568
  %570 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %571 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %570, i32 0, i32 3
  %572 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %573, i32 0, i32 0
  store i64 %569, i64* %574, align 8
  %575 = load i32, i32* %11, align 4
  %576 = add i32 %575, 1
  store i32 %576, i32* %11, align 4
  %577 = load i32, i32* %12, align 4
  %578 = add i32 %577, -1
  store i32 %578, i32* %12, align 4
  %579 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %580 = load %struct.hd_async_context*, %struct.hd_async_context** %6, align 8
  %581 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %580, i32 0, i32 1
  %582 = load %struct.hd_async_entry*, %struct.hd_async_entry** %581, align 8
  %583 = load i32, i32* %9, align 4
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %582, i64 %584
  %586 = getelementptr inbounds %struct.hd_async_entry, %struct.hd_async_entry* %585, i32 0, i32 0
  store %struct.hd_async_handle* %579, %struct.hd_async_handle** %586, align 8
  %587 = load %struct.hd_async_handle*, %struct.hd_async_handle** %8, align 8
  %588 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %587, i32 1
  store %struct.hd_async_handle* %588, %struct.hd_async_handle** %8, align 8
  br label %589

589:                                              ; preds = %541
  %590 = load i32, i32* %9, align 4
  %591 = add i32 %590, 1
  store i32 %591, i32* %9, align 4
  br label %416

592:                                              ; preds = %416
  br label %593

593:                                              ; preds = %592, %20
  br label %594

594:                                              ; preds = %593
  %595 = load i64, i64* %3, align 8
  %596 = add i64 %595, 1
  store i64 %596, i64* %3, align 8
  br label %16

597:                                              ; preds = %16
  ret i32 0
}

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @memset(%struct.hd_async_context*, i32, i32) #1

declare dso_local i32 @BEISCSI_ASYNC_HDQ_SIZE(%struct.beiscsi_hba*, i64) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
