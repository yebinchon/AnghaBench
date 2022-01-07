; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_entry_by_name_u.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_entry_by_name_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { %struct.afs_vldb_entry*, %struct.afs_uvldbentry__xdr* }
%struct.afs_vldb_entry = type { i32, i32, i32, i8**, i32*, i32*, i8**, i32 }
%struct.afs_uvldbentry__xdr = type { i32*, %struct.afs_uuid__xdr*, i32*, i32, i32*, i32 }
%struct.afs_uuid__xdr = type { i32*, i32, i32, i32, i32, i32 }
%struct.afs_uuid = type { i8**, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_NMAXNSERVERS = common dso_local global i32 0, align 4
@AFS_VLSF_DONTUSE = common dso_local global i32 0, align 4
@AFS_VLSF_NEWREPSITE = common dso_local global i32 0, align 4
@AFS_VLSF_RWVOL = common dso_local global i32 0, align 4
@AFS_VOL_VTM_RW = common dso_local global i32 0, align 4
@AFS_VLF_BACKEXISTS = common dso_local global i32 0, align 4
@AFS_VOL_VTM_BAK = common dso_local global i32 0, align 4
@AFS_VLSF_ROVOL = common dso_local global i32 0, align 4
@AFS_VOL_VTM_RO = common dso_local global i32 0, align 4
@AFS_MAXTYPES = common dso_local global i32 0, align 4
@AFS_VLF_RWEXISTS = common dso_local global i32 0, align 4
@AFS_VLDB_HAS_RW = common dso_local global i32 0, align 4
@AFS_VLF_ROEXISTS = common dso_local global i32 0, align 4
@AFS_VLDB_HAS_RO = common dso_local global i32 0, align 4
@AFS_VLDB_HAS_BAK = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@AFS_VLDB_QUERY_ERROR = common dso_local global i32 0, align 4
@AFS_VLDB_QUERY_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_vl_get_entry_by_name_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_vl_get_entry_by_name_u(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_uvldbentry__xdr*, align 8
  %5 = alloca %struct.afs_vldb_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.afs_uuid__xdr*, align 8
  %13 = alloca %struct.afs_uuid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  store i32 0, i32* %6, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = call i32 @afs_transfer_reply(%struct.afs_call* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %2, align 4
  br label %350

23:                                               ; preds = %1
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 1
  %26 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %25, align 8
  store %struct.afs_uvldbentry__xdr* %26, %struct.afs_uvldbentry__xdr** %4, align 8
  %27 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 0
  %29 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %28, align 8
  store %struct.afs_vldb_entry* %29, %struct.afs_vldb_entry** %5, align 8
  %30 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %31 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @ntohl(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AFS_NMAXNSERVERS, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @AFS_NMAXNSERVERS, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %23
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %44 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %51 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ntohl(i32 %56)
  %58 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %59 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %58, i32 0, i32 6
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %69 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %68, i32 0, i32 6
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* null, i8** %73, align 8
  %74 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %75 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %74, i32 0, i32 6
  %76 = load i8**, i8*** %75, align 8
  %77 = call i32 @strlen(i8** %76)
  %78 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %79 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %105, %67
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %86 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @ntohl(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @AFS_VLSF_DONTUSE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @AFS_VLSF_NEWREPSITE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %98, %84
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %110 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @ntohl(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %270, %108
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %273

118:                                              ; preds = %114
  %119 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %120 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %15, align 4
  %122 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %123 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @ntohl(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @AFS_VLSF_DONTUSE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @AFS_VLSF_NEWREPSITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138, %118
  br label %270

144:                                              ; preds = %138, %135
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @AFS_VLSF_RWVOL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %174

149:                                              ; preds = %144
  %150 = load i32, i32* @AFS_VOL_VTM_RW, align 4
  %151 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %152 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %150
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @AFS_VLF_BACKEXISTS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %149
  %164 = load i32, i32* @AFS_VOL_VTM_BAK, align 4
  %165 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %166 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %164
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %163, %149
  br label %174

174:                                              ; preds = %173, %144
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @AFS_VLSF_ROVOL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load i32, i32* @AFS_VOL_VTM_RO, align 4
  %181 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %182 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %180
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %179, %174
  %190 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %191 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %189
  br label %270

199:                                              ; preds = %189
  %200 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %201 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %200, i32 0, i32 1
  %202 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %202, i64 %204
  store %struct.afs_uuid__xdr* %205, %struct.afs_uuid__xdr** %12, align 8
  %206 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %207 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = bitcast i32* %211 to %struct.afs_uuid*
  store %struct.afs_uuid* %212, %struct.afs_uuid** %13, align 8
  %213 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %214 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %217 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  %218 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %219 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @ntohl(i32 %220)
  %222 = call i8* @htons(i8* %221)
  %223 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %224 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %223, i32 0, i32 4
  store i8* %222, i8** %224, align 8
  %225 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %226 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @ntohl(i32 %227)
  %229 = call i8* @htons(i8* %228)
  %230 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %231 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  %232 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %233 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @ntohl(i32 %234)
  %236 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %237 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  %238 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %239 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @ntohl(i32 %240)
  %242 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %243 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  store i32 0, i32* %14, align 4
  br label %244

244:                                              ; preds = %262, %199
  %245 = load i32, i32* %14, align 4
  %246 = icmp slt i32 %245, 6
  br i1 %246, label %247, label %265

247:                                              ; preds = %244
  %248 = load %struct.afs_uuid__xdr*, %struct.afs_uuid__xdr** %12, align 8
  %249 = getelementptr inbounds %struct.afs_uuid__xdr, %struct.afs_uuid__xdr* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @ntohl(i32 %254)
  %256 = load %struct.afs_uuid*, %struct.afs_uuid** %13, align 8
  %257 = getelementptr inbounds %struct.afs_uuid, %struct.afs_uuid* %256, i32 0, i32 0
  %258 = load i8**, i8*** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  store i8* %255, i8** %261, align 8
  br label %262

262:                                              ; preds = %247
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %244

265:                                              ; preds = %244
  %266 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %267 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %265, %198, %143
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %114

273:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %293, %273
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @AFS_MAXTYPES, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %274
  %279 = load %struct.afs_uvldbentry__xdr*, %struct.afs_uvldbentry__xdr** %4, align 8
  %280 = getelementptr inbounds %struct.afs_uvldbentry__xdr, %struct.afs_uvldbentry__xdr* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @ntohl(i32 %285)
  %287 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %288 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %287, i32 0, i32 3
  %289 = load i8**, i8*** %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  store i8* %286, i8** %292, align 8
  br label %293

293:                                              ; preds = %278
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %274

296:                                              ; preds = %274
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @AFS_VLF_RWEXISTS, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i32, i32* @AFS_VLDB_HAS_RW, align 4
  %303 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %304 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %303, i32 0, i32 1
  %305 = call i32 @__set_bit(i32 %302, i32* %304)
  br label %306

306:                                              ; preds = %301, %296
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @AFS_VLF_ROEXISTS, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load i32, i32* @AFS_VLDB_HAS_RO, align 4
  %313 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %314 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %313, i32 0, i32 1
  %315 = call i32 @__set_bit(i32 %312, i32* %314)
  br label %316

316:                                              ; preds = %311, %306
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* @AFS_VLF_BACKEXISTS, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load i32, i32* @AFS_VLDB_HAS_BAK, align 4
  %323 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %324 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %323, i32 0, i32 1
  %325 = call i32 @__set_bit(i32 %322, i32* %324)
  br label %326

326:                                              ; preds = %321, %316
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* @AFS_VLF_RWEXISTS, align 4
  %329 = load i32, i32* @AFS_VLF_ROEXISTS, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @AFS_VLF_BACKEXISTS, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %327, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %344, label %335

335:                                              ; preds = %326
  %336 = load i32, i32* @ENOMEDIUM, align 4
  %337 = sub nsw i32 0, %336
  %338 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %339 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 8
  %340 = load i32, i32* @AFS_VLDB_QUERY_ERROR, align 4
  %341 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %342 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %341, i32 0, i32 1
  %343 = call i32 @__set_bit(i32 %340, i32* %342)
  br label %344

344:                                              ; preds = %335, %326
  %345 = load i32, i32* @AFS_VLDB_QUERY_VALID, align 4
  %346 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  %347 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %346, i32 0, i32 1
  %348 = call i32 @__set_bit(i32 %345, i32* %347)
  %349 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %344, %21
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strlen(i8**) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
