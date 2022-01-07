; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_decode_negTokenInit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_decode_negTokenInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32 }
%struct.asn1_ctx = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error decoding negTokenInit header\0A\00", align 1
@ASN1_APL = common dso_local global i32 0, align 4
@ASN1_CON = common dso_local global i32 0, align 4
@ASN1_EOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cls = %d con = %d tag = %d\0A\00", align 1
@ASN1_OJI = common dso_local global i32 0, align 4
@ASN1_PRI = common dso_local global i32 0, align 4
@ASN1_UNI = common dso_local global i32 0, align 4
@SPNEGO_OID = common dso_local global i32 0, align 4
@SPNEGO_OID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error decoding negTokenInit\0A\00", align 1
@ASN1_CTX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"cls = %d con = %d tag = %d end = %p (%d) exit 0\0A\00", align 1
@ASN1_SEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"cls = %d con = %d tag = %d end = %p (%d) exit 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Error decoding 2nd part of negTokenInit\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Error decoding negTokenInit hdr exit2\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"OID len = %d oid = 0x%lx 0x%lx 0x%lx 0x%lx\0A\00", align 1
@MSKRB5_OID = common dso_local global i32 0, align 4
@MSKRB5_OID_LEN = common dso_local global i32 0, align 4
@KRB5U2U_OID = common dso_local global i32 0, align 4
@KRB5U2U_OID_LEN = common dso_local global i32 0, align 4
@KRB5_OID = common dso_local global i32 0, align 4
@KRB5_OID_LEN = common dso_local global i32 0, align 4
@NTLMSSP_OID = common dso_local global i32 0, align 4
@NTLMSSP_OID_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Should be an oid what is going on?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_negTokenInit(i8* %0, i32 %1, %struct.TCP_Server_Info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.asn1_ctx, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TCP_Server_Info* %2, %struct.TCP_Server_Info** %7, align 8
  store i64* null, i64** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @asn1_open(%struct.asn1_ctx* %8, i8* %17, i32 %18)
  %20 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @FYI, align 4
  %24 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ASN1_APL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @ASN1_CON, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @ASN1_EOC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %29, %25
  %38 = load i32, i32* @FYI, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %289

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @ASN1_OJI, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @ASN1_PRI, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ASN1_UNI, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @asn1_oid_decode(%struct.asn1_ctx* %8, i8* %61, i64** %11, i32* %15)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i64*, i64** %11, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SPNEGO_OID, align 4
  %69 = load i32, i32* @SPNEGO_OID_LEN, align 4
  %70 = call i32 @compare_oid(i64* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i64*, i64** %11, align 8
  %72 = call i32 @kfree(i64* %71)
  br label %73

73:                                               ; preds = %65, %60
  br label %75

74:                                               ; preds = %56, %52, %48
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %44
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @FYI, align 4
  %81 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

82:                                               ; preds = %76
  %83 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @FYI, align 4
  %87 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ASN1_CTX, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @ASN1_CON, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @ASN1_EOC, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96, %92, %88
  %101 = load i32, i32* @FYI, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i8* %105, i32 %108)
  store i32 0, i32* %4, align 4
  br label %289

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @FYI, align 4
  %116 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

117:                                              ; preds = %111
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @ASN1_UNI, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @ASN1_CON, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @ASN1_SEQ, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125, %121, %117
  %130 = load i32, i32* @FYI, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i8* %134, i32 %137)
  store i32 0, i32* %4, align 4
  br label %289

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139
  %141 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @FYI, align 4
  %145 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

146:                                              ; preds = %140
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @ASN1_CTX, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @ASN1_CON, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @ASN1_EOC, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154, %150, %146
  %159 = load i32, i32* @FYI, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i8* %163, i32 %166)
  store i32 0, i32* %4, align 4
  br label %289

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168
  %170 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %10, i32* %12, i32* %13, i32* %14)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @FYI, align 4
  %174 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

