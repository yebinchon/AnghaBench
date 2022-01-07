; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_init_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_init_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32, %struct.tool_ctx* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, %struct.tool_ctx* }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*)* @tool_init_mws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_init_mws(%struct.tool_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  %6 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %6, i32 0, i32 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = call i8* @ntb_peer_mw_count(%struct.TYPE_11__* %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %13, i32 0, i32 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kcalloc(i32* %16, i32 %19, i32 16, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  %23 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %23, i32 0, i32 2
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %24, align 8
  %25 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp eq %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %261

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 8
  %48 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  %55 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %56 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store %struct.tool_ctx* %55, %struct.tool_ctx** %62, align 8
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %33

66:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %257, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %260

73:                                               ; preds = %67
  %74 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %74, i32 0, i32 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ntb_mw_count(%struct.TYPE_11__* %76, i32 %77)
  %79 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  %86 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %90, i32 0, i32 3
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @devm_kcalloc(i32* %89, i32 %97, i32 16, i32 %98)
  %100 = bitcast i8* %99 to %struct.TYPE_7__*
  %101 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %107, align 8
  %108 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = icmp eq %struct.TYPE_7__* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %73
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %261

120:                                              ; preds = %73
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %172, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %123, i32 0, i32 3
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %122, %130
  br i1 %131, label %132, label %175

132:                                              ; preds = %121
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %134, i32 0, i32 3
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %133, i32* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 %146, i32* %158, align 4
  %159 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %160 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %161 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %160, i32 0, i32 3
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store %struct.tool_ctx* %159, %struct.tool_ctx** %171, align 8
  br label %172

172:                                              ; preds = %132
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %121

175:                                              ; preds = %121
  %176 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %176, i32 0, i32 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = call i8* @ntb_peer_mw_count(%struct.TYPE_11__* %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %182 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %181, i32 0, i32 3
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  store i32 %180, i32* %187, align 4
  %188 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %189 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %188, i32 0, i32 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %193 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %192, i32 0, i32 3
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call i8* @devm_kcalloc(i32* %191, i32 %199, i32 16, i32 %200)
  %202 = bitcast i8* %201 to %struct.TYPE_8__*
  %203 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %203, i32 0, i32 3
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  store %struct.TYPE_8__* %202, %struct.TYPE_8__** %209, align 8
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %253, %175
  %211 = load i32, i32* %4, align 4
  %212 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %213 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %212, i32 0, i32 3
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %211, %219
  br i1 %220, label %221, label %256

221:                                              ; preds = %210
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %224 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %223, i32 0, i32 3
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  store i32 %222, i32* %234, align 8
  %235 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %236 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %235, i32 0, i32 2
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %242 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %241, i32 0, i32 3
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = load i32, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  store %struct.TYPE_10__* %240, %struct.TYPE_10__** %252, align 8
  br label %253

253:                                              ; preds = %221
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %4, align 4
  br label %210

256:                                              ; preds = %210
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %67

260:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %117, %29
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i8* @ntb_peer_mw_count(%struct.TYPE_11__*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ntb_mw_count(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
