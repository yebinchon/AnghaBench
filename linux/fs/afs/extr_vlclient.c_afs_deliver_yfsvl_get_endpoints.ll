; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_yfsvl_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_yfsvl_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32*, %struct.afs_addr_list*, i32 }
%struct.afs_addr_list = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"{%u,%zu,%u}\00", align 1
@YFS_MAXENDPOINTS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@afs_eproto_yvl_fsendpt_num = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@afs_eproto_yvl_fsendpt_type = common dso_local global i32 0, align 4
@afs_eproto_yvl_fsendpt4_len = common dso_local global i32 0, align 4
@afs_eproto_yvl_fsendpt6_len = common dso_local global i32 0, align 4
@afs_eproto_yvl_vlendpt_type = common dso_local global i32 0, align 4
@afs_eproto_yvl_vlendpt4_len = common dso_local global i32 0, align 4
@afs_eproto_yvl_vlendpt6_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_yfsvl_get_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_yfsvl_get_endpoints(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_addr_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %9 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %10 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %13 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @iov_iter_count(i32 %14)
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18)
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %354 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %113
    i32 3, label %230
    i32 4, label %275
    i32 5, label %343
    i32 6, label %353
  ]

23:                                               ; preds = %1
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = call i32 @afs_extract_to_buf(%struct.afs_call* %24, i32 16)
  %26 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %1, %23
  %29 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %30 = call i32 @afs_extract_data(%struct.afs_call* %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %356

35:                                               ; preds = %28
  %36 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* %40, align 4
  %43 = call i32 @ntohl(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohl(i32 %51)
  %53 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @YFS_MAXENDPOINTS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %35
  %61 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %62 = load i32, i32* @EBADMSG, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32, i32* @afs_eproto_yvl_fsendpt_num, align 4
  %65 = call i32 @afs_protocol_error(%struct.afs_call* %61, i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %356

66:                                               ; preds = %35
  %67 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %68 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FS_SERVICE, align 4
  %71 = load i32, i32* @AFS_FS_PORT, align 4
  %72 = call %struct.afs_addr_list* @afs_alloc_addrlist(i32 %69, i32 %70, i32 %71)
  store %struct.afs_addr_list* %72, %struct.afs_addr_list** %4, align 8
  %73 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %74 = icmp ne %struct.afs_addr_list* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %356

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %81 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %83 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %84 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %83, i32 0, i32 4
  store %struct.afs_addr_list* %82, %struct.afs_addr_list** %84, align 8
  %85 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %86 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %202

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %200, %90
  %92 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %93 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %97 [
    i32 129, label %95
    i32 128, label %96
  ]

95:                                               ; preds = %91
  store i32 12, i32* %7, align 4
  br label %103

96:                                               ; preds = %91
  store i32 24, i32* %7, align 4
  br label %103

97:                                               ; preds = %91
  %98 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %99 = load i32, i32* @EBADMSG, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* @afs_eproto_yvl_fsendpt_type, align 4
  %102 = call i32 @afs_protocol_error(%struct.afs_call* %98, i32 %100, i32 %101)
  store i32 %102, i32* %2, align 4
  br label %356

103:                                              ; preds = %96, %95
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  %108 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @afs_extract_to_buf(%struct.afs_call* %108, i32 %109)
  %111 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %112 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %111, i32 0, i32 0
  store i32 2, i32* %112, align 8
  br label %113

113:                                              ; preds = %1, %103
  %114 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %115 = call i32 @afs_extract_data(%struct.afs_call* %114, i32 1)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %356

120:                                              ; preds = %113
  %121 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %122 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %121, i32 0, i32 4
  %123 = load %struct.afs_addr_list*, %struct.afs_addr_list** %122, align 8
  store %struct.afs_addr_list* %123, %struct.afs_addr_list** %4, align 8
  %124 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %125 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %5, align 8
  %127 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %128 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %179 [
    i32 129, label %130
    i32 128, label %155
  ]

130:                                              ; preds = %120
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ntohl(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %135, 8
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %139 = load i32, i32* @EBADMSG, align 4
  %140 = sub nsw i32 0, %139
  %141 = load i32, i32* @afs_eproto_yvl_fsendpt4_len, align 4
  %142 = call i32 @afs_protocol_error(%struct.afs_call* %138, i32 %140, i32 %141)
  store i32 %142, i32* %2, align 4
  br label %356

143:                                              ; preds = %130
  %144 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ntohl(i32 %150)
  %152 = call i32 @afs_merge_fs_addr4(%struct.afs_addr_list* %144, i32 %147, i32 %151)
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32* %154, i32** %5, align 8
  br label %185

155:                                              ; preds = %120
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ntohl(i32 %158)
  %160 = sext i32 %159 to i64
  %161 = icmp ne i64 %160, 20
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %164 = load i32, i32* @EBADMSG, align 4
  %165 = sub nsw i32 0, %164
  %166 = load i32, i32* @afs_eproto_yvl_fsendpt6_len, align 4
  %167 = call i32 @afs_protocol_error(%struct.afs_call* %163, i32 %165, i32 %166)
  store i32 %167, i32* %2, align 4
  br label %356

168:                                              ; preds = %155
  %169 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ntohl(i32 %174)
  %176 = call i32 @afs_merge_fs_addr6(%struct.afs_addr_list* %169, i32* %171, i32 %175)
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  store i32* %178, i32** %5, align 8
  br label %185

179:                                              ; preds = %120
  %180 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %181 = load i32, i32* @EBADMSG, align 4
  %182 = sub nsw i32 0, %181
  %183 = load i32, i32* @afs_eproto_yvl_fsendpt_type, align 4
  %184 = call i32 @afs_protocol_error(%struct.afs_call* %180, i32 %182, i32 %183)
  store i32 %184, i32* %2, align 4
  br label %356

185:                                              ; preds = %168, %143
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %5, align 8
  %188 = load i32, i32* %186, align 4
  %189 = call i32 @ntohl(i32 %188)
  %190 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %191 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %193 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %193, align 8
  %196 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %197 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %185
  br label %91

201:                                              ; preds = %185
  br label %202

202:                                              ; preds = %201, %89
  %203 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %204 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %207 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %209 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %202
  br label %338

213:                                              ; preds = %202
  %214 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %215 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @YFS_MAXENDPOINTS, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %213
  %220 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %221 = load i32, i32* @EBADMSG, align 4
  %222 = sub nsw i32 0, %221
  %223 = load i32, i32* @afs_eproto_yvl_vlendpt_type, align 4
  %224 = call i32 @afs_protocol_error(%struct.afs_call* %220, i32 %222, i32 %223)
  store i32 %224, i32* %2, align 4
  br label %356

225:                                              ; preds = %213
  %226 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %227 = call i32 @afs_extract_to_buf(%struct.afs_call* %226, i32 4)
  %228 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %229 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %228, i32 0, i32 0
  store i32 3, i32* %229, align 8
  br label %230

230:                                              ; preds = %1, %225
  %231 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %232 = call i32 @afs_extract_data(%struct.afs_call* %231, i32 1)
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %2, align 4
  br label %356

237:                                              ; preds = %230
  %238 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %239 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  store i32* %240, i32** %5, align 8
  br label %241

241:                                              ; preds = %336, %237
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %5, align 8
  %244 = load i32, i32* %242, align 4
  %245 = call i32 @ntohl(i32 %244)
  %246 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %247 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %249 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  switch i32 %250, label %253 [
    i32 129, label %251
    i32 128, label %252
  ]

251:                                              ; preds = %241
  store i32 12, i32* %7, align 4
  br label %259

252:                                              ; preds = %241
  store i32 24, i32* %7, align 4
  br label %259

253:                                              ; preds = %241
  %254 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %255 = load i32, i32* @EBADMSG, align 4
  %256 = sub nsw i32 0, %255
  %257 = load i32, i32* @afs_eproto_yvl_vlendpt_type, align 4
  %258 = call i32 @afs_protocol_error(%struct.afs_call* %254, i32 %256, i32 %257)
  store i32 %258, i32* %2, align 4
  br label %356

259:                                              ; preds = %252, %251
  %260 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %261 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = add i64 %266, 4
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %264, %259
  %270 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @afs_extract_to_buf(%struct.afs_call* %270, i32 %271)
  %273 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %274 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %273, i32 0, i32 0
  store i32 4, i32* %274, align 8
  br label %275

275:                                              ; preds = %1, %269
  %276 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %277 = call i32 @afs_extract_data(%struct.afs_call* %276, i32 1)
  store i32 %277, i32* %8, align 4
  %278 = load i32, i32* %8, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* %8, align 4
  store i32 %281, i32* %2, align 4
  br label %356

282:                                              ; preds = %275
  %283 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %284 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  store i32* %285, i32** %5, align 8
  %286 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %287 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  switch i32 %288, label %321 [
    i32 129, label %289
    i32 128, label %305
  ]

289:                                              ; preds = %282
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ntohl(i32 %292)
  %294 = sext i32 %293 to i64
  %295 = icmp ne i64 %294, 8
  br i1 %295, label %296, label %302

296:                                              ; preds = %289
  %297 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %298 = load i32, i32* @EBADMSG, align 4
  %299 = sub nsw i32 0, %298
  %300 = load i32, i32* @afs_eproto_yvl_vlendpt4_len, align 4
  %301 = call i32 @afs_protocol_error(%struct.afs_call* %297, i32 %299, i32 %300)
  store i32 %301, i32* %2, align 4
  br label %356

302:                                              ; preds = %289
  %303 = load i32*, i32** %5, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  store i32* %304, i32** %5, align 8
  br label %327

305:                                              ; preds = %282
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @ntohl(i32 %308)
  %310 = sext i32 %309 to i64
  %311 = icmp ne i64 %310, 20
  br i1 %311, label %312, label %318

312:                                              ; preds = %305
  %313 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %314 = load i32, i32* @EBADMSG, align 4
  %315 = sub nsw i32 0, %314
  %316 = load i32, i32* @afs_eproto_yvl_vlendpt6_len, align 4
  %317 = call i32 @afs_protocol_error(%struct.afs_call* %313, i32 %315, i32 %316)
  store i32 %317, i32* %2, align 4
  br label %356

318:                                              ; preds = %305
  %319 = load i32*, i32** %5, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 6
  store i32* %320, i32** %5, align 8
  br label %327

321:                                              ; preds = %282
  %322 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %323 = load i32, i32* @EBADMSG, align 4
  %324 = sub nsw i32 0, %323
  %325 = load i32, i32* @afs_eproto_yvl_vlendpt_type, align 4
  %326 = call i32 @afs_protocol_error(%struct.afs_call* %322, i32 %324, i32 %325)
  store i32 %326, i32* %2, align 4
  br label %356

327:                                              ; preds = %318, %302
  %328 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %329 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %329, align 8
  %332 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %333 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %327
  br label %241

337:                                              ; preds = %327
  br label %338

338:                                              ; preds = %337, %212
  %339 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %340 = call i32 @afs_extract_discard(%struct.afs_call* %339, i32 0)
  %341 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %342 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %341, i32 0, i32 0
  store i32 5, i32* %342, align 8
  br label %343

343:                                              ; preds = %1, %338
  %344 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %345 = call i32 @afs_extract_data(%struct.afs_call* %344, i32 0)
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %8, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* %8, align 4
  store i32 %349, i32* %2, align 4
  br label %356

350:                                              ; preds = %343
  %351 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %352 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %351, i32 0, i32 0
  store i32 6, i32* %352, align 8
  br label %353

353:                                              ; preds = %1, %350
  br label %354

354:                                              ; preds = %1, %353
  %355 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %356

356:                                              ; preds = %354, %348, %321, %312, %296, %280, %253, %235, %219, %179, %162, %137, %118, %97, %75, %60, %33
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @iov_iter_count(i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_protocol_error(%struct.afs_call*, i32, i32) #1

declare dso_local %struct.afs_addr_list* @afs_alloc_addrlist(i32, i32, i32) #1

declare dso_local i32 @afs_merge_fs_addr4(%struct.afs_addr_list*, i32, i32) #1

declare dso_local i32 @afs_merge_fs_addr6(%struct.afs_addr_list*, i32*, i32) #1

declare dso_local i32 @afs_extract_discard(%struct.afs_call*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
