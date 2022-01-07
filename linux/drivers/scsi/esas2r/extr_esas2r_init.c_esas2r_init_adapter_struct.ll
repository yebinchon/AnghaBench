; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_adapter_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_adapter_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i64*, %struct.esas2r_request*, %struct.esas2r_mem_desc, i32, i32*, %struct.esas2r_sas_nvram*, %struct.esas2r_mem_desc, i32, %struct.esas2r_mem_desc*, i32, %struct.TYPE_2__*, i32*, %struct.esas2r_request, i32*, i32*, i32, i32, i32 }
%struct.esas2r_sas_nvram = type { i32 }
%struct.esas2r_mem_desc = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.esas2r_request = type { i32, i32 }
%struct.esas2r_inbound_list_source_entry = type { i32, i64, i64 }

@ESAS2R_MAX_TARGETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"failed to allocate a VDA request for the general req!\00", align 1
@num_ae_requests = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to allocate memory for asynchronous events\00", align 1
@num_sg_lists = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to allocate memory for s/g list descriptors\00", align 1
@num_requests = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to allocate memory for the request table\00", align 1
@ATTO_VENDOR_ID = common dso_local global i64 0, align 8
@ATTO_SSDID_TBT = common dso_local global i32 0, align 4
@AF2_THUNDERBOLT = common dso_local global i32 0, align 4
@AF2_SERIAL_FLASH = common dso_local global i32 0, align 4
@ATTO_TLSH_1068 = common dso_local global i32 0, align 4
@AF2_THUNDERLINK = common dso_local global i32 0, align 4
@sgl_page_size = common dso_local global i32 0, align 4
@ESAS2R_SGL_ALIGN = common dso_local global i32 0, align 4
@NUM_SGL_MIN = common dso_local global i64 0, align 8
@ESAS2R_LIST_EXTRA = common dso_local global i64 0, align 8
@ESAS2R_LIST_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to allocate IB list\00", align 1
@ESAS2R_DISC_BUF_LEN = common dso_local global i32 0, align 4
@AF_NVR_VALID = common dso_local global i32 0, align 4
@AF_FIRST_INIT = common dso_local global i32 0, align 4
@HWILSE_INTERFACE_F0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to allocate a VDA request!\00", align 1
@esas2r_ae_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_init_adapter_struct(%struct.esas2r_adapter* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.esas2r_inbound_list_source_entry*, align 8
  %9 = alloca %struct.esas2r_request*, align 8
  %10 = alloca %struct.esas2r_mem_desc*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 18
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 17
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 16
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 14
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @ESAS2R_MAX_TARGETS, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %25, i32 0, i32 15
  store i32* %24, i32** %26, align 8
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 13
  %30 = call i32 @alloc_vda_req(%struct.esas2r_adapter* %27, %struct.esas2r_request* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

34:                                               ; preds = %2
  %35 = load i64, i64* @num_ae_requests, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kcalloc(i64 %35, i32 8, i32 %36)
  %38 = bitcast i8* %37 to %struct.esas2r_request*
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %39, i32 0, i32 2
  store %struct.esas2r_request* %38, %struct.esas2r_request** %40, align 8
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 2
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %42, align 8
  %44 = icmp eq %struct.esas2r_request* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %47 = call i32 @esas2r_log(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

48:                                               ; preds = %34
  %49 = load i64, i64* @num_sg_lists, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kcalloc(i64 %49, i32 24, i32 %50)
  %52 = bitcast i8* %51 to %struct.esas2r_mem_desc*
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %53, i32 0, i32 9
  store %struct.esas2r_mem_desc* %52, %struct.esas2r_mem_desc** %54, align 8
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %55, i32 0, i32 9
  %57 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %56, align 8
  %58 = icmp eq %struct.esas2r_mem_desc* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %61 = call i32 @esas2r_log(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

62:                                               ; preds = %48
  %63 = load i64, i64* @num_requests, align 8
  %64 = load i64, i64* @num_ae_requests, align 8
  %65 = add nsw i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kcalloc(i64 %66, i32 8, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %70, i32 0, i32 12
  store i32* %69, i32** %71, align 8
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %72, i32 0, i32 12
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %78 = call i32 @esas2r_log(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

79:                                               ; preds = %62
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %81 = call i32 @esas2r_init_pci_cfg_space(%struct.esas2r_adapter* %80)
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %82, i32 0, i32 11
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ATTO_VENDOR_ID, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %79
  %90 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %90, i32 0, i32 11
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATTO_SSDID_TBT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @AF2_THUNDERBOLT, align 4
  %100 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %89, %79
  %105 = load i32, i32* @AF2_THUNDERBOLT, align 4
  %106 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %106, i32 0, i32 10
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @AF2_SERIAL_FLASH, align 4
  %112 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %117, i32 0, i32 11
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ATTO_TLSH_1068, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @AF2_THUNDERLINK, align 4
  %126 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %116
  %131 = load i8**, i8*** %5, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %7, align 8
  store i64 0, i64* %6, align 8
  %134 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %134, i32 0, i32 9
  %136 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %135, align 8
  store %struct.esas2r_mem_desc* %136, %struct.esas2r_mem_desc** %10, align 8
  br label %137

137:                                              ; preds = %162, %130
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @num_sg_lists, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = load i32, i32* @sgl_page_size, align 4
  %143 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %10, align 8
  %144 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %10, align 8
  %146 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %145, i32 0, i32 2
  %147 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %148 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %147, i32 0, i32 8
  %149 = call i32 @list_add_tail(i32* %146, i32* %148)
  %150 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %151 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %10, align 8
  %152 = load i32, i32* @ESAS2R_SGL_ALIGN, align 4
  %153 = call i32 @esas2r_initmem_alloc(%struct.esas2r_adapter* %150, %struct.esas2r_mem_desc* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %141
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @NUM_SGL_MIN, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %311

160:                                              ; preds = %155
  br label %167

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %6, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %6, align 8
  %165 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %10, align 8
  %166 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %165, i32 1
  store %struct.esas2r_mem_desc* %166, %struct.esas2r_mem_desc** %10, align 8
  br label %137

167:                                              ; preds = %160, %137
  %168 = load i64, i64* @num_requests, align 8
  %169 = load i64, i64* @ESAS2R_LIST_EXTRA, align 8
  %170 = add nsw i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %173 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %175 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 24
  %179 = trunc i64 %178 to i32
  %180 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %181 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %184 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %185 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %184, i32 0, i32 3
  %186 = load i32, i32* @ESAS2R_LIST_ALIGN, align 4
  %187 = call i32 @esas2r_initmem_alloc(%struct.esas2r_adapter* %183, %struct.esas2r_mem_desc* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %167
  %190 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

191:                                              ; preds = %167
  %192 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %193 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %199 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %202 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %203 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %202, i32 0, i32 7
  %204 = load i32, i32* @ESAS2R_LIST_ALIGN, align 4
  %205 = call i32 @esas2r_initmem_alloc(%struct.esas2r_adapter* %201, %struct.esas2r_mem_desc* %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %191
  %208 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

209:                                              ; preds = %191
  %210 = load i32*, i32** %7, align 8
  %211 = bitcast i32* %210 to %struct.esas2r_sas_nvram*
  %212 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %213 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %212, i32 0, i32 6
  store %struct.esas2r_sas_nvram* %211, %struct.esas2r_sas_nvram** %213, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  store i32* %215, i32** %7, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %218 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %217, i32 0, i32 5
  store i32* %216, i32** %218, align 8
  %219 = load i32, i32* @ESAS2R_DISC_BUF_LEN, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %7, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = call i32* @PTR_ALIGN(i32* %223, i32 8)
  store i32* %224, i32** %7, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = bitcast i32* %225 to i64*
  %227 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %228 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %227, i32 0, i32 1
  store i64* %226, i64** %228, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 8
  store i32* %230, i32** %7, align 8
  %231 = load i32, i32* @AF_NVR_VALID, align 4
  %232 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %233 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %232, i32 0, i32 4
  %234 = call i64 @test_bit(i32 %231, i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %209
  %237 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %238 = call i32 @esas2r_nvram_set_defaults(%struct.esas2r_adapter* %237)
  br label %239

239:                                              ; preds = %236, %209
  %240 = load i32*, i32** %7, align 8
  %241 = bitcast i32* %240 to i8*
  %242 = load i8**, i8*** %5, align 8
  store i8* %241, i8** %242, align 8
  %243 = load i32, i32* @AF_FIRST_INIT, align 4
  %244 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %245 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %244, i32 0, i32 4
  %246 = call i64 @test_bit(i32 %243, i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %310

248:                                              ; preds = %239
  %249 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %250 = call i32 @esas2r_targ_db_initialize(%struct.esas2r_adapter* %249)
  %251 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %252 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to %struct.esas2r_inbound_list_source_entry*
  store %struct.esas2r_inbound_list_source_entry* %255, %struct.esas2r_inbound_list_source_entry** %8, align 8
  store i64 0, i64* %6, align 8
  br label %256

256:                                              ; preds = %276, %248
  %257 = load i64, i64* %6, align 8
  %258 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %259 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %257, %261
  br i1 %262, label %263, label %279

263:                                              ; preds = %256
  %264 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %8, align 8
  %265 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %264, i32 0, i32 2
  store i64 0, i64* %265, align 8
  %266 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %8, align 8
  %267 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %266, i32 0, i32 1
  store i64 0, i64* %267, align 8
  %268 = load i32, i32* @HWILSE_INTERFACE_F0, align 4
  %269 = sext i32 %268 to i64
  %270 = trunc i64 %269 to i32
  %271 = call i32 @cpu_to_le32(i32 %270)
  %272 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %8, align 8
  %273 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %8, align 8
  %275 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %274, i32 1
  store %struct.esas2r_inbound_list_source_entry* %275, %struct.esas2r_inbound_list_source_entry** %8, align 8
  br label %276

276:                                              ; preds = %263
  %277 = load i64, i64* %6, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %6, align 8
  br label %256

279:                                              ; preds = %256
  %280 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %281 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %280, i32 0, i32 2
  %282 = load %struct.esas2r_request*, %struct.esas2r_request** %281, align 8
  store %struct.esas2r_request* %282, %struct.esas2r_request** %9, align 8
  store i64 0, i64* %6, align 8
  br label %283

283:                                              ; preds = %304, %279
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* @num_ae_requests, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %309

287:                                              ; preds = %283
  %288 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %289 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %288, i32 0, i32 1
  %290 = call i32 @INIT_LIST_HEAD(i32* %289)
  %291 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %292 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %293 = call i32 @alloc_vda_req(%struct.esas2r_adapter* %291, %struct.esas2r_request* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %287
  %296 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %311

297:                                              ; preds = %287
  %298 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %299 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %300 = call i32 @esas2r_rq_init_request(%struct.esas2r_request* %298, %struct.esas2r_adapter* %299)
  %301 = load i32, i32* @esas2r_ae_complete, align 4
  %302 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %303 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %297
  %305 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %306 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %305, i32 1
  store %struct.esas2r_request* %306, %struct.esas2r_request** %9, align 8
  %307 = load i64, i64* %6, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %6, align 8
  br label %283

309:                                              ; preds = %283
  br label %310

310:                                              ; preds = %309, %239
  store i32 1, i32* %3, align 4
  br label %311

311:                                              ; preds = %310, %295, %207, %189, %159, %76, %59, %45, %32
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @alloc_vda_req(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_init_pci_cfg_space(%struct.esas2r_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @esas2r_initmem_alloc(%struct.esas2r_adapter*, %struct.esas2r_mem_desc*, i32) #1

declare dso_local i32* @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @esas2r_nvram_set_defaults(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_targ_db_initialize(%struct.esas2r_adapter*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @esas2r_rq_init_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
