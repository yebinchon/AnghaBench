; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_io_parms = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_read_plain_req = type { i32 }
%struct.smb2_read_rsp = type { i32, i32 }

@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@SMB2_READ_HE = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Send error in read = %d\0A\00", align 1
@CIFS_MAX_MSGSIZE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bad length %d for count %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@CIFS_LARGE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_read(i32 %0, %struct.cifs_io_parms* %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_io_parms*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.smb_rqst, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smb2_read_plain_req*, align 8
  %16 = alloca %struct.smb2_read_rsp*, align 8
  %17 = alloca [1 x %struct.kvec], align 16
  %18 = alloca %struct.kvec, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cifs_ses*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_io_parms* %1, %struct.cifs_io_parms** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.smb2_read_plain_req* null, %struct.smb2_read_plain_req** %15, align 8
  store %struct.smb2_read_rsp* null, %struct.smb2_read_rsp** %16, align 8
  %22 = load i32, i32* @CIFS_LOG_ERROR, align 4
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %24 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.cifs_ses*, %struct.cifs_ses** %26, align 8
  store %struct.cifs_ses* %27, %struct.cifs_ses** %21, align 8
  %28 = load i32*, i32** %9, align 8
  store i32 0, i32* %28, align 4
  %29 = bitcast %struct.smb2_read_plain_req** %15 to i8**
  %30 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %31 = call i32 @smb2_new_read_req(i8** %29, i32* %19, %struct.cifs_io_parms* %30, i32* null, i32 0, i32 0)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %231

36:                                               ; preds = %5
  %37 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %38 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i64 @smb3_encryption_required(%struct.TYPE_3__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %44 = load i32, i32* %20, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %20, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %48 = bitcast %struct.smb2_read_plain_req* %47 to i8*
  %49 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %17, i64 0, i64 0
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 16
  %51 = load i32, i32* %19, align 4
  %52 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %17, i64 0, i64 0
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = call i32 @memset(%struct.smb_rqst* %12, i32 0, i32 16)
  %55 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %17, i64 0, i64 0
  %56 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 1
  store %struct.kvec* %55, %struct.kvec** %56, align 8
  %57 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cifs_ses*, %struct.cifs_ses** %21, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @cifs_send_recv(i32 %58, %struct.cifs_ses* %59, %struct.smb_rqst* %12, i32* %13, i32 %60, %struct.kvec* %18)
  store i32 %61, i32* %14, align 4
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smb2_read_rsp*
  store %struct.smb2_read_rsp* %64, %struct.smb2_read_rsp** %16, align 8
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %134

67:                                               ; preds = %46
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ENODATA, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %74 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* @SMB2_READ_HE, align 4
  %77 = call i32 @cifs_stats_fail_inc(%struct.TYPE_3__* %75, i32 %76)
  %78 = load i32, i32* @VFS, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %83 = getelementptr inbounds %struct.smb2_read_plain_req, %struct.smb2_read_plain_req* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %86 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %21, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %94 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %97 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @trace_smb3_read_err(i32 %81, i32 %84, i32 %89, i32 %92, i32 %95, i32 %98, i32 %99)
  br label %118

101:                                              ; preds = %67
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %104 = getelementptr inbounds %struct.smb2_read_plain_req, %struct.smb2_read_plain_req* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %107 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cifs_ses*, %struct.cifs_ses** %21, align 8
  %112 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %115 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @trace_smb3_read_done(i32 %102, i32 %105, i32 %110, i32 %113, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %101, %72
  %119 = load i32, i32* %13, align 4
  %120 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @free_rsp_buf(i32 %119, i8* %121)
  %123 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %124 = call i32 @cifs_small_buf_release(%struct.smb2_read_plain_req* %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @ENODATA, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %132

130:                                              ; preds = %118
  %131 = load i32, i32* %14, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i32 [ 0, %129 ], [ %131, %130 ]
  store i32 %133, i32* %6, align 4
  br label %231

134:                                              ; preds = %46
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %137 = getelementptr inbounds %struct.smb2_read_plain_req, %struct.smb2_read_plain_req* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %140 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cifs_ses*, %struct.cifs_ses** %21, align 8
  %145 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %148 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %151 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @trace_smb3_read_done(i32 %135, i32 %138, i32 %143, i32 %146, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %134
  %155 = load %struct.smb2_read_plain_req*, %struct.smb2_read_plain_req** %15, align 8
  %156 = call i32 @cifs_small_buf_release(%struct.smb2_read_plain_req* %155)
  %157 = load %struct.smb2_read_rsp*, %struct.smb2_read_rsp** %16, align 8
  %158 = getelementptr inbounds %struct.smb2_read_rsp, %struct.smb2_read_rsp* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le32_to_cpu(i32 %159)
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CIFS_MAX_MSGSIZE, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %173, label %166

166:                                              ; preds = %154
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %170 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ugt i32 %168, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %166, %154
  %174 = load i32, i32* @FYI, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %178 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %176, i32 %179)
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %14, align 4
  %183 = load i32*, i32** %9, align 8
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %173, %166
  %185 = load i8**, i8*** %10, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load i8**, i8*** %10, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.smb2_read_rsp*, %struct.smb2_read_rsp** %16, align 8
  %192 = bitcast %struct.smb2_read_rsp* %191 to i8*
  %193 = load %struct.smb2_read_rsp*, %struct.smb2_read_rsp** %16, align 8
  %194 = getelementptr inbounds %struct.smb2_read_rsp, %struct.smb2_read_rsp* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @memcpy(i8* %190, i8* %197, i32 %199)
  %201 = load i32, i32* %13, align 4
  %202 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @free_rsp_buf(i32 %201, i8* %203)
  br label %229

205:                                              ; preds = %184
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i8**, i8*** %10, align 8
  store i8* %211, i8** %212, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %218 = load i32*, i32** %11, align 8
  store i32 %217, i32* %218, align 4
  br label %227

219:                                              ; preds = %209
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %225 = load i32*, i32** %11, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %219
  br label %227

227:                                              ; preds = %226, %216
  br label %228

228:                                              ; preds = %227, %205
  br label %229

229:                                              ; preds = %228, %188
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %229, %132, %34
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i32 @smb2_new_read_req(i8**, i32*, %struct.cifs_io_parms*, i32*, i32, i32) #1

declare dso_local i64 @smb3_encryption_required(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @trace_smb3_read_err(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_smb3_read_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_rsp_buf(i32, i8*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_read_plain_req*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
