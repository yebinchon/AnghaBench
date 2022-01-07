; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBQuerySymLink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBQuerySymLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.nls_table = type { i32 }
%struct.smb_com_transaction_ioctl_req = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.smb_com_transaction_ioctl_rsp = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reparse_symlink_data = type { i64, i8*, i32, i32, i32 }
%struct.reparse_posix_data = type { i64, i8* }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"In Windows reparse style QueryLink for fid %u\0A\00", align 1
@SMB_COM_NT_TRANSACT = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@NT_TRANSACT_IOCTL = common dso_local global i32 0, align 4
@FSCTL_GET_REPARSE_POINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Send error in QueryReparseLinkInfo = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid return data count on get reparse info ioctl\0A\00", align 1
@IO_REPARSE_TAG_NFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"NFS style reparse tag\0A\00", align 1
@NFS_SPECFILE_LNK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unsupported file type 0x%llx\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"reparse buf beyond SMB\0A\00", align 1
@IO_REPARSE_TAG_SYMLINK = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBQuerySymLink(i32 %0, %struct.cifs_tcon* %1, i32 %2, i8** %3, %struct.nls_table* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.nls_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.smb_com_transaction_ioctl_req*, align 8
  %15 = alloca %struct.smb_com_transaction_ioctl_rsp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.reparse_symlink_data*, align 8
  %20 = alloca %struct.reparse_posix_data*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.nls_table* %4, %struct.nls_table** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @FYI, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @SMB_COM_NT_TRANSACT, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %29 = bitcast %struct.smb_com_transaction_ioctl_req** %14 to i8**
  %30 = bitcast %struct.smb_com_transaction_ioctl_rsp** %15 to i8**
  %31 = call i32 @smb_init(i32 %27, i32 23, %struct.cifs_tcon* %28, i8** %29, i8** %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %271

36:                                               ; preds = %5
  %37 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %38 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %40 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %39, i32 0, i32 16
  store i64 0, i64* %40, align 8
  %41 = call i64 @cpu_to_le32(i32 2)
  %42 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %43 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %42, i32 0, i32 15
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @CIFSMaxBufSize, align 4
  %45 = and i32 %44, -256
  %46 = call i64 @cpu_to_le32(i32 %45)
  %47 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %48 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %47, i32 0, i32 14
  store i64 %46, i64* %48, align 8
  %49 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %50 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %52 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %51, i32 0, i32 13
  store i64 0, i64* %52, align 8
  %53 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %54 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %56 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %55, i32 0, i32 11
  store i64 0, i64* %56, align 8
  %57 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %58 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %60 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load i32, i32* @NT_TRANSACT_IOCTL, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %64 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %66 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %69 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %68, i32 0, i32 8
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @FSCTL_GET_REPARSE_POINT, align 4
  %71 = call i64 @cpu_to_le32(i32 %70)
  %72 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %73 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %75 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %77 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %80 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %82 = getelementptr inbounds %struct.smb_com_transaction_ioctl_req, %struct.smb_com_transaction_ioctl_req* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %88 = bitcast %struct.smb_com_transaction_ioctl_req* %87 to %struct.smb_hdr*
  %89 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %90 = bitcast %struct.smb_com_transaction_ioctl_rsp* %89 to %struct.smb_hdr*
  %91 = call i32 @SendReceive(i32 %83, i32 %86, %struct.smb_hdr* %88, %struct.smb_hdr* %90, i32* %13, i32 0)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %36
  %95 = load i32, i32* @FYI, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %267

98:                                               ; preds = %36
  %99 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %100 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %104 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  store i32 %106, i32* %22, align 4
  %107 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %108 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %107, i32 0, i32 0
  %109 = call i32 @get_bcc(%struct.TYPE_2__* %108)
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %114, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %21, align 4
  %113 = icmp sgt i32 %112, 512
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %98
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %267

117:                                              ; preds = %111
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %22, align 4
  %122 = icmp sgt i32 %121, 2048
  br i1 %122, label %123, label %128

123:                                              ; preds = %120, %117
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* @FYI, align 4
  %127 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %126, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %267

128:                                              ; preds = %120
  %129 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %130 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %129, i32 0, i32 0
  %131 = call i32 @get_bcc(%struct.TYPE_2__* %130)
  %132 = add nsw i32 2, %131
  %133 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %134 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %133, i32 0, i32 1
  %135 = bitcast i32* %134 to i8*
  %136 = sext i32 %132 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %23, align 8
  %138 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %139 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = bitcast i32* %140 to i8*
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = bitcast i8* %144 to %struct.reparse_symlink_data*
  store %struct.reparse_symlink_data* %145, %struct.reparse_symlink_data** %19, align 8
  %146 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %147 = bitcast %struct.reparse_symlink_data* %146 to i8*
  %148 = load i8*, i8** %23, align 8
  %149 = icmp uge i8* %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %128
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  br label %267

153:                                              ; preds = %128
  %154 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %155 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @IO_REPARSE_TAG_NFS, align 4
  %158 = call i64 @cpu_to_le32(i32 %157)
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %207

160:                                              ; preds = %153
  %161 = load i32, i32* @FYI, align 4
  %162 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %163 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %164 = bitcast %struct.reparse_symlink_data* %163 to %struct.reparse_posix_data*
  store %struct.reparse_posix_data* %164, %struct.reparse_posix_data** %20, align 8
  %165 = load %struct.reparse_posix_data*, %struct.reparse_posix_data** %20, align 8
  %166 = getelementptr inbounds %struct.reparse_posix_data, %struct.reparse_posix_data* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @NFS_SPECFILE_LNK, align 4
  %169 = call i64 @cpu_to_le64(i32 %168)
  %170 = icmp ne i64 %167, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %160
  %172 = load i32, i32* @FYI, align 4
  %173 = load %struct.reparse_posix_data*, %struct.reparse_posix_data** %20, align 8
  %174 = getelementptr inbounds %struct.reparse_posix_data, %struct.reparse_posix_data* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @le64_to_cpu(i64 %175)
  %177 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @EOPNOTSUPP, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %12, align 4
  br label %267

180:                                              ; preds = %160
  store i32 1, i32* %16, align 4
  %181 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %182 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @le16_to_cpu(i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load %struct.reparse_posix_data*, %struct.reparse_posix_data** %20, align 8
  %186 = getelementptr inbounds %struct.reparse_posix_data, %struct.reparse_posix_data* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8*, i8** %23, align 8
  %192 = icmp ugt i8* %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %180
  %194 = load i32, i32* @FYI, align 4
  %195 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %12, align 4
  br label %267

198:                                              ; preds = %180
  %199 = load %struct.reparse_posix_data*, %struct.reparse_posix_data** %20, align 8
  %200 = getelementptr inbounds %struct.reparse_posix_data, %struct.reparse_posix_data* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %205 = call i8* @cifs_strndup_from_utf16(i8* %201, i32 %202, i32 %203, %struct.nls_table* %204)
  %206 = load i8**, i8*** %10, align 8
  store i8* %205, i8** %206, align 8
  br label %267

207:                                              ; preds = %153
  %208 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %209 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* @IO_REPARSE_TAG_SYMLINK, align 4
  %212 = call i64 @cpu_to_le32(i32 %211)
  %213 = icmp ne i64 %210, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load i32, i32* @EOPNOTSUPP, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %12, align 4
  br label %267

217:                                              ; preds = %207
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %220 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16_to_cpu(i32 %221)
  %223 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %224 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = zext i32 %222 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %18, align 8
  %228 = load %struct.reparse_symlink_data*, %struct.reparse_symlink_data** %19, align 8
  %229 = getelementptr inbounds %struct.reparse_symlink_data, %struct.reparse_symlink_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @le16_to_cpu(i32 %230)
  store i32 %231, i32* %17, align 4
  %232 = load i8*, i8** %18, align 8
  %233 = load i32, i32* %17, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8*, i8** %23, align 8
  %237 = icmp ugt i8* %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %218
  %239 = load i32, i32* @FYI, align 4
  %240 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %239, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %241 = load i32, i32* @EIO, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %12, align 4
  br label %267

243:                                              ; preds = %218
  %244 = load %struct.smb_com_transaction_ioctl_rsp*, %struct.smb_com_transaction_ioctl_rsp** %15, align 8
  %245 = getelementptr inbounds %struct.smb_com_transaction_ioctl_rsp, %struct.smb_com_transaction_ioctl_rsp* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  store i32 1, i32* %16, align 4
  br label %253

252:                                              ; preds = %243
  store i32 0, i32* %16, align 4
  br label %253

253:                                              ; preds = %252, %251
  %254 = load i8*, i8** %18, align 8
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %16, align 4
  %257 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %258 = call i8* @cifs_strndup_from_utf16(i8* %254, i32 %255, i32 %256, %struct.nls_table* %257)
  %259 = load i8**, i8*** %10, align 8
  store i8* %258, i8** %259, align 8
  %260 = load i8**, i8*** %10, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %253
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %263, %253
  br label %267

267:                                              ; preds = %266, %238, %214, %198, %193, %171, %150, %123, %114, %94
  %268 = load %struct.smb_com_transaction_ioctl_req*, %struct.smb_com_transaction_ioctl_req** %14, align 8
  %269 = call i32 @cifs_buf_release(%struct.smb_com_transaction_ioctl_req* %268)
  %270 = load i32, i32* %12, align 4
  store i32 %270, i32* %6, align 4
  br label %271

271:                                              ; preds = %267, %34
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @get_bcc(%struct.TYPE_2__*) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cifs_strndup_from_utf16(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @cifs_buf_release(%struct.smb_com_transaction_ioctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
