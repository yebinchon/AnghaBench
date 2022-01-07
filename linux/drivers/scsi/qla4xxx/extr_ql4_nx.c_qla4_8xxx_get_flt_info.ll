; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.ql82xx_hw_data }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla_flt_header = type { i64, i64, i64 }
%struct.qla_flt_region = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@__const.qla4_8xxx_get_flt_info.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"FLT[%02x]: start=0x%x end=0x%x size=0x%x.\0A\00", align 1
@FA_FLASH_DESCR_ADDR_82 = common dso_local global i32 0, align 4
@FA_BOOT_CODE_ADDR_82 = common dso_local global i32 0, align 4
@FA_BOOT_LOAD_ADDR_82 = common dso_local global i32 0, align 4
@FA_RISC_CODE_ADDR_82 = common dso_local global i32 0, align 4
@FA_FLASH_ISCSI_CHAP = common dso_local global i32 0, align 4
@FA_FLASH_CHAP_SIZE = common dso_local global i32 0, align 4
@FA_FLASH_ISCSI_DDB = common dso_local global i32 0, align 4
@FA_FLASH_DDB_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [109 x i8] c"FLT[%s]: flt=0x%x fdt=0x%x boot=0x%x bootload=0x%x fw=0x%x chap=0x%x chap_size=0x%x ddb=0x%x  ddb_size=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32)* @qla4_8xxx_get_flt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_8xxx_get_flt_info(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qla_flt_header*, align 8
  %13 = alloca %struct.qla_flt_region*, align 8
  %14 = alloca %struct.ql82xx_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.qla4_8xxx_get_flt_info.locations to i8*), i64 16, i1 false)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 1
  store %struct.ql82xx_hw_data* %17, %struct.ql82xx_hw_data** %14, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %20 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %7, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.qla_flt_header*
  store %struct.qla_flt_header* %28, %struct.qla_flt_header** %12, align 8
  %29 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %30 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %29, i64 1
  %31 = bitcast %struct.qla_flt_header* %30 to %struct.qla_flt_region*
  store %struct.qla_flt_region* %31, %struct.qla_flt_region** %13, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %33 = call i64 @is_qla8022(%struct.scsi_qla_host* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %44 = call i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host* %36, i32* %40, i32 %42, i32 %43)
  br label %68

45:                                               ; preds = %2
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %47 = call i64 @is_qla8032(%struct.scsi_qla_host* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = call i64 @is_qla8042(%struct.scsi_qla_host* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %49, %45
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 2
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @qla4_83xx_flash_read_u32(%struct.scsi_qla_host* %54, i32 %56, i32* %60, i32 1024)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @QLA_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %224

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @__constant_cpu_to_le16(i32 65535)
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %224

74:                                               ; preds = %68
  %75 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %76 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @__constant_cpu_to_le16(i32 1)
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %83 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %84 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @le16_to_cpu(i64 %85)
  %87 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %88 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @le16_to_cpu(i64 %89)
  %91 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %92 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @le16_to_cpu(i64 %93)
  %95 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %81, %struct.scsi_qla_host* %82, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %90, i32 %94)
  %96 = call i32 @DEBUG2(i32 %95)
  br label %224

97:                                               ; preds = %74
  %98 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %99 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @le16_to_cpu(i64 %100)
  %102 = sext i32 %101 to i64
  %103 = add i64 24, %102
  %104 = lshr i64 %103, 1
  store i64 %104, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %116, %97
  %106 = load i64, i64* %8, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %7, align 8
  %111 = load i64, i64* %109, align 8
  %112 = call i32 @le16_to_cpu(i64 %111)
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %108
  %117 = load i64, i64* %8, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %8, align 8
  br label %105

119:                                              ; preds = %105
  %120 = load i64, i64* %9, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* @KERN_INFO, align 4
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %125 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %126 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @le16_to_cpu(i64 %127)
  %129 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %130 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @le16_to_cpu(i64 %131)
  %133 = load i64, i64* %9, align 8
  %134 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %123, %struct.scsi_qla_host* %124, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %132, i64 %133)
  %135 = call i32 @DEBUG2(i32 %134)
  br label %224

