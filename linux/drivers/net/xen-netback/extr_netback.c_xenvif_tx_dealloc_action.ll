; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_dealloc_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_dealloc_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i64, i64, i64*, %struct.gnttab_unmap_grant_ref*, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.gnttab_unmap_grant_ref = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_PENDING_REQS = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unmap fail: nr_ops %tu ret %d\0A\00", align 1
@GNTST_okay = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c" host_addr: 0x%llx handle: 0x%x status: %d\0A\00", align 1
@XEN_NETIF_RSP_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*)* @xenvif_tx_dealloc_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_tx_dealloc_action(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %11 = load i32, i32* @MAX_PENDING_REQS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %16 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %19 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %18, i32 0, i32 3
  %20 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %19, align 8
  store %struct.gnttab_unmap_grant_ref* %20, %struct.gnttab_unmap_grant_ref** %3, align 8
  br label %21

21:                                               ; preds = %99, %1
  %22 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %23 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = call i32 (...) @smp_rmb()
  br label %26

26:                                               ; preds = %30, %21
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  %31 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %32 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %33 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %32, i32 0, i32 3
  %34 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %33, align 8
  %35 = ptrtoint %struct.gnttab_unmap_grant_ref* %31 to i64
  %36 = ptrtoint %struct.gnttab_unmap_grant_ref* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 16
  %39 = load i32, i32* @MAX_PENDING_REQS, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sge i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %45 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %4, align 8
  %49 = trunc i64 %47 to i32
  %50 = call i64 @pending_index(i32 %49)
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %55 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %56 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %55, i32 0, i32 3
  %57 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %56, align 8
  %58 = ptrtoint %struct.gnttab_unmap_grant_ref* %54 to i64
  %59 = ptrtoint %struct.gnttab_unmap_grant_ref* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 16
  %62 = getelementptr inbounds i64, i64* %14, i64 %61
  store i64 %53, i64* %62, align 8
  %63 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %64 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %70 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %73 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %74 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %73, i32 0, i32 3
  %75 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %74, align 8
  %76 = ptrtoint %struct.gnttab_unmap_grant_ref* %72 to i64
  %77 = ptrtoint %struct.gnttab_unmap_grant_ref* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 16
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  store i32 %68, i32* %80, align 4
  %81 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %82 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @idx_to_kaddr(%struct.xenvif_queue* %82, i64 %83)
  %85 = load i32, i32* @GNTMAP_host_map, align 4
  %86 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %87 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %81, i32 %84, i32 %85, i32 %91)
  %93 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @xenvif_grant_handle_reset(%struct.xenvif_queue* %93, i64 %94)
  %96 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %97 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %96, i32 1
  store %struct.gnttab_unmap_grant_ref* %97, %struct.gnttab_unmap_grant_ref** %3, align 8
  br label %26

98:                                               ; preds = %26
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %102 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %21, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %108 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %110 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %111 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %110, i32 0, i32 3
  %112 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %111, align 8
  %113 = ptrtoint %struct.gnttab_unmap_grant_ref* %109 to i64
  %114 = ptrtoint %struct.gnttab_unmap_grant_ref* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 16
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %207

118:                                              ; preds = %105
  %119 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %120 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %119, i32 0, i32 3
  %121 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %120, align 8
  %122 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %123 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %126 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %127 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %126, i32 0, i32 3
  %128 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %127, align 8
  %129 = ptrtoint %struct.gnttab_unmap_grant_ref* %125 to i64
  %130 = ptrtoint %struct.gnttab_unmap_grant_ref* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 16
  %133 = trunc i64 %132 to i32
  %134 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %121, i32* null, i32* %124, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %206

137:                                              ; preds = %118
  %138 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %139 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %144 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %145 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %144, i32 0, i32 3
  %146 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %145, align 8
  %147 = ptrtoint %struct.gnttab_unmap_grant_ref* %143 to i64
  %148 = ptrtoint %struct.gnttab_unmap_grant_ref* %146 to i64
  %149 = sub i64 %147, %148
  %150 = sdiv exact i64 %149, 16
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %152)
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %201, %137
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %158 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %159 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %158, i32 0, i32 3
  %160 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %159, align 8
  %161 = ptrtoint %struct.gnttab_unmap_grant_ref* %157 to i64
  %162 = ptrtoint %struct.gnttab_unmap_grant_ref* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 16
  %165 = icmp slt i64 %156, %164
  br i1 %165, label %166, label %204

166:                                              ; preds = %154
  %167 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %167, i64 %169
  %171 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @GNTST_okay, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %166
  %176 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %177 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %181, i64 %183
  %185 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %187, i64 %189
  %191 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %194 = load i32, i32* %9, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %193, i64 %195
  %197 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %180, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %192, i64 %198)
  br label %200

200:                                              ; preds = %175, %166
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %154

204:                                              ; preds = %154
  %205 = call i32 (...) @BUG()
  br label %206

206:                                              ; preds = %204, %118
  br label %207

207:                                              ; preds = %206, %105
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %228, %207
  %209 = load i32, i32* %9, align 4
  %210 = zext i32 %209 to i64
  %211 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %3, align 8
  %212 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %213 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %212, i32 0, i32 3
  %214 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %213, align 8
  %215 = ptrtoint %struct.gnttab_unmap_grant_ref* %211 to i64
  %216 = ptrtoint %struct.gnttab_unmap_grant_ref* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 16
  %219 = icmp slt i64 %210, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %208
  %221 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %222 = load i32, i32* %9, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %14, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %227 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %221, i64 %225, i32 %226)
  br label %228

228:                                              ; preds = %220
  %229 = load i32, i32* %9, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %208

231:                                              ; preds = %208
  %232 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %232)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @smp_rmb(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i64 @pending_index(i32) #2

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i32, i32, i32) #2

declare dso_local i32 @idx_to_kaddr(%struct.xenvif_queue*, i64) #2

declare dso_local i32 @xenvif_grant_handle_reset(%struct.xenvif_queue*, i64) #2

declare dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref*, i32*, i32*, i32) #2

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @xenvif_idx_release(%struct.xenvif_queue*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
