; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_init_transform_rq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_init_transform_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb_rqst = type { i32, %struct.page**, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { %struct.smb2_transform_hdr* }
%struct.smb2_transform_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Encrypt message returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)* @smb3_init_transform_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb3_init_transform_rq(%struct.TCP_Server_Info* %0, i32 %1, %struct.smb_rqst* %2, %struct.smb_rqst* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_rqst*, align 8
  %9 = alloca %struct.smb_rqst*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca %struct.smb2_transform_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.smb_rqst* %2, %struct.smb_rqst** %8, align 8
  store %struct.smb_rqst* %3, %struct.smb_rqst** %9, align 8
  %21 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %22 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %21, i64 0
  %23 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.smb2_transform_hdr*, %struct.smb2_transform_hdr** %26, align 8
  store %struct.smb2_transform_hdr* %27, %struct.smb2_transform_hdr** %11, align 8
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %30

30:                                               ; preds = %230, %4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %233

34:                                               ; preds = %30
  %35 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %35, i64 %38
  %40 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.page** @kmalloc_array(i32 %42, i32 8, i32 %43)
  store %struct.page** %44, %struct.page*** %10, align 8
  %45 = load %struct.page**, %struct.page*** %10, align 8
  %46 = icmp ne %struct.page** %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %253

48:                                               ; preds = %34
  %49 = load %struct.page**, %struct.page*** %10, align 8
  %50 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %50, i64 %52
  %54 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %53, i32 0, i32 1
  store %struct.page** %49, %struct.page*** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %56, i64 %58
  %60 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 8
  %61 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %61, i64 %64
  %66 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %68, i64 %70
  %72 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %71, i32 0, i32 6
  store i32 %67, i32* %72, align 8
  %73 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %73, i64 %76
  %78 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %80, i64 %82
  %84 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %83, i32 0, i32 5
  store i32 %79, i32* %84, align 4
  %85 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %85, i64 %88
  %90 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %92, i64 %94
  %96 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %95, i32 0, i32 4
  store i32 %91, i32* %96, align 8
  %97 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %97, i64 %100
  %102 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %104, i64 %106
  %108 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %107, i32 0, i32 3
  store %struct.TYPE_2__* %103, %struct.TYPE_2__** %108, align 8
  %109 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %109, i64 %112
  %114 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %116, i64 %118
  %120 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %119, i32 0, i32 2
  store i32 %115, i32* %120, align 8
  %121 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %122 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %122, i64 %125
  %127 = call i64 @smb_rqst_len(%struct.TCP_Server_Info* %121, %struct.smb_rqst* %126)
  %128 = load i32, i32* %13, align 4
  %129 = zext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %153, %48
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = load i32, i32* @__GFP_HIGHMEM, align 4
  %139 = or i32 %137, %138
  %140 = call %struct.page* @alloc_page(i32 %139)
  %141 = load %struct.page**, %struct.page*** %10, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.page*, %struct.page** %141, i64 %143
  store %struct.page* %140, %struct.page** %144, align 8
  %145 = load %struct.page**, %struct.page*** %10, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.page*, %struct.page** %145, i64 %147
  %149 = load %struct.page*, %struct.page** %148, align 8
  %150 = icmp ne %struct.page* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %136
  br label %253

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %132

156:                                              ; preds = %132
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %226, %156
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %229

161:                                              ; preds = %157
  %162 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %162, i64 %164
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @rqst_page_get_length(%struct.smb_rqst* %165, i32 %166, i32* %20, i32* %19)
  %168 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %168, i64 %170
  %172 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %171, i32 0, i32 1
  %173 = load %struct.page**, %struct.page*** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.page*, %struct.page** %173, i64 %175
  %177 = load %struct.page*, %struct.page** %176, align 8
  %178 = call i64 @kmap(%struct.page* %177)
  %179 = inttoptr i64 %178 to i8*
  %180 = load i32, i32* %19, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8* %182, i8** %17, align 8
  %183 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %183, i64 %186
  %188 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %187, i32 0, i32 1
  %189 = load %struct.page**, %struct.page*** %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.page*, %struct.page** %189, i64 %191
  %193 = load %struct.page*, %struct.page** %192, align 8
  %194 = call i64 @kmap(%struct.page* %193)
  %195 = inttoptr i64 %194 to i8*
  %196 = load i32, i32* %19, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8* %198, i8** %18, align 8
  %199 = load i8*, i8** %17, align 8
  %200 = load i8*, i8** %18, align 8
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @memcpy(i8* %199, i8* %200, i32 %201)
  %203 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %203, i64 %205
  %207 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %206, i32 0, i32 1
  %208 = load %struct.page**, %struct.page*** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.page*, %struct.page** %208, i64 %210
  %212 = load %struct.page*, %struct.page** %211, align 8
  %213 = call i32 @kunmap(%struct.page* %212)
  %214 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %214, i64 %217
  %219 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %218, i32 0, i32 1
  %220 = load %struct.page**, %struct.page*** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.page*, %struct.page** %220, i64 %222
  %224 = load %struct.page*, %struct.page** %223, align 8
  %225 = call i32 @kunmap(%struct.page* %224)
  br label %226

226:                                              ; preds = %161
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  br label %157

229:                                              ; preds = %157
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  br label %30

233:                                              ; preds = %30
  %234 = load %struct.smb2_transform_hdr*, %struct.smb2_transform_hdr** %11, align 8
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %237 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %238 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @fill_transform_hdr(%struct.smb2_transform_hdr* %234, i32 %235, %struct.smb_rqst* %236, i32 %239)
  %241 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %244 = call i32 @crypt_message(%struct.TCP_Server_Info* %241, i32 %242, %struct.smb_rqst* %243, i32 1)
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* @FYI, align 4
  %246 = load i32, i32* %16, align 4
  %247 = call i32 @cifs_dbg(i32 %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %233
  br label %253

251:                                              ; preds = %233
  %252 = load i32, i32* %16, align 4
  store i32 %252, i32* %5, align 4
  br label %260

253:                                              ; preds = %250, %151, %47
  %254 = load i32, i32* %7, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %257 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %256, i64 1
  %258 = call i32 @smb3_free_compound_rqst(i32 %255, %struct.smb_rqst* %257)
  %259 = load i32, i32* %16, align 4
  store i32 %259, i32* %5, align 4
  br label %260

260:                                              ; preds = %253, %251
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @smb_rqst_len(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @rqst_page_get_length(%struct.smb_rqst*, i32, i32*, i32*) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @fill_transform_hdr(%struct.smb2_transform_hdr*, i32, %struct.smb_rqst*, i32) #1

declare dso_local i32 @crypt_message(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @smb3_free_compound_rqst(i32, %struct.smb_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
