; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_fm_api.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_fm_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_sg_context*, i32, %struct.esas2r_flash_context }
%struct.esas2r_flash_context = type { i32, i64, i32, i32, %struct.esas2r_sg_context, i32, i32, i32, i32, i32*, %struct.esas2r_flash_img* }
%struct.esas2r_sg_context = type { i32*, i32 }
%struct.esas2r_flash_img = type { i32, i32, i32, %struct.esas2r_component_header*, i32, %struct.esas2r_sg_context*, i32, i32, i32, i32, i32 }
%struct.esas2r_component_header = type { i32, i32, i32*, i32, i32, i32 }
%struct.esas2r_request = type { %struct.esas2r_flash_context*, i32 }

@AF_FLASH_LOCK = common dso_local global i32 0, align 4
@FI_STAT_BUSY = common dso_local global i32 0, align 4
@RS_SUCCESS = common dso_local global i32 0, align 4
@FI_NUM_COMPS_V1 = common dso_local global i32 0, align 4
@FI_STAT_IMG_VER = common dso_local global i32 0, align 4
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@FI_STAT_DEGRADED = common dso_local global i32 0, align 4
@CH_IT_BIOS = common dso_local global i64 0, align 8
@CH_IT_EFI = common dso_local global i64 0, align 8
@FMTSK_ERASE_BOOT = common dso_local global i32 0, align 4
@VDA_FLASH_BEGINW = common dso_local global i32 0, align 4
@CH_IT_CFG = common dso_local global i64 0, align 8
@FLS_OFFSET_BOOT = common dso_local global i32 0, align 4
@FLS_LENGTH_BOOT = common dso_local global i32 0, align 4
@fw_download_proc = common dso_local global i32 0, align 4
@CH_STAT_PENDING = common dso_local global i32 0, align 4
@CH_IT_MAC = common dso_local global i64 0, align 8
@CH_STAT_SUCCESS = common dso_local global i32 0, align 4
@FI_STAT_SUCCESS = common dso_local global i32 0, align 4
@FI_STAT_INVALID = common dso_local global i32 0, align 4
@FI_STAT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_fm_api(%struct.esas2r_adapter* %0, %struct.esas2r_flash_img* %1, %struct.esas2r_request* %2, %struct.esas2r_sg_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.esas2r_flash_img*, align 8
  %8 = alloca %struct.esas2r_request*, align 8
  %9 = alloca %struct.esas2r_sg_context*, align 8
  %10 = alloca %struct.esas2r_flash_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.esas2r_component_header*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_flash_img* %1, %struct.esas2r_flash_img** %7, align 8
  store %struct.esas2r_request* %2, %struct.esas2r_request** %8, align 8
  store %struct.esas2r_sg_context* %3, %struct.esas2r_sg_context** %9, align 8
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 3
  store %struct.esas2r_flash_context* %14, %struct.esas2r_flash_context** %10, align 8
  %15 = load i32, i32* @AF_FLASH_LOCK, align 4
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @FI_STAT_BUSY, align 4
  %22 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %23 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %290

24:                                               ; preds = %4
  %25 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %26 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %25, i32 0, i32 4
  %27 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %28 = call i32 @memcpy(%struct.esas2r_sg_context* %26, %struct.esas2r_sg_context* %27, i32 16)
  %29 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %30 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %29, i32 0, i32 4
  store %struct.esas2r_sg_context* %30, %struct.esas2r_sg_context** %9, align 8
  %31 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %32 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %33 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %32, i32 0, i32 10
  store %struct.esas2r_flash_img* %31, %struct.esas2r_flash_img** %33, align 8
  %34 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %35 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %38 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %37, i32 0, i32 9
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* @RS_SUCCESS, align 4
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %41 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %44 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %43, i32 0, i32 0
  store %struct.esas2r_flash_context* %42, %struct.esas2r_flash_context** %44, align 8
  %45 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %46 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %59 [
    i32 128, label %48
  ]

48:                                               ; preds = %24
  %49 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %50 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %53 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @FI_NUM_COMPS_V1, align 4
  %55 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %56 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %58 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %57, i32 0, i32 0
  store i32 64, i32* %58, align 8
  br label %64

59:                                               ; preds = %24
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %61 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %62 = load i32, i32* @FI_STAT_IMG_VER, align 4
  %63 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %60, %struct.esas2r_request* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %290

64:                                               ; preds = %48
  %65 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %66, i32 0, i32 2
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %73 = load i32, i32* @FI_STAT_DEGRADED, align 4
  %74 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %71, %struct.esas2r_request* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %290

75:                                               ; preds = %64
  %76 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %77 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %271 [
    i32 131, label %79
    i32 129, label %148
    i32 130, label %270
  ]

79:                                               ; preds = %75
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %81 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %82 = call i32 @verify_fi(%struct.esas2r_adapter* %80, %struct.esas2r_flash_context* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %86 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %87 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %88 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %85, %struct.esas2r_request* %86, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %290

91:                                               ; preds = %79
  %92 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %93 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %92, i32 0, i32 3
  %94 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %93, align 8
  %95 = load i64, i64* @CH_IT_BIOS, align 8
  %96 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %94, i64 %95
  store %struct.esas2r_component_header* %96, %struct.esas2r_component_header** %12, align 8
  %97 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %98 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %103 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %104 = call i32 @fix_bios(%struct.esas2r_adapter* %102, %struct.esas2r_flash_img* %103)
  br label %105

105:                                              ; preds = %101, %91
  %106 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %107 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %106, i32 0, i32 3
  %108 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %107, align 8
  %109 = load i64, i64* @CH_IT_EFI, align 8
  %110 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %108, i64 %109
  store %struct.esas2r_component_header* %110, %struct.esas2r_component_header** %12, align 8
  %111 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %112 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %117 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %118 = call i32 @fix_efi(%struct.esas2r_adapter* %116, %struct.esas2r_flash_img* %117)
  br label %119

119:                                              ; preds = %115, %105
  %120 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %121 = call i32 @calc_fi_checksum(%struct.esas2r_flash_context* %120)
  %122 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %123 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  %124 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %125 = call i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter* %124)
  %126 = load i32, i32* @FMTSK_ERASE_BOOT, align 4
  %127 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %128 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @VDA_FLASH_BEGINW, align 4
  %130 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %131 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* @CH_IT_CFG, align 8
  %133 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %134 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @FLS_OFFSET_BOOT, align 4
  %136 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %137 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @FLS_LENGTH_BOOT, align 4
  %139 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %140 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  %142 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %143 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  %145 = load i32, i32* @fw_download_proc, align 4
  %146 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %147 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  br label %276

148:                                              ; preds = %75
  %149 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %150 = call i32 @get_fi_adap_type(%struct.esas2r_adapter* %149)
  %151 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %152 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  %153 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %154 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %153, i32 0, i32 6
  store i32 0, i32* %154, align 8
  %155 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %156 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %159 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %10, align 8
  %161 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %164 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %166 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %165, i32 0, i32 5
  %167 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %166, align 8
  %168 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %169 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %168, i32 0, i32 1
  %170 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %169, align 8
  %171 = call i32 @memcpy(%struct.esas2r_sg_context* %167, %struct.esas2r_sg_context* %170, i32 8)
  store i32 0, i32* %11, align 4
  %172 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %173 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %172, i32 0, i32 3
  %174 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %173, align 8
  store %struct.esas2r_component_header* %174, %struct.esas2r_component_header** %12, align 8
  br label %175

175:                                              ; preds = %202, %148
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %178 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %207

181:                                              ; preds = %175
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %184 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @CH_STAT_PENDING, align 4
  %186 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %187 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %189 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %188, i32 0, i32 4
  store i32 0, i32* %189, align 4
  %190 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %191 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %190, i32 0, i32 0
  store i32 -1, i32* %191, align 8
  %192 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %193 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %192, i32 0, i32 3
  store i32 0, i32* %193, align 8
  %194 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %195 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 0, i32* %197, align 4
  %198 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %199 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %181
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  %205 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %12, align 8
  %206 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %205, i32 1
  store %struct.esas2r_component_header* %206, %struct.esas2r_component_header** %12, align 8
  br label %175

207:                                              ; preds = %175
  %208 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %209 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %269

212:                                              ; preds = %207
  %213 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %214 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %217 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %216, i32 0, i32 3
  %218 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %217, align 8
  %219 = load i64, i64* @CH_IT_CFG, align 8
  %220 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %218, i64 %219
  %221 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %220, i32 0, i32 0
  store i32 %215, i32* %221, align 8
  %222 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %223 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %222, i32 0, i32 3
  %224 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %223, align 8
  %225 = load i64, i64* @CH_IT_EFI, align 8
  %226 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %224, i64 %225
  %227 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %226, i32 0, i32 0
  store i32 %215, i32* %227, align 8
  %228 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %229 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %228, i32 0, i32 3
  %230 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %229, align 8
  %231 = load i64, i64* @CH_IT_MAC, align 8
  %232 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %230, i64 %231
  %233 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %232, i32 0, i32 0
  store i32 %215, i32* %233, align 8
  %234 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %235 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %234, i32 0, i32 3
  %236 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %235, align 8
  %237 = load i64, i64* @CH_IT_BIOS, align 8
  %238 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %236, i64 %237
  %239 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %238, i32 0, i32 0
  store i32 %215, i32* %239, align 8
  %240 = load i32, i32* @CH_STAT_SUCCESS, align 4
  %241 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %242 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %241, i32 0, i32 3
  %243 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %242, align 8
  %244 = load i64, i64* @CH_IT_CFG, align 8
  %245 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %243, i64 %244
  %246 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %245, i32 0, i32 1
  store i32 %240, i32* %246, align 4
  %247 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %248 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %247, i32 0, i32 3
  %249 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %248, align 8
  %250 = load i64, i64* @CH_IT_EFI, align 8
  %251 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %249, i64 %250
  %252 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %251, i32 0, i32 1
  store i32 %240, i32* %252, align 4
  %253 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %254 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %253, i32 0, i32 3
  %255 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %254, align 8
  %256 = load i64, i64* @CH_IT_MAC, align 8
  %257 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %255, i64 %256
  %258 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %257, i32 0, i32 1
  store i32 %240, i32* %258, align 4
  %259 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %7, align 8
  %260 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %259, i32 0, i32 3
  %261 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %260, align 8
  %262 = load i64, i64* @CH_IT_BIOS, align 8
  %263 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %261, i64 %262
  %264 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %263, i32 0, i32 1
  store i32 %240, i32* %264, align 4
  %265 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %266 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %267 = load i32, i32* @FI_STAT_SUCCESS, align 4
  %268 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %265, %struct.esas2r_request* %266, i32 %267)
  store i32 %268, i32* %5, align 4
  br label %290

