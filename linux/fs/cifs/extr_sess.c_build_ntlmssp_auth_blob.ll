; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_build_ntlmssp_auth_blob.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_build_ntlmssp_auth_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_14__*, i32*, i32*, %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.nls_table = type { i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__, i8*, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8* }
%struct.TYPE_20__ = type { i64, i64, i8* }
%struct.TYPE_19__ = type { i8*, i8*, i8* }
%struct.TYPE_18__ = type { i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8* }
%struct.TYPE_15__ = type { i64, i64, i8* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error %d during NTLMSSP authentication\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error %d during NTLMSSP allocation\0A\00", align 1
@NTLMSSP_SIGNATURE = common dso_local global i32 0, align 4
@NtLmAuthenticate = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_56 = common dso_local global i32 0, align 4
@NTLMSSP_REQUEST_TARGET = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_TARGET_INFO = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_128 = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_UNICODE = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_NTLM = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_EXTENDED_SEC = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_SEAL = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_SIGN = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_KEY_XCH = common dso_local global i32 0, align 4
@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@CIFS_MAX_DOMAINNAME_LEN = common dso_local global i32 0, align 4
@CIFS_MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@CIFS_CPHTXT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_ntlmssp_auth_blob(i8** %0, i32* %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.cifs_ses* %2, %struct.cifs_ses** %7, align 8
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %16 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %17 = call i32 @setup_ntlmv2_rsp(%struct.cifs_ses* %15, %struct.nls_table* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @VFS, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cifs_dbg(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %404

25:                                               ; preds = %4
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %27 = call i32 @size_of_ntlmssp_blob(%struct.cifs_ses* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i32 %27, i32 %28)
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @VFS, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @cifs_dbg(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %6, align 8
  store i32 0, i32* %40, align 4
  br label %404

41:                                               ; preds = %25
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @NTLMSSP_SIGNATURE, align 4
  %49 = call i32 @memcpy(i8* %47, i32 %48, i32 8)
  %50 = load i32, i32* @NtLmAuthenticate, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @NTLMSSP_NEGOTIATE_56, align 4
  %54 = load i32, i32* @NTLMSSP_REQUEST_TARGET, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NTLMSSP_NEGOTIATE_TARGET_INFO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NTLMSSP_NEGOTIATE_128, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @NTLMSSP_NEGOTIATE_UNICODE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @NTLMSSP_NEGOTIATE_NTLM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NTLMSSP_NEGOTIATE_EXTENDED_SEC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NTLMSSP_NEGOTIATE_SEAL, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %41
  %75 = load i32, i32* @NTLMSSP_NEGOTIATE_SIGN, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %41
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %87 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85, %78
  %93 = load i32, i32* @NTLMSSP_NEGOTIATE_KEY_XCH, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 168
  store i8* %99, i8** %12, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = call i8* @cpu_to_le32(i32 168)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %114 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  %125 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %126 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %173

129:                                              ; preds = %96
  %130 = load i8*, i8** %12, align 8
  %131 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %132 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %138 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @memcpy(i8* %130, i32 %136, i32 %142)
  %144 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %145 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i8*, i8** %12, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %12, align 8
  %153 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %154 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %158 = sub nsw i32 %156, %157
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %164 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %168 = sub nsw i32 %166, %167
  %169 = call i8* @cpu_to_le16(i32 %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  br label %180

173:                                              ; preds = %96
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  store i8* null, i8** %176, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  store i8* null, i8** %179, align 8
  br label %180

180:                                              ; preds = %173, %129
  %181 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %182 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %205

185:                                              ; preds = %180
  %186 = load i8*, i8** %12, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = ptrtoint i8* %186 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = call i8* @cpu_to_le32(i32 %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  store i8* %193, i8** %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  store i8* null, i8** %199, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  store i8* null, i8** %202, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  store i8* %204, i8** %12, align 8
  br label %241

205:                                              ; preds = %180
  %206 = load i8*, i8** %12, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %209 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @CIFS_MAX_DOMAINNAME_LEN, align 4
  %212 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %213 = call i32 @cifs_strtoUTF16(i32* %207, i32* %210, i32 %211, %struct.nls_table* %212)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = mul nsw i32 %214, 2
  store i32 %215, i32* %13, align 4
  %216 = load i8*, i8** %12, align 8
  %217 = load i8**, i8*** %5, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %216 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = trunc i64 %221 to i32
  %223 = call i8* @cpu_to_le32(i32 %222)
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  store i8* %223, i8** %226, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i8* @cpu_to_le16(i32 %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  store i8* %228, i8** %231, align 8
  %232 = load i32, i32* %13, align 4
  %233 = call i8* @cpu_to_le16(i32 %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  store i8* %233, i8** %236, align 8
  %237 = load i32, i32* %13, align 4
  %238 = load i8*, i8** %12, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %12, align 8
  br label %241

241:                                              ; preds = %205, %185
  %242 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %243 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %266

246:                                              ; preds = %241
  %247 = load i8*, i8** %12, align 8
  %248 = load i8**, i8*** %5, align 8
  %249 = load i8*, i8** %248, align 8
  %250 = ptrtoint i8* %247 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = trunc i64 %252 to i32
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 2
  store i8* %254, i8** %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  store i8* null, i8** %260, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  store i8* null, i8** %263, align 8
  %264 = load i8*, i8** %12, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 2
  store i8* %265, i8** %12, align 8
  br label %302

266:                                              ; preds = %241
  %267 = load i8*, i8** %12, align 8
  %268 = bitcast i8* %267 to i32*
  %269 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %270 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* @CIFS_MAX_USERNAME_LEN, align 4
  %273 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %274 = call i32 @cifs_strtoUTF16(i32* %268, i32* %271, i32 %272, %struct.nls_table* %273)
  store i32 %274, i32* %14, align 4
  %275 = load i32, i32* %14, align 4
  %276 = mul nsw i32 %275, 2
  store i32 %276, i32* %14, align 4
  %277 = load i8*, i8** %12, align 8
  %278 = load i8**, i8*** %5, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = ptrtoint i8* %277 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = trunc i64 %282 to i32
  %284 = call i8* @cpu_to_le32(i32 %283)
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 2
  store i8* %284, i8** %287, align 8
  %288 = load i32, i32* %14, align 4
  %289 = call i8* @cpu_to_le16(i32 %288)
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  store i8* %289, i8** %292, align 8
  %293 = load i32, i32* %14, align 4
  %294 = call i8* @cpu_to_le16(i32 %293)
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  store i8* %294, i8** %297, align 8
  %298 = load i32, i32* %14, align 4
  %299 = load i8*, i8** %12, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %12, align 8
  br label %302

302:                                              ; preds = %266, %246
  %303 = load i8*, i8** %12, align 8
  %304 = load i8**, i8*** %5, align 8
  %305 = load i8*, i8** %304, align 8
  %306 = ptrtoint i8* %303 to i64
  %307 = ptrtoint i8* %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = call i8* @cpu_to_le32(i32 %309)
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 2
  store i8* %310, i8** %313, align 8
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  store i64 0, i64* %316, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  store i64 0, i64* %319, align 8
  %320 = load i8*, i8** %12, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 2
  store i8* %321, i8** %12, align 8
  %322 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %323 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %322, i32 0, i32 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @NTLMSSP_NEGOTIATE_KEY_XCH, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %302
  %331 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %332 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %331, i32 0, i32 0
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @NTLMSSP_NEGOTIATE_EXTENDED_SEC, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %377

339:                                              ; preds = %330, %302
  %340 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %341 = call i32 @calc_seckey(%struct.cifs_ses* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %377, label %343

343:                                              ; preds = %339
  %344 = load i8*, i8** %12, align 8
  %345 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %346 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %345, i32 0, i32 0
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %351 = call i32 @memcpy(i8* %344, i32 %349, i32 %350)
  %352 = load i8*, i8** %12, align 8
  %353 = load i8**, i8*** %5, align 8
  %354 = load i8*, i8** %353, align 8
  %355 = ptrtoint i8* %352 to i64
  %356 = ptrtoint i8* %354 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = call i8* @cpu_to_le32(i32 %358)
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 2
  store i8* %359, i8** %362, align 8
  %363 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %364 = call i8* @cpu_to_le16(i32 %363)
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 1
  store i8* %364, i8** %367, align 8
  %368 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %369 = call i8* @cpu_to_le16(i32 %368)
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  store i8* %369, i8** %372, align 8
  %373 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %374 = load i8*, i8** %12, align 8
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8* %376, i8** %12, align 8
  br label %395

377:                                              ; preds = %339, %330
  %378 = load i8*, i8** %12, align 8
  %379 = load i8**, i8*** %5, align 8
  %380 = load i8*, i8** %379, align 8
  %381 = ptrtoint i8* %378 to i64
  %382 = ptrtoint i8* %380 to i64
  %383 = sub i64 %381, %382
  %384 = trunc i64 %383 to i32
  %385 = call i8* @cpu_to_le32(i32 %384)
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 2
  store i8* %385, i8** %388, align 8
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  store i8* null, i8** %391, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 0
  store i8* null, i8** %394, align 8
  br label %395

395:                                              ; preds = %377, %343
  %396 = load i8*, i8** %12, align 8
  %397 = load i8**, i8*** %5, align 8
  %398 = load i8*, i8** %397, align 8
  %399 = ptrtoint i8* %396 to i64
  %400 = ptrtoint i8* %398 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  %403 = load i32*, i32** %6, align 8
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %395, %34, %20
  %405 = load i32, i32* %9, align 4
  ret i32 %405
}

declare dso_local i32 @setup_ntlmv2_rsp(%struct.cifs_ses*, %struct.nls_table*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @size_of_ntlmssp_blob(%struct.cifs_ses*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_strtoUTF16(i32*, i32*, i32, %struct.nls_table*) #1

declare dso_local i32 @calc_seckey(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
