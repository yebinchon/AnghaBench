; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_map_grant_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_map_grant_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { i32, i32, %struct.TYPE_7__*, i32*, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@use_ptemod = common dso_local global i64 0, align 8
@GNTMAP_host_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"map %d+%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gntdev_map_grant_pages(%struct.gntdev_grant_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gntdev_grant_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gntdev_grant_map* %0, %struct.gntdev_grant_map** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @use_ptemod, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %78, label %10

10:                                               ; preds = %1
  %11 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %12 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %11, i32 0, i32 7
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %241

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %23 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %28 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @page_to_pfn(i32 %33)
  %35 = call i64 @pfn_to_kaddr(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %37 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %36, i32 0, i32 7
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %44 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %47 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %46, i32 0, i32 9
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %55 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %54, i32 0, i32 9
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gnttab_set_map_op(%struct.TYPE_8__* %41, i64 %42, i32 %45, i32 %53, i32 %61)
  %63 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %64 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %71 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gnttab_set_unmap_op(%struct.TYPE_7__* %68, i64 %69, i32 %72, i32 -1)
  br label %74

74:                                               ; preds = %26
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %20

77:                                               ; preds = %20
  br label %150

78:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %146, %78
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %82 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %149

85:                                               ; preds = %79
  %86 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %87 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @page_to_pfn(i32 %92)
  %94 = call i64 @pfn_to_kaddr(i32 %93)
  store i64 %94, i64* %7, align 8
  %95 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %96 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PageHighMem(i32 %101)
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %105 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %104, i32 0, i32 5
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %112 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GNTMAP_host_map, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %117 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %116, i32 0, i32 9
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %125 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %124, i32 0, i32 9
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gnttab_set_map_op(%struct.TYPE_8__* %109, i64 %110, i32 %115, i32 %123, i32 %131)
  %133 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %134 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %133, i32 0, i32 6
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %141 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GNTMAP_host_map, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @gnttab_set_unmap_op(%struct.TYPE_7__* %138, i64 %139, i32 %144, i32 -1)
  br label %146

146:                                              ; preds = %85
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %79

149:                                              ; preds = %79
  br label %150

150:                                              ; preds = %149, %77
  %151 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %152 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %155 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %159 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %158, i32 0, i32 7
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i64, i64* @use_ptemod, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %150
  %164 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %165 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %164, i32 0, i32 5
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  br label %168

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi %struct.TYPE_8__* [ %166, %163 ], [ null, %167 ]
  %170 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %171 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %174 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @gnttab_map_refs(%struct.TYPE_8__* %160, %struct.TYPE_8__* %169, i32* %172, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %241

181:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %236, %181
  %183 = load i32, i32* %4, align 4
  %184 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %185 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %239

188:                                              ; preds = %182
  %189 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %190 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %189, i32 0, i32 7
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %236

201:                                              ; preds = %188
  %202 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %203 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %202, i32 0, i32 7
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %211 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %210, i32 0, i32 2
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  store i32 %209, i32* %216, align 4
  %217 = load i64, i64* @use_ptemod, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %201
  %220 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %221 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %220, i32 0, i32 5
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %3, align 8
  %229 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %228, i32 0, i32 6
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  store i32 %227, i32* %234, align 4
  br label %235

235:                                              ; preds = %219, %201
  br label %236

236:                                              ; preds = %235, %198
  %237 = load i32, i32* %4, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %4, align 4
  br label %182

239:                                              ; preds = %182
  %240 = load i32, i32* %5, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %239, %179, %18
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i64 @pfn_to_kaddr(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @gnttab_set_map_op(%struct.TYPE_8__*, i64, i32, i32, i32) #1

declare dso_local i32 @gnttab_set_unmap_op(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageHighMem(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @gnttab_map_refs(%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
