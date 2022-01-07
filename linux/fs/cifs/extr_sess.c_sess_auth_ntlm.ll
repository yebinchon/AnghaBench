; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_ntlm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_ntlm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { i32, i32*, i32, %struct.TYPE_8__*, %struct.cifs_ses* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.cifs_ses = type { i32, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32* }
%struct.smb_hdr = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@CIFS_AUTH_RESP_SIZE = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error %d during NTLM authentication\0A\00", align 1
@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@CAP_UNICODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad word count %d\0A\00", align 1
@GUEST_LOGIN = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Guest login\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"UID = %llu\0A\00", align 1
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sess_data*)* @sess_auth_ntlm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sess_auth_ntlm(%struct.sess_data* %0) #0 {
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
  br label %251

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
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %95

44:                                               ; preds = %18
  %45 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %56 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %57 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @setup_ntlm_response(%struct.cifs_ses* %55, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load i32, i32* @VFS, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %251

66:                                               ; preds = %44
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %76 = call i32 @memcpy(i8* %67, i32* %74, i32 %75)
  %77 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %83 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %90 = call i32 @memcpy(i8* %81, i32* %88, i32 %89)
  %91 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %6, align 8
  br label %102

95:                                               ; preds = %18
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i8* null, i8** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i8* null, i8** %101, align 8
  br label %102

102:                                              ; preds = %95, %66
  %103 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %104 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CAP_UNICODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %102
  %110 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %111 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = srem i32 %115, 2
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i8*, i8** %6, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %118, %109
  %123 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %124 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %125 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @unicode_ssetup_strings(i8** %6, %struct.cifs_ses* %123, i32 %126)
  br label %134

128:                                              ; preds = %102
  %129 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %130 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %131 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ascii_ssetup_strings(i8** %6, %struct.cifs_ses* %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %122
  %135 = load i8*, i8** %6, align 8
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %138 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %137, i32 0, i32 3
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = sub nsw i64 %136, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %147 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 8
  %151 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %152 = call i32 @sess_sendreceive(%struct.sess_data* %151)
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %134
  br label %251

156:                                              ; preds = %134
  %157 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %158 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast i8* %162 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %5, align 8
  %164 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %165 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %164, i32 0, i32 3
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = bitcast i8* %169 to %struct.smb_hdr*
  store %struct.smb_hdr* %170, %struct.smb_hdr** %4, align 8
  %171 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %172 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 3
  br i1 %174, label %175, label %183

175:                                              ; preds = %156
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* @VFS, align 4
  %179 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %180 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  br label %251

183:                                              ; preds = %156
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = load i32, i32* @GUEST_LOGIN, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %183
  %193 = load i32, i32* @FYI, align 4
  %194 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %183
  %196 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %197 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %200 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @FYI, align 4
  %202 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %203 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %207 = call i64 @get_bcc(%struct.smb_hdr* %206)
  store i64 %207, i64* %9, align 8
  %208 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %209 = call i8* @pByteArea(%struct.smb_hdr* %208)
  store i8* %209, i8** %6, align 8
  %210 = load i64, i64* %9, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %195
  br label %248

213:                                              ; preds = %195
  %214 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %215 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %213
  %221 = load i8*, i8** %6, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %224 = ptrtoint %struct.smb_hdr* %223 to i64
  %225 = sub i64 %222, %224
  %226 = urem i64 %225, 2
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %220
  %229 = load i8*, i8** %6, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %6, align 8
  %231 = load i64, i64* %9, align 8
  %232 = add nsw i64 %231, -1
  store i64 %232, i64* %9, align 8
  br label %233

233:                                              ; preds = %228, %220
  %234 = load i64, i64* %9, align 8
  %235 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %236 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %237 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @decode_unicode_ssetup(i8** %6, i64 %234, %struct.cifs_ses* %235, i32 %238)
  br label %247

240:                                              ; preds = %213
  %241 = load i64, i64* %9, align 8
  %242 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %243 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %244 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @decode_ascii_ssetup(i8** %6, i64 %241, %struct.cifs_ses* %242, i32 %245)
  br label %247

247:                                              ; preds = %240, %233
  br label %248

248:                                              ; preds = %247, %212
  %249 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %250 = call i32 @sess_establish_session(%struct.sess_data* %249)
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %248, %175, %155, %62, %17
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %254 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %256 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %255, i32 0, i32 1
  store i32* null, i32** %256, align 8
  %257 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %258 = call i32 @sess_free_buffer(%struct.sess_data* %257)
  %259 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %260 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @kfree(i32* %262)
  %264 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %265 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  store i32* null, i32** %266, align 8
  ret void
}

declare dso_local i32 @sess_alloc_buffer(%struct.sess_data*, i32) #1

declare dso_local i32 @cifs_ssetup_hdr(%struct.cifs_ses*, %struct.TYPE_11__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @setup_ntlm_response(%struct.cifs_ses*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

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
