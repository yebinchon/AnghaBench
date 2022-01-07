; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb3_validate_negotiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb3_validate_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32*, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.validate_negotiate_info_req = type { i64, i64, i32, i64, i64*, i32 }
%struct.validate_negotiate_info_rsp = type { i64, i64, i32, i64, i64*, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"validate negotiate\0A\00", align 1
@SMB311_PROT_ID = common dso_local global i32 0, align 4
@SMB2_SESSION_FLAG_IS_GUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't validate negotiate: null user mount\0A\00", align 1
@SMB2_SESSION_FLAG_IS_NULL = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Unexpected null user (anonymous) auth flag sent by server\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMB2_CLIENT_GUID_SIZE = common dso_local global i32 0, align 4
@SMB2_NEGOTIATE_SIGNING_REQUIRED = common dso_local global i32 0, align 4
@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_SIGN = common dso_local global i32 0, align 4
@SMB2_NEGOTIATE_SIGNING_ENABLED = common dso_local global i32 0, align 4
@SMB3ANY_VERSION_STRING = common dso_local global i32 0, align 4
@SMB30_PROT_ID = common dso_local global i32 0, align 4
@SMB302_PROT_ID = common dso_local global i32 0, align 4
@SMBDEFAULT_VERSION_STRING = common dso_local global i32 0, align 4
@SMB21_PROT_ID = common dso_local global i32 0, align 4
@NO_FILE_ID = common dso_local global i32 0, align 4
@FSCTL_VALIDATE_NEGOTIATE_INFO = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Server does not support validate negotiate\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"validate protocol negotiate failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid protocol negotiate response size: %d\0A\00", align 1
@SMB2_NT_FIND = common dso_local global i32 0, align 4
@SMB2_LARGE_FILES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"validate negotiate info successful\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"protocol revalidation - security settings mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb3_validate_negotiate(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.validate_negotiate_info_req*, align 8
  %8 = alloca %struct.validate_negotiate_info_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store %struct.validate_negotiate_info_rsp* null, %struct.validate_negotiate_info_rsp** %8, align 8
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  store %struct.TCP_Server_Info* %16, %struct.TCP_Server_Info** %11, align 8
  %17 = load i32, i32* @FYI, align 4
  %18 = call i32 @cifs_dbg(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SMB311_PROT_ID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %281

25:                                               ; preds = %2
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %27 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SMB2_SESSION_FLAG_IS_GUEST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %281

35:                                               ; preds = %25
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @FYI, align 4
  %44 = call i32 @cifs_dbg(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %281

45:                                               ; preds = %35
  %46 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %47 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMB2_SESSION_FLAG_IS_NULL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @VFS, align 4
  %56 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* @GFP_NOFS, align 4
  %59 = call %struct.validate_negotiate_info_rsp* @kmalloc(i32 48, i32 %58)
  %60 = bitcast %struct.validate_negotiate_info_rsp* %59 to %struct.validate_negotiate_info_req*
  store %struct.validate_negotiate_info_req* %60, %struct.validate_negotiate_info_req** %7, align 8
  %61 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %62 = icmp ne %struct.validate_negotiate_info_req* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %281

66:                                               ; preds = %57
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %68 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpu_to_le32(i32 %71)
  %73 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %74 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %76 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %79 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SMB2_CLIENT_GUID_SIZE, align 4
  %82 = call i32 @memcpy(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %84 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = load i32, i32* @SMB2_NEGOTIATE_SIGNING_REQUIRED, align 4
  %91 = call i64 @cpu_to_le16(i32 %90)
  %92 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %93 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %108

94:                                               ; preds = %66
  %95 = load i32, i32* @global_secflags, align 4
  %96 = load i32, i32* @CIFSSEC_MAY_SIGN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* @SMB2_NEGOTIATE_SIGNING_ENABLED, align 4
  %101 = call i64 @cpu_to_le16(i32 %100)
  %102 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %103 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %106 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %89
  %109 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %110 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SMB3ANY_VERSION_STRING, align 4
  %115 = call i64 @strcmp(i32 %113, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %108
  %118 = load i32, i32* @SMB30_PROT_ID, align 4
  %119 = call i64 @cpu_to_le16(i32 %118)
  %120 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %121 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  store i64 %119, i64* %123, align 8
  %124 = load i32, i32* @SMB302_PROT_ID, align 4
  %125 = call i64 @cpu_to_le16(i32 %124)
  %126 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %127 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 %125, i64* %129, align 8
  %130 = call i64 @cpu_to_le16(i32 2)
  %131 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %132 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  store i32 32, i32* %10, align 4
  br label %185

133:                                              ; preds = %108
  %134 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %135 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SMBDEFAULT_VERSION_STRING, align 4
  %140 = call i64 @strcmp(i32 %138, i32 %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %133
  %143 = load i32, i32* @SMB21_PROT_ID, align 4
  %144 = call i64 @cpu_to_le16(i32 %143)
  %145 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %146 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %145, i32 0, i32 4
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  store i64 %144, i64* %148, align 8
  %149 = load i32, i32* @SMB30_PROT_ID, align 4
  %150 = call i64 @cpu_to_le16(i32 %149)
  %151 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %152 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %151, i32 0, i32 4
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  store i64 %150, i64* %154, align 8
  %155 = load i32, i32* @SMB302_PROT_ID, align 4
  %156 = call i64 @cpu_to_le16(i32 %155)
  %157 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %158 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 2
  store i64 %156, i64* %160, align 8
  %161 = load i32, i32* @SMB311_PROT_ID, align 4
  %162 = call i64 @cpu_to_le16(i32 %161)
  %163 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %164 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %163, i32 0, i32 4
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 3
  store i64 %162, i64* %166, align 8
  %167 = call i64 @cpu_to_le16(i32 4)
  %168 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %169 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %168, i32 0, i32 3
  store i64 %167, i64* %169, align 8
  store i32 48, i32* %10, align 4
  br label %184

170:                                              ; preds = %133
  %171 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %172 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @cpu_to_le16(i32 %175)
  %177 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %178 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 0
  store i64 %176, i64* %180, align 8
  %181 = call i64 @cpu_to_le16(i32 1)
  %182 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %183 = getelementptr inbounds %struct.validate_negotiate_info_req, %struct.validate_negotiate_info_req* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  store i32 32, i32* %10, align 4
  br label %184

184:                                              ; preds = %170, %142
  br label %185

185:                                              ; preds = %184, %117
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %188 = load i32, i32* @NO_FILE_ID, align 4
  %189 = load i32, i32* @NO_FILE_ID, align 4
  %190 = load i32, i32* @FSCTL_VALIDATE_NEGOTIATE_INFO, align 4
  %191 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %192 = bitcast %struct.validate_negotiate_info_req* %191 to i8*
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @CIFSMaxBufSize, align 4
  %195 = bitcast %struct.validate_negotiate_info_rsp** %8 to i8**
  %196 = call i32 @SMB2_ioctl(i32 %186, %struct.cifs_tcon* %187, i32 %188, i32 %189, i32 %190, i32 1, i8* %192, i32 %193, i32 %194, i8** %195, i32* %9)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @EOPNOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %185
  %202 = load i32, i32* @VFS, align 4
  %203 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %276

204:                                              ; preds = %185
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* @VFS, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @EIO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %6, align 4
  br label %276

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* @EIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp ne i64 %218, 48
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = load i32, i32* @VFS, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @CIFSMaxBufSize, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp ult i64 %229, 48
  br i1 %230, label %231, label %232

231:                                              ; preds = %227, %220
  br label %273

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %232, %214
  %234 = load %struct.validate_negotiate_info_rsp*, %struct.validate_negotiate_info_rsp** %8, align 8
  %235 = getelementptr inbounds %struct.validate_negotiate_info_rsp, %struct.validate_negotiate_info_rsp* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %238 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @cpu_to_le16(i32 %239)
  %241 = icmp ne i64 %236, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %270

243:                                              ; preds = %233
  %244 = load %struct.validate_negotiate_info_rsp*, %struct.validate_negotiate_info_rsp** %8, align 8
  %245 = getelementptr inbounds %struct.validate_negotiate_info_rsp, %struct.validate_negotiate_info_rsp* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %248 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @cpu_to_le16(i32 %249)
  %251 = icmp ne i64 %246, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %270

253:                                              ; preds = %243
  %254 = load %struct.validate_negotiate_info_rsp*, %struct.validate_negotiate_info_rsp** %8, align 8
  %255 = getelementptr inbounds %struct.validate_negotiate_info_rsp, %struct.validate_negotiate_info_rsp* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @le32_to_cpu(i32 %256)
  %258 = load i32, i32* @SMB2_NT_FIND, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @SMB2_LARGE_FILES, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %263 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %253
  br label %270

267:                                              ; preds = %253
  store i32 0, i32* %6, align 4
  %268 = load i32, i32* @FYI, align 4
  %269 = call i32 @cifs_dbg(i32 %268, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %273

270:                                              ; preds = %266, %252, %242
  %271 = load i32, i32* @VFS, align 4
  %272 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %271, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %267, %231
  %274 = load %struct.validate_negotiate_info_rsp*, %struct.validate_negotiate_info_rsp** %8, align 8
  %275 = call i32 @kfree(%struct.validate_negotiate_info_rsp* %274)
  br label %276

276:                                              ; preds = %273, %207, %201
  %277 = load %struct.validate_negotiate_info_req*, %struct.validate_negotiate_info_req** %7, align 8
  %278 = bitcast %struct.validate_negotiate_info_req* %277 to %struct.validate_negotiate_info_rsp*
  %279 = call i32 @kfree(%struct.validate_negotiate_info_rsp* %278)
  %280 = load i32, i32* %6, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %276, %63, %42, %34, %24
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cifs_tcon_dbg(i32, i8*, ...) #1

declare dso_local %struct.validate_negotiate_info_rsp* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.validate_negotiate_info_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
