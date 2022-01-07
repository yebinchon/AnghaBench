; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32**, i64, i32 }
%struct.gnttab_copy = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }

@DOMID_SELF = common dso_local global i32 0, align 4
@GNTCOPY_source_gref = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@XEN_NETIF_CTRL_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_set_hash_mapping(%struct.xenvif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenvif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.gnttab_copy], align 16
  store %struct.xenvif* %0, %struct.xenvif** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %14 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %18 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %16, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  store i32 1, i32* %11, align 4
  %27 = bitcast [2 x %struct.gnttab_copy]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 128, i1 false)
  %28 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %29 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 16
  %34 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %28, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %37 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %28, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* @DOMID_SELF, align 4
  store i32 %44, i32* %43, align 16
  %45 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %28, i32 0, i32 4
  %46 = load i32, i32* @GNTCOPY_source_gref, align 4
  store i32 %46, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %57 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %52, %4
  %69 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %69, i32* %5, align 4
  br label %220

70:                                               ; preds = %61
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i8* @virt_to_gfn(i32* %74)
  %76 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %77 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8* %75, i8** %79, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @xen_offset_in_page(i32* %83)
  %85 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %86 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 16
  %88 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %89 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 16
  %92 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %93 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = add nsw i32 %91, %94
  %96 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %70
  %99 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %100 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %101 = bitcast %struct.gnttab_copy* %99 to i8*
  %102 = bitcast %struct.gnttab_copy* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %101, i8* align 16 %102, i64 64, i1 false)
  %103 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %104 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %105 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 16
  %108 = sub nsw i32 %103, %107
  %109 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %110 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 16
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i8* @virt_to_gfn(i32* %118)
  %120 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %121 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  %124 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %125 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 16
  %127 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %128 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 16
  %130 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %131 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 16
  %134 = sub nsw i32 %129, %133
  %135 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %136 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 16
  %137 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 1
  %138 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %142 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 16
  store i32 2, i32* %11, align 4
  br label %143

143:                                              ; preds = %98, %70
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %146 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32**, i32*** %147, align 8
  %149 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %150 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32*, i32** %148, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %156 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i32 @memcpy(i32* %144, i32* %154, i32 %161)
  %163 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %164 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 16
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %143
  %168 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @gnttab_batch_copy(%struct.gnttab_copy* %168, i32 %169)
  %171 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 0
  %172 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GNTST_okay, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %185, label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = sub i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [2 x %struct.gnttab_copy], [2 x %struct.gnttab_copy]* %12, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @GNTST_okay, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %176, %167
  %186 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %186, i32* %5, align 4
  br label %220

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %143
  br label %189

189:                                              ; preds = %206, %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %8, align 4
  %192 = icmp ne i32 %190, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %201 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %199, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %205, i32* %5, align 4
  br label %220

206:                                              ; preds = %193
  br label %189

207:                                              ; preds = %189
  %208 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %209 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = sext i32 %214 to i64
  %216 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %217 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  store i64 %215, i64* %218, align 8
  %219 = load i32, i32* @XEN_NETIF_CTRL_STATUS_SUCCESS, align 4
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %207, %204, %185, %68
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @virt_to_gfn(i32*) #2

declare dso_local i32 @xen_offset_in_page(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @gnttab_batch_copy(%struct.gnttab_copy*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
