; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_process_fs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_process_fs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.esas2r_ioctl_fs = type { i64, i64, i64, i8*, i32, %struct.esas2r_ioctlfs_command }
%struct.esas2r_ioctlfs_command = type { i32, i32, i32, i32 }
%struct.esas2r_request = type { %struct.TYPE_8__*, %struct.esas2r_ioctl_fs*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.esas2r_sg_context = type { i64 }

@cmd_to_fls_func = common dso_local global i32* null, align 8
@ATTO_STS_FAILED = common dso_local global i8* null, align 8
@RS_PENDING = common dso_local global i32 0, align 4
@ESAS2R_FS_VER = common dso_local global i64 0, align 8
@ATTO_STS_INV_VERSION = common dso_local global i8* null, align 8
@ATTO_STS_INV_FUNC = common dso_local global i8* null, align 8
@ESAS2R_FS_CMD_CANCEL = common dso_local global i64 0, align 8
@ATTO_DID_MV_88RC9580 = common dso_local global i64 0, align 8
@ESAS2R_FS_AT_ESASRAID2 = common dso_local global i64 0, align 8
@ATTO_DID_MV_88RC9580TS = common dso_local global i64 0, align 8
@ESAS2R_FS_AT_TSSASRAID2 = common dso_local global i64 0, align 8
@ATTO_DID_MV_88RC9580TSE = common dso_local global i64 0, align 8
@ESAS2R_FS_AT_TSSASRAID2E = common dso_local global i64 0, align 8
@ATTO_DID_MV_88RC9580TL = common dso_local global i64 0, align 8
@ESAS2R_FS_AT_TLSASHBA = common dso_local global i64 0, align 8
@ATTO_STS_INV_ADAPTER = common dso_local global i8* null, align 8
@ESAS2R_FS_DRVR_VER = common dso_local global i64 0, align 8
@ATTO_STS_INV_DRVR_VER = common dso_local global i8* null, align 8
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@ATTO_STS_DEGRADED = common dso_local global i8* null, align 8
@esas2r_complete_fs_ioctl = common dso_local global i32 0, align 4
@VDA_FLASH_WRITE = common dso_local global i32 0, align 4
@VDA_FLASH_READ = common dso_local global i32 0, align 4
@ATTO_STS_OUT_OF_RSRC = common dso_local global i8* null, align 8
@VDA_FLASH_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_process_fs_ioctl(%struct.esas2r_adapter* %0, %struct.esas2r_ioctl_fs* %1, %struct.esas2r_request* %2, %struct.esas2r_sg_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.esas2r_ioctl_fs*, align 8
  %8 = alloca %struct.esas2r_request*, align 8
  %9 = alloca %struct.esas2r_sg_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.esas2r_ioctlfs_command*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_ioctl_fs* %1, %struct.esas2r_ioctl_fs** %7, align 8
  store %struct.esas2r_request* %2, %struct.esas2r_request** %8, align 8
  store %struct.esas2r_sg_context* %3, %struct.esas2r_sg_context** %9, align 8
  %14 = load i32*, i32** @cmd_to_fls_func, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %17 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %16, i32 0, i32 5
  store %struct.esas2r_ioctlfs_command* %17, %struct.esas2r_ioctlfs_command** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** @ATTO_STS_FAILED, align 8
  %19 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %20 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @RS_PENDING, align 4
  %22 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %23 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %25 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ESAS2R_FS_VER, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** @ATTO_STS_INV_VERSION, align 8
  %31 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %32 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %5, align 4
  br label %218

33:                                               ; preds = %4
  %34 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %35 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** @ATTO_STS_INV_FUNC, align 8
  %41 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %42 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %5, align 4
  br label %218

43:                                               ; preds = %33
  %44 = load i32*, i32** @cmd_to_fls_func, align 8
  %45 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %46 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i8*, i8** @ATTO_STS_INV_FUNC, align 8
  %55 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %56 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %5, align 4
  br label %218

57:                                               ; preds = %43
  %58 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %59 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @ESAS2R_FS_CMD_CANCEL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %135

64:                                               ; preds = %57
  %65 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATTO_DID_MV_88RC9580, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %74 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ESAS2R_FS_AT_ESASRAID2, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %72, %64
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ATTO_DID_MV_88RC9580TS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %78
  %87 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %88 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ESAS2R_FS_AT_TSSASRAID2, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86, %78
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ATTO_DID_MV_88RC9580TSE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %92
  %101 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %102 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ESAS2R_FS_AT_TSSASRAID2E, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %100, %92
  %107 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ATTO_DID_MV_88RC9580TL, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %116 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ESAS2R_FS_AT_TLSASHBA, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114, %106
  %121 = load i8*, i8** @ATTO_STS_INV_ADAPTER, align 8
  %122 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %123 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  store i32 0, i32* %5, align 4
  br label %218

124:                                              ; preds = %114, %100, %86, %72
  %125 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %126 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ESAS2R_FS_DRVR_VER, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** @ATTO_STS_INV_DRVR_VER, align 8
  %132 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %133 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  store i32 0, i32* %5, align 4
  br label %218

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %57
  %136 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %137 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %137, i32 0, i32 0
  %139 = call i64 @test_bit(i32 %136, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i8*, i8** @ATTO_STS_DEGRADED, align 8
  %143 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %144 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  store i32 0, i32* %5, align 4
  br label %218

145:                                              ; preds = %135
  %146 = load i32, i32* @esas2r_complete_fs_ioctl, align 4
  %147 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %148 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %150 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %151 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %150, i32 0, i32 1
  store %struct.esas2r_ioctl_fs* %149, %struct.esas2r_ioctl_fs** %151, align 8
  %152 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %153 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @le32_to_cpu(i32 %154)
  store i64 %155, i64* %13, align 8
  %156 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %157 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %160 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.esas2r_ioctlfs_command*, %struct.esas2r_ioctlfs_command** %11, align 8
  %163 = getelementptr inbounds %struct.esas2r_ioctlfs_command, %struct.esas2r_ioctlfs_command* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @le32_to_cpu(i32 %164)
  %166 = load i64, i64* %13, align 8
  %167 = call i32 @esas2r_build_flash_req(%struct.esas2r_adapter* %156, %struct.esas2r_request* %157, i32 %158, i32 %161, i64 %165, i64 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @VDA_FLASH_WRITE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %145
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @VDA_FLASH_READ, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %207

175:                                              ; preds = %171, %145
  %176 = load i64, i64* %13, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i8*, i8** @ATTO_STS_INV_FUNC, align 8
  %180 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %181 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  store i32 0, i32* %5, align 4
  br label %218

182:                                              ; preds = %175
  %183 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %184 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %185 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %186 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %187 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @esas2r_sgc_init(%struct.esas2r_sg_context* %183, %struct.esas2r_adapter* %184, %struct.esas2r_request* %185, i32 %192)
  %194 = load i64, i64* %13, align 8
  %195 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %196 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %198 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %199 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %200 = call i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %197, %struct.esas2r_request* %198, %struct.esas2r_sg_context* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %182
  %203 = load i8*, i8** @ATTO_STS_OUT_OF_RSRC, align 8
  %204 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %7, align 8
  %205 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  store i32 0, i32* %5, align 4
  br label %218

206:                                              ; preds = %182
  br label %207

207:                                              ; preds = %206, %171
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @VDA_FLASH_COMMIT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %213 = call i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter* %212)
  br label %214

214:                                              ; preds = %211, %207
  %215 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %216 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %217 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %215, %struct.esas2r_request* %216)
  store i32 1, i32* %5, align 4
  br label %218

218:                                              ; preds = %214, %202, %178, %141, %130, %120, %53, %39, %29
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @esas2r_build_flash_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32, i32, i64, i64) #1

declare dso_local i32 @esas2r_sgc_init(%struct.esas2r_sg_context*, %struct.esas2r_adapter*, %struct.esas2r_request*, i32) #1

declare dso_local i32 @esas2r_build_sg_list(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

declare dso_local i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
