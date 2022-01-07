; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_rawntlmssp_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_rawntlmssp_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { i32, i32*, i32, %struct.TYPE_7__*, %struct.cifs_ses* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.cifs_ses = type { i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.smb_hdr = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rawntlmssp session setup authenticate phase\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad word count %d\0A\00", align 1
@GUEST_LOGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Guest login\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"UID changed! new UID = %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"bad security blob length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sess_data*)* @sess_auth_rawntlmssp_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sess_auth_rawntlmssp_authenticate(%struct.sess_data* %0) #0 {
  %2 = alloca %struct.sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.cifs_ses*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sess_data* %0, %struct.sess_data** %2, align 8
  %11 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %12 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %11, i32 0, i32 4
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  store %struct.cifs_ses* %13, %struct.cifs_ses** %6, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* @FYI, align 4
  %15 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %17 = call i32 @sess_alloc_buffer(%struct.sess_data* %16, i32 12)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %200

21:                                               ; preds = %1
  %22 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %23 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = bitcast %struct.TYPE_10__* %29 to %struct.smb_hdr*
  store %struct.smb_hdr* %30, %struct.smb_hdr** %4, align 8
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %32 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %33 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @build_ntlmssp_auth_blob(i8** %9, i32* %10, %struct.cifs_ses* %31, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %197

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %42 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %48 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %58 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %61 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %63 = call i32 @_sess_auth_rawntlmssp_assemble_req(%struct.sess_data* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %39
  br label %197

67:                                               ; preds = %39
  %68 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %69 = call i32 @sess_sendreceive(%struct.sess_data* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %197

73:                                               ; preds = %67
  %74 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %75 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %5, align 8
  %81 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %82 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to %struct.smb_hdr*
  store %struct.smb_hdr* %87, %struct.smb_hdr** %4, align 8
  %88 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %89 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %92, label %100

92:                                               ; preds = %73
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* @VFS, align 4
  %96 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %97 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %197

100:                                              ; preds = %73
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  %106 = load i32, i32* @GUEST_LOGIN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* @FYI, align 4
  %111 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %100
  %113 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %114 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %117 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %122 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %125 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @FYI, align 4
  %127 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %128 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %120, %112
  %132 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %133 = call i32 @get_bcc(%struct.smb_hdr* %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %135 = call i8* @pByteArea(%struct.smb_hdr* %134)
  store i8* %135, i8** %8, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le16_to_cpu(i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load i32, i32* @VFS, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %197

150:                                              ; preds = %131
  %151 = load i32, i32* %10, align 4
  %152 = load i8*, i8** %8, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %196

161:                                              ; preds = %150
  %162 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %163 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %161
  %169 = load i8*, i8** %8, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %172 = ptrtoint %struct.smb_hdr* %171 to i64
  %173 = sub i64 %170, %172
  %174 = urem i64 %173, 2
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %8, align 8
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %176, %168
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %184 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %185 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @decode_unicode_ssetup(i8** %8, i32 %182, %struct.cifs_ses* %183, i32 %186)
  br label %195

188:                                              ; preds = %161
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %191 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %192 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @decode_ascii_ssetup(i8** %8, i32 %189, %struct.cifs_ses* %190, i32 %193)
  br label %195

195:                                              ; preds = %188, %181
  br label %196

196:                                              ; preds = %195, %160
  br label %197

197:                                              ; preds = %196, %144, %92, %72, %66, %38
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 @kfree(i8* %198)
  br label %200

200:                                              ; preds = %197, %20
  %201 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %202 = call i32 @sess_free_buffer(%struct.sess_data* %201)
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %207 = call i32 @sess_establish_session(%struct.sess_data* %206)
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %205, %200
  %209 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %210 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @kfree(i8* %212)
  %214 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %215 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i8* null, i8** %216, align 8
  %217 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %218 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @kfree(i8* %219)
  %221 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %222 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %221, i32 0, i32 1
  store i8* null, i8** %222, align 8
  %223 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %224 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %223, i32 0, i32 1
  store i32* null, i32** %224, align 8
  %225 = load i32, i32* %3, align 4
  %226 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %227 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @sess_alloc_buffer(%struct.sess_data*, i32) #1

declare dso_local i32 @build_ntlmssp_auth_blob(i8**, i32*, %struct.cifs_ses*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @_sess_auth_rawntlmssp_assemble_req(%struct.sess_data*) #1

declare dso_local i32 @sess_sendreceive(%struct.sess_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i8* @pByteArea(%struct.smb_hdr*) #1

declare dso_local i32 @decode_unicode_ssetup(i8**, i32, %struct.cifs_ses*, i32) #1

declare dso_local i32 @decode_ascii_ssetup(i8**, i32, %struct.cifs_ses*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sess_free_buffer(%struct.sess_data*) #1

declare dso_local i32 @sess_establish_session(%struct.sess_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