269:                                              ; preds = %207
  br label %270

270:                                              ; preds = %75, %269
  br label %271

271:                                              ; preds = %75, %270
  %272 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %273 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %274 = load i32, i32* @FI_STAT_INVALID, align 4
  %275 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %272, %struct.esas2r_request* %273, i32 %274)
  store i32 %275, i32* %5, align 4
  br label %290

276:                                              ; preds = %119
  %277 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %278 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %279 = call i32 @load_image(%struct.esas2r_adapter* %277, %struct.esas2r_request* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %283 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %284 = load i32, i32* @FI_STAT_FAILED, align 4
  %285 = call i32 @complete_fmapi_req(%struct.esas2r_adapter* %282, %struct.esas2r_request* %283, i32 %284)
  store i32 %285, i32* %5, align 4
  br label %290

286:                                              ; preds = %276
  %287 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %288 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %289 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %287, %struct.esas2r_request* %288)
  store i32 1, i32* %5, align 4
  br label %290

290:                                              ; preds = %286, %281, %271, %212, %84, %70, %59, %20
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.esas2r_sg_context*, %struct.esas2r_sg_context*, i32) #1

declare dso_local i32 @complete_fmapi_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @verify_fi(%struct.esas2r_adapter*, %struct.esas2r_flash_context*) #1

declare dso_local i32 @fix_bios(%struct.esas2r_adapter*, %struct.esas2r_flash_img*) #1

declare dso_local i32 @fix_efi(%struct.esas2r_adapter*, %struct.esas2r_flash_img*) #1

declare dso_local i32 @calc_fi_checksum(%struct.esas2r_flash_context*) #1

declare dso_local i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter*) #1

declare dso_local i32 @get_fi_adap_type(%struct.esas2r_adapter*) #1

declare dso_local i32 @load_image(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