175:                                              ; preds = %169
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @ASN1_UNI, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @ASN1_CON, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @ASN1_SEQ, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %183, %179, %175
  %188 = load i32, i32* @FYI, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %188, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i8* %192, i32 %195)
  store i32 0, i32* %4, align 4
  br label %289

197:                                              ; preds = %183
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %287, %198
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @asn1_eoc_decode(%struct.asn1_ctx* %8, i8* %200)
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br i1 %203, label %204, label %288

204:                                              ; preds = %199
  %205 = call i32 @asn1_header_decode(%struct.asn1_ctx* %8, i8** %9, i32* %12, i32* %13, i32* %14)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @FYI, align 4
  %210 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %209, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %289

211:                                              ; preds = %204
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @ASN1_OJI, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %284

215:                                              ; preds = %211
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @ASN1_PRI, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %284

219:                                              ; preds = %215
  %220 = load i8*, i8** %9, align 8
  %221 = call i32 @asn1_oid_decode(%struct.asn1_ctx* %8, i8* %220, i64** %11, i32* %15)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %283

223:                                              ; preds = %219
  %224 = load i32, i32* @FYI, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i64*, i64** %11, align 8
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %11, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %11, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 2
  %233 = load i64, i64* %232, align 8
  %234 = load i64*, i64** %11, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 3
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %224, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %225, i64 %227, i64 %230, i64 %233, i64 %236)
  %238 = load i64*, i64** %11, align 8
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* @MSKRB5_OID, align 4
  %241 = load i32, i32* @MSKRB5_OID_LEN, align 4
  %242 = call i32 @compare_oid(i64* %238, i32 %239, i32 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %223
  %245 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %246 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %245, i32 0, i32 0
  store i32 1, i32* %246, align 4
  br label %280

247:                                              ; preds = %223
  %248 = load i64*, i64** %11, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* @KRB5U2U_OID, align 4
  %251 = load i32, i32* @KRB5U2U_OID_LEN, align 4
  %252 = call i32 @compare_oid(i64* %248, i32 %249, i32 %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %256 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %255, i32 0, i32 1
  store i32 1, i32* %256, align 4
  br label %279

257:                                              ; preds = %247
  %258 = load i64*, i64** %11, align 8
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* @KRB5_OID, align 4
  %261 = load i32, i32* @KRB5_OID_LEN, align 4
  %262 = call i32 @compare_oid(i64* %258, i32 %259, i32 %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %266 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %265, i32 0, i32 2
  store i32 1, i32* %266, align 4
  br label %278

267:                                              ; preds = %257
  %268 = load i64*, i64** %11, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* @NTLMSSP_OID, align 4
  %271 = load i32, i32* @NTLMSSP_OID_LEN, align 4
  %272 = call i32 @compare_oid(i64* %268, i32 %269, i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %267
  %275 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %276 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %275, i32 0, i32 3
  store i32 1, i32* %276, align 4
  br label %277

277:                                              ; preds = %274, %267
  br label %278

278:                                              ; preds = %277, %264
  br label %279

279:                                              ; preds = %278, %254
  br label %280

280:                                              ; preds = %279, %244
  %281 = load i64*, i64** %11, align 8
  %282 = call i32 @kfree(i64* %281)
  br label %283

283:                                              ; preds = %280, %219
  br label %287

284:                                              ; preds = %215, %211
  %285 = load i32, i32* @FYI, align 4
  %286 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %285, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %283
  br label %199

288:                                              ; preds = %199
  store i32 1, i32* %4, align 4
  br label %289

289:                                              ; preds = %288, %208, %187, %172, %158, %143, %129, %114, %100, %85, %79, %37, %22
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @asn1_open(%struct.asn1_ctx*, i8*, i32) #1

declare dso_local i32 @asn1_header_decode(%struct.asn1_ctx*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @asn1_oid_decode(%struct.asn1_ctx*, i8*, i64**, i32*) #1

declare dso_local i32 @compare_oid(i64*, i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @asn1_eoc_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
