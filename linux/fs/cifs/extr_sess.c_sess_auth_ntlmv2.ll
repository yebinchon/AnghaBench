; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_ntlmv2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_ntlmv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { i32, i32*, i32, %struct.TYPE_8__*, %struct.cifs_ses* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.cifs_ses = type { i32, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.smb_hdr = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error %d during NTLMv2 authentication\0A\00", align 1
@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@CAP_UNICODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad word count %d\0A\00", align 1
@GUEST_LOGIN = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Guest login\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"UID = %llu\0A\00", align 1
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sess_data*)* @sess_auth_ntlmv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sess_auth_ntlmv2(%struct.sess_data* %0) #0 {
  %2 = alloca %struct.sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sess_data* %0, %struct.sess_data** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %11 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %10, i32 0, i32 4
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %11, align 8
  store %struct.cifs_ses* %12, %struct.cifs_ses** %7, align 8
  %13 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %14 = call i32 @sess_alloc_buffer(%struct.sess_data* %13, i32 13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %247

18:                                               ; preds = %1
  %19 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %20 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %5, align 8
  %26 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %27 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i32 @cifs_ssetup_hdr(%struct.cifs_ses* %32, %struct.TYPE_11__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %94

47:                                               ; preds = %18
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %49 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %50 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @setup_ntlmv2_rsp(%struct.cifs_ses* %48, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @VFS, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %247

59:                                               ; preds = %47
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %62 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @memcpy(i8* %60, i32* %67, i32 %73)
  %75 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %76 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i8*, i8** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %6, align 8
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %85 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i64 @cpu_to_le16(i32 %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  br label %98

94:                                               ; preds = %18
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %59
  %99 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %100 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CAP_UNICODE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %107 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = srem i32 %111, 2
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i8*, i8** %6, align 8
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %120 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %121 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @unicode_ssetup_strings(i8** %6, %struct.cifs_ses* %119, i32 %122)
  br label %130

124:                                              ; preds = %98
  %125 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %126 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %127 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ascii_ssetup_strings(i8** %6, %struct.cifs_ses* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  %131 = load i8*, i8** %6, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %134 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %133, i32 0, i32 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = sub nsw i64 %132, %139
  %141 = trunc i64 %140 to i32
  %142 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %143 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %141, i32* %146, align 8
  %147 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %148 = call i32 @sess_sendreceive(%struct.sess_data* %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %130
  br label %247

152:                                              ; preds = %130
  %153 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %154 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast i8* %158 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %5, align 8
  %160 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %161 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to %struct.smb_hdr*
  store %struct.smb_hdr* %166, %struct.smb_hdr** %4, align 8
  %167 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %168 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 3
  br i1 %170, label %171, label %179

171:                                              ; preds = %152
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* @VFS, align 4
  %175 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %176 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  br label %247

179:                                              ; preds = %152
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @le16_to_cpu(i32 %183)
  %185 = load i32, i32* @GUEST_LOGIN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load i32, i32* @FYI, align 4
  %190 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %179
  %192 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %193 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %196 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @FYI, align 4
  %198 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %199 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  %202 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %203 = call i64 @get_bcc(%struct.smb_hdr* %202)
  store i64 %203, i64* %9, align 8
  %204 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %205 = call i8* @pByteArea(%struct.smb_hdr* %204)
  store i8* %205, i8** %6, align 8
  %206 = load i64, i64* %9, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %191
  br label %244

209:                                              ; preds = %191
  %210 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %211 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %209
  %217 = load i8*, i8** %6, align 8
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %220 = ptrtoint %struct.smb_hdr* %219 to i64
  %221 = sub i64 %218, %220
  %222 = urem i64 %221, 2
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %6, align 8
  %227 = load i64, i64* %9, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %9, align 8
  br label %229

229:                                              ; preds = %224, %216
  %230 = load i64, i64* %9, align 8
  %231 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %232 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %233 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @decode_unicode_ssetup(i8** %6, i64 %230, %struct.cifs_ses* %231, i32 %234)
  br label %243

236:                                              ; preds = %209
  %237 = load i64, i64* %9, align 8
  %238 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %239 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %240 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @decode_ascii_ssetup(i8** %6, i64 %237, %struct.cifs_ses* %238, i32 %241)
  br label %243

243:                                              ; preds = %236, %229
  br label %244

244:                                              ; preds = %243, %208
  %245 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %246 = call i32 @sess_establish_session(%struct.sess_data* %245)
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %244, %171, %151, %55, %17
  %248 = load i32, i32* %3, align 4
  %249 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %250 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %252 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  %253 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %254 = call i32 @sess_free_buffer(%struct.sess_data* %253)
  %255 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %256 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @kfree(i32* %258)
  %260 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %261 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  store i32* null, i32** %262, align 8
  ret void
}

declare dso_local i32 @sess_alloc_buffer(%struct.sess_data*, i32) #1

declare dso_local i32 @cifs_ssetup_hdr(%struct.cifs_ses*, %struct.TYPE_11__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @setup_ntlmv2_rsp(%struct.cifs_ses*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @unicode_ssetup_strings(i8**, %struct.cifs_ses*, i32) #1

declare dso_local i32 @ascii_ssetup_strings(i8**, %struct.cifs_ses*, i32) #1

declare dso_local i32 @sess_sendreceive(%struct.sess_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i8* @pByteArea(%struct.smb_hdr*) #1

declare dso_local i32 @decode_unicode_ssetup(i8**, i64, %struct.cifs_ses*, i32) #1

declare dso_local i32 @decode_ascii_ssetup(i8**, i64, %struct.cifs_ses*, i32) #1

declare dso_local i32 @sess_establish_session(%struct.sess_data*) #1

declare dso_local i32 @sess_free_buffer(%struct.sess_data*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
