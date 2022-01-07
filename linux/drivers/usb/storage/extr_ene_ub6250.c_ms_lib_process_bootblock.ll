; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_process_bootblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_process_bootblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ms_bootblock_sysent = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ms_bootblock_sysinf = type { i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.ms_lib_type_extdat = type { i32 }
%struct.ene_ub6250_info = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.ms_bootblock_idi = type { i32, i32 }
%struct.ms_bootblock_page0 = type { %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysinf }
%struct.ms_bootblock_cis_idi = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ms_bootblock_idi }

@MS_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_SYSINF_MSCLASS_TYPE_1 = common dso_local global i64 0, align 8
@MS_SYSINF_PAGE_SIZE = common dso_local global i64 0, align 8
@MS_SYSINF_SECURITY = common dso_local global i32 0, align 4
@MS_SYSINF_SECURITY_SUPPORT = common dso_local global i32 0, align 4
@MS_SYSINF_RESERVED1 = common dso_local global i64 0, align 8
@MS_SYSINF_RESERVED2 = common dso_local global i64 0, align 8
@MS_SYSINF_FORMAT_FAT = common dso_local global i64 0, align 8
@MS_SYSINF_USAGE_GENERAL = common dso_local global i64 0, align 8
@MS_LIB_CTRL_RDONLY = common dso_local global i32 0, align 4
@SIZE_OF_KIRO = common dso_local global i32 0, align 4
@MS_PHYSICAL_BLOCKS_PER_SEGMENT = common dso_local global i32 0, align 4
@MS_NUMBER_OF_SYSTEM_ENTRY = common dso_local global i32 0, align 4
@MS_SYSENT_TYPE_INVALID_BLOCK = common dso_local global i64 0, align 8
@MS_SYSENT_TYPE_CIS_IDI = common dso_local global i64 0, align 8
@MS_IDI_GENERAL_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i64*)* @ms_lib_process_bootblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_process_bootblock(%struct.us_data* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ms_bootblock_sysent*, align 8
  %9 = alloca %struct.ms_bootblock_sysinf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ms_lib_type_extdat, align 4
  %15 = alloca %struct.ene_ub6250_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ms_bootblock_idi*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %24, %struct.ene_ub6250_info** %15, align 8
  %25 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64* @kmalloc(i32 %25, i32 %26)
  store i64* %27, i64** %13, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %345

31:                                               ; preds = %3
  store i32 -1, i32* %11, align 4
  %32 = load i64*, i64** %7, align 8
  %33 = bitcast i64* %32 to %struct.ms_bootblock_page0*
  %34 = getelementptr inbounds %struct.ms_bootblock_page0, %struct.ms_bootblock_page0* %33, i32 0, i32 1
  store %struct.ms_bootblock_sysinf* %34, %struct.ms_bootblock_sysinf** %9, align 8
  %35 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %36 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MS_SYSINF_MSCLASS_TYPE_1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %79, label %40

40:                                               ; preds = %31
  %41 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %42 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @be16_to_cpu(i32 %43)
  %45 = load i64, i64* @MS_SYSINF_PAGE_SIZE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %79, label %47

47:                                               ; preds = %40
  %48 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %49 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MS_SYSINF_SECURITY, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @MS_SYSINF_SECURITY_SUPPORT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %79, label %55

55:                                               ; preds = %47
  %56 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %57 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MS_SYSINF_RESERVED1, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %63 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MS_SYSINF_RESERVED2, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %69 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MS_SYSINF_FORMAT_FAT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %75 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MS_SYSINF_USAGE_GENERAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67, %61, %55, %47, %40, %31
  br label %335

80:                                               ; preds = %73
  %81 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %82 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %85 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  switch i32 %83, label %96 [
    i32 129, label %87
    i32 128, label %91
    i32 130, label %95
  ]

87:                                               ; preds = %80
  %88 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %89 = load i32, i32* @MS_LIB_CTRL_RDONLY, align 4
  %90 = call i32 @ms_lib_ctrl_set(%struct.ene_ub6250_info* %88, i32 %89)
  br label %97

91:                                               ; preds = %80
  %92 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %93 = load i32, i32* @MS_LIB_CTRL_RDONLY, align 4
  %94 = call i32 @ms_lib_ctrl_reset(%struct.ene_ub6250_info* %92, i32 %93)
  br label %97

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %80, %95
  br label %335

97:                                               ; preds = %91, %87
  %98 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %99 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @be16_to_cpu(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %104 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %107 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @be16_to_cpu(i32 %108)
  %110 = trunc i64 %109 to i32
  %111 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %112 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %115 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @be16_to_cpu(i32 %116)
  %118 = sub nsw i64 %117, 2
  %119 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %120 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  store i64 %118, i64* %121, align 8
  %122 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %123 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SIZE_OF_KIRO, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %129 = sdiv i32 %127, %128
  %130 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %131 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %134 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 4
  %138 = sdiv i32 %136, %137
  %139 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %140 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  %142 = load %struct.ms_bootblock_sysinf*, %struct.ms_bootblock_sysinf** %9, align 8
  %143 = getelementptr inbounds %struct.ms_bootblock_sysinf, %struct.ms_bootblock_sysinf* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @be16_to_cpu(i32 %144)
  %146 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %147 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.us_data*, %struct.us_data** %5, align 8
  %149 = call i64 @ms_lib_alloc_logicalmap(%struct.us_data* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %97
  br label %335

152:                                              ; preds = %97
  %153 = load %struct.us_data*, %struct.us_data** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ms_lib_set_bootblockmark(%struct.us_data* %153, i32 %154)
  %156 = load i64*, i64** %7, align 8
  %157 = bitcast i64* %156 to %struct.ms_bootblock_page0*
  %158 = getelementptr inbounds %struct.ms_bootblock_page0, %struct.ms_bootblock_page0* %157, i32 0, i32 0
  store %struct.ms_bootblock_sysent* %158, %struct.ms_bootblock_sysent** %8, align 8
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %331, %152
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @MS_NUMBER_OF_SYSTEM_ENTRY, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %334

163:                                              ; preds = %159
  %164 = load %struct.ms_bootblock_sysent*, %struct.ms_bootblock_sysent** %8, align 8
  %165 = getelementptr inbounds %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysent* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be32_to_cpu(i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp eq i32 %173, 16777215
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  br label %331

176:                                              ; preds = %163
  %177 = load %struct.ms_bootblock_sysent*, %struct.ms_bootblock_sysent** %8, align 8
  %178 = getelementptr inbounds %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysent* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @be32_to_cpu(i32 %184)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %331

189:                                              ; preds = %176
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %192, %193
  %195 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %196 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SIZE_OF_KIRO, align 4
  %200 = mul nsw i32 %198, %199
  %201 = icmp sgt i32 %194, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  br label %331

203:                                              ; preds = %189
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %266

206:                                              ; preds = %203
  store i64 0, i64* %18, align 8
  %207 = load %struct.ms_bootblock_sysent*, %struct.ms_bootblock_sysent** %8, align 8
  %208 = getelementptr inbounds %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysent* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MS_SYSENT_TYPE_INVALID_BLOCK, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %335

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %260, %218
  %220 = load i32, i32* %17, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %265

222:                                              ; preds = %219
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %225 = sdiv i32 %223, %224
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %12, align 8
  %228 = load i64, i64* %12, align 8
  %229 = load i64, i64* %18, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %222
  %232 = load %struct.us_data*, %struct.us_data** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i64, i64* %12, align 8
  %235 = load i64*, i64** %13, align 8
  %236 = bitcast i64* %235 to i32*
  %237 = call i32 @ms_read_readpage(%struct.us_data* %232, i32 %233, i64 %234, i32* %236, %struct.ms_lib_type_extdat* %14)
  switch i32 %237, label %240 [
    i32 132, label %238
    i32 131, label %239
    i32 134, label %239
    i32 133, label %239
  ]

238:                                              ; preds = %231
  br label %241

239:                                              ; preds = %231, %231, %231
  br label %240

240:                                              ; preds = %231, %239
  br label %335

241:                                              ; preds = %238
  %242 = load i64, i64* %12, align 8
  store i64 %242, i64* %18, align 8
  br label %243

243:                                              ; preds = %241, %222
  %244 = load i64*, i64** %13, align 8
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %247 = srem i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %244, i64 %248
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = call i64 @be16_to_cpu(i32 %251)
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp slt i32 %254, 4095
  br i1 %255, label %256, label %260

256:                                              ; preds = %243
  %257 = load %struct.us_data*, %struct.us_data** %5, align 8
  %258 = load i32, i32* %19, align 4
  %259 = call i32 @ms_lib_set_initialerrorblock(%struct.us_data* %257, i32 %258)
  br label %260

260:                                              ; preds = %256, %243
  %261 = load i32, i32* %16, align 4
  %262 = add nsw i32 %261, 2
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %17, align 4
  %264 = sub nsw i32 %263, 2
  store i32 %264, i32* %17, align 4
  br label %219

265:                                              ; preds = %219
  br label %330

266:                                              ; preds = %203
  %267 = load i32, i32* %10, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %329

269:                                              ; preds = %266
  %270 = load %struct.ms_bootblock_sysent*, %struct.ms_bootblock_sysent** %8, align 8
  %271 = getelementptr inbounds %struct.ms_bootblock_sysent, %struct.ms_bootblock_sysent* %270, i32 0, i32 0
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @MS_SYSENT_TYPE_CIS_IDI, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %269
  br label %335

281:                                              ; preds = %269
  %282 = load %struct.us_data*, %struct.us_data** %5, align 8
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %286 = sdiv i32 %284, %285
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = load i64*, i64** %13, align 8
  %290 = bitcast i64* %289 to i32*
  %291 = call i32 @ms_read_readpage(%struct.us_data* %282, i32 %283, i64 %288, i32* %290, %struct.ms_lib_type_extdat* %14)
  switch i32 %291, label %294 [
    i32 132, label %292
    i32 131, label %293
    i32 134, label %293
    i32 133, label %293
  ]

292:                                              ; preds = %281
  br label %295

293:                                              ; preds = %281, %281, %281
  br label %294

294:                                              ; preds = %281, %293
  br label %335

295:                                              ; preds = %292
  %296 = load i64*, i64** %13, align 8
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %299 = srem i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %296, i64 %300
  %302 = bitcast i64* %301 to %struct.ms_bootblock_cis_idi*
  %303 = getelementptr inbounds %struct.ms_bootblock_cis_idi, %struct.ms_bootblock_cis_idi* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  store %struct.ms_bootblock_idi* %304, %struct.ms_bootblock_idi** %20, align 8
  %305 = load %struct.ms_bootblock_idi*, %struct.ms_bootblock_idi** %20, align 8
  %306 = getelementptr inbounds %struct.ms_bootblock_idi, %struct.ms_bootblock_idi* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @le16_to_cpu(i32 %307)
  %309 = load i64, i64* @MS_IDI_GENERAL_CONF, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %295
  br label %335

312:                                              ; preds = %295
  %313 = load %struct.ms_bootblock_idi*, %struct.ms_bootblock_idi** %20, align 8
  %314 = getelementptr inbounds %struct.ms_bootblock_idi, %struct.ms_bootblock_idi* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i64 @le16_to_cpu(i32 %315)
  %317 = trunc i64 %316 to i32
  %318 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %319 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 4
  store i32 %317, i32* %320, align 8
  %321 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %15, align 8
  %322 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %312
  br label %335

328:                                              ; preds = %312
  br label %329

329:                                              ; preds = %328, %266
  br label %330

330:                                              ; preds = %329, %265
  br label %331

331:                                              ; preds = %330, %202, %188, %175
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %10, align 4
  br label %159

334:                                              ; preds = %159
  store i32 0, i32* %11, align 4
  br label %335

335:                                              ; preds = %334, %327, %311, %294, %280, %240, %217, %151, %96, %79
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.us_data*, %struct.us_data** %5, align 8
  %340 = call i32 @ms_lib_free_logicalmap(%struct.us_data* %339)
  br label %341

341:                                              ; preds = %338, %335
  %342 = load i64*, i64** %13, align 8
  %343 = call i32 @kfree(i64* %342)
  store i32 0, i32* %11, align 4
  %344 = load i32, i32* %11, align 4
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %341, %30
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @ms_lib_ctrl_set(%struct.ene_ub6250_info*, i32) #1

declare dso_local i32 @ms_lib_ctrl_reset(%struct.ene_ub6250_info*, i32) #1

declare dso_local i64 @ms_lib_alloc_logicalmap(%struct.us_data*) #1

declare dso_local i32 @ms_lib_set_bootblockmark(%struct.us_data*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ms_read_readpage(%struct.us_data*, i32, i64, i32*, %struct.ms_lib_type_extdat*) #1

declare dso_local i32 @ms_lib_set_initialerrorblock(%struct.us_data*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ms_lib_free_logicalmap(%struct.us_data*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