136:                                              ; preds = %119
  %137 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %5, align 8
  %139 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %140 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @le16_to_cpu(i64 %141)
  %143 = sext i32 %142 to i64
  %144 = udiv i64 %143, 16
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %218, %136
  %146 = load i64, i64* %8, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %223

148:                                              ; preds = %145
  %149 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %150 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @le32_to_cpu(i32 %151)
  %153 = ashr i32 %152, 2
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* @KERN_DEBUG, align 4
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %156 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %157 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %162 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = ashr i32 %164, 2
  %166 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %167 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le32_to_cpu(i32 %168)
  %170 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %154, %struct.scsi_qla_host* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %160, i32 %165, i32 %169)
  %171 = call i32 @DEBUG3(i32 %170)
  %172 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %173 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le32_to_cpu(i32 %174)
  %176 = and i32 %175, 255
  switch i32 %176, label %217 [
    i32 133, label %177
    i32 134, label %181
    i32 132, label %185
    i32 131, label %185
    i32 135, label %189
    i32 128, label %193
    i32 130, label %197
    i32 129, label %207
  ]

177:                                              ; preds = %148
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %180 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %217

181:                                              ; preds = %148
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %184 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %217

185:                                              ; preds = %148, %148
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %188 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  br label %217

189:                                              ; preds = %148
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %192 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 4
  br label %217

193:                                              ; preds = %148
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %196 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  br label %217

197:                                              ; preds = %148
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %200 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 4
  %201 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %202 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le32_to_cpu(i32 %203)
  %205 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %206 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 4
  br label %217

207:                                              ; preds = %148
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %210 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  %211 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %212 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %216 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %215, i32 0, i32 9
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %148, %207, %197, %193, %189, %185, %181, %177
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %8, align 8
  %220 = add nsw i64 %219, -1
  store i64 %220, i64* %8, align 8
  %221 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %222 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %221, i32 1
  store %struct.qla_flt_region* %222, %struct.qla_flt_region** %13, align 8
  br label %145

223:                                              ; preds = %145
  br label %253

224:                                              ; preds = %122, %80, %73, %65
  %225 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %226 = load i8*, i8** %225, align 16
  store i8* %226, i8** %5, align 8
  %227 = load i32, i32* @FA_FLASH_DESCR_ADDR_82, align 4
  %228 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %229 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @FA_BOOT_CODE_ADDR_82, align 4
  %231 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %232 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @FA_BOOT_LOAD_ADDR_82, align 4
  %234 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %235 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* @FA_RISC_CODE_ADDR_82, align 4
  %237 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %238 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* @FA_FLASH_ISCSI_CHAP, align 4
  %240 = ashr i32 %239, 2
  %241 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %242 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* @FA_FLASH_CHAP_SIZE, align 4
  %244 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %245 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @FA_FLASH_ISCSI_DDB, align 4
  %247 = ashr i32 %246, 2
  %248 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %249 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %248, i32 0, i32 8
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @FA_FLASH_DDB_SIZE, align 4
  %251 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %252 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %251, i32 0, i32 9
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %224, %223
  %254 = load i32, i32* @KERN_INFO, align 4
  %255 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %258 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %261 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %264 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %267 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %270 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %273 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %276 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %279 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %282 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %254, %struct.scsi_qla_host* %255, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i8* %256, i32 %259, i32 %262, i32 %265, i32 %268, i32 %271, i32 %274, i32 %277, i32 %280, i32 %283)
  %285 = call i32 @DEBUG2(i32 %284)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #2

declare dso_local i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host*, i32*, i32, i32) #2

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #2

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #2

declare dso_local i32 @qla4_83xx_flash_read_u32(%struct.scsi_qla_host*, i32, i32*, i32) #2

declare dso_local i64 @__constant_cpu_to_le16(i32) #2

declare dso_local i32 @DEBUG2(i32) #2

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #2

declare dso_local i32 @le16_to_cpu(i64) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @DEBUG3(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
