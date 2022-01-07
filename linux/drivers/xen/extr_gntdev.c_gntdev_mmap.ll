; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.gntdev_priv* }
%struct.gntdev_priv = type { i64, i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64, i64, %struct.gntdev_grant_map*, i32* }
%struct.gntdev_grant_map = type { i32, i32, %struct.vm_area_struct*, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"map %d+%d at %lx (pgoff %lx)\0A\00", align 1
@use_ptemod = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Huh? Other mm?\0A\00", align 1
@gntdev_vmops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@GNTMAP_readonly = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@find_grant_ptes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"find_grant_ptes() failure.\0A\00", align 1
@XENFEAT_gnttab_map_avail_bits = common dso_local global i32 0, align 4
@set_grant_ptes_as_special = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @gntdev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.gntdev_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gntdev_grant_map*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.gntdev_priv*, %struct.gntdev_priv** %12, align 8
  store %struct.gntdev_priv* %13, %struct.gntdev_priv** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = call i32 @vma_pages(%struct.vm_area_struct* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VM_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VM_SHARED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %232

37:                                               ; preds = %27, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i64 %42, i32 %45)
  %47 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %48 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.gntdev_grant_map* @gntdev_find_map_index(%struct.gntdev_priv* %50, i32 %51, i32 %52)
  store %struct.gntdev_grant_map* %53, %struct.gntdev_grant_map** %9, align 8
  %54 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %55 = icmp ne %struct.gntdev_grant_map* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  br label %207

57:                                               ; preds = %37
  %58 = load i64, i64* @use_ptemod, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %62 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %61, i32 0, i32 2
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %62, align 8
  %64 = icmp ne %struct.vm_area_struct* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %207

66:                                               ; preds = %60, %57
  %67 = load i64, i64* @use_ptemod, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %71 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %207

79:                                               ; preds = %69, %66
  %80 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %81 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %80, i32 0, i32 5
  %82 = call i32 @refcount_inc(i32* %81)
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 6
  store i32* @gntdev_vmops, i32** %84, align 8
  %85 = load i32, i32* @VM_DONTEXPAND, align 4
  %86 = load i32, i32* @VM_DONTDUMP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @VM_MIXEDMAP, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i64, i64* @use_ptemod, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load i32, i32* @VM_DONTCOPY, align 4
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %79
  %103 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 5
  store %struct.gntdev_grant_map* %103, %struct.gntdev_grant_map** %105, align 8
  %106 = load i64, i64* @use_ptemod, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %110 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %111 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %110, i32 0, i32 2
  store %struct.vm_area_struct* %109, %struct.vm_area_struct** %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %114 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @VM_WRITE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %126 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GNTMAP_readonly, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %212

132:                                              ; preds = %124, %117
  br label %150

133:                                              ; preds = %112
  %134 = load i32, i32* @GNTMAP_host_map, align 4
  %135 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %136 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @VM_WRITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %133
  %144 = load i32, i32* @GNTMAP_readonly, align 4
  %145 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %146 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %133
  br label %150

150:                                              ; preds = %149, %132
  %151 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %152 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i64, i64* @use_ptemod, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %150
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %161 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %163 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %169 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %172 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %170, %173
  %175 = load i32, i32* @find_grant_ptes, align 4
  %176 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %177 = call i32 @apply_to_page_range(i64 %164, i64 %167, i64 %174, i32 %175, %struct.gntdev_grant_map* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %156
  %181 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %216

182:                                              ; preds = %156
  br label %183

183:                                              ; preds = %182, %150
  %184 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %185 = call i32 @gntdev_map_grant_pages(%struct.gntdev_grant_map* %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %216

189:                                              ; preds = %183
  %190 = load i64, i64* @use_ptemod, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %189
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %194 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %195 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %198 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @vm_map_pages_zero(%struct.vm_area_struct* %193, i32 %196, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  br label %216

204:                                              ; preds = %192
  br label %206

205:                                              ; preds = %189
  br label %206

206:                                              ; preds = %205, %204
  store i32 0, i32* %3, align 4
  br label %232

207:                                              ; preds = %77, %65, %56
  %208 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %209 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %208, i32 0, i32 1
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %3, align 4
  br label %232

212:                                              ; preds = %131
  %213 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %214 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %213, i32 0, i32 1
  %215 = call i32 @mutex_unlock(i32* %214)
  br label %216

216:                                              ; preds = %212, %203, %188, %180
  %217 = load i64, i64* @use_ptemod, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %221 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %220, i32 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %221, align 8
  %222 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %223 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %224 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @unmap_grant_pages(%struct.gntdev_grant_map* %222, i32 0, i32 %225)
  br label %227

227:                                              ; preds = %219, %216
  %228 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %229 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %9, align 8
  %230 = call i32 @gntdev_put_map(%struct.gntdev_priv* %228, %struct.gntdev_grant_map* %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %227, %207, %206, %34
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gntdev_grant_map* @gntdev_find_map_index(%struct.gntdev_priv*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @apply_to_page_range(i64, i64, i64, i32, %struct.gntdev_grant_map*) #1

declare dso_local i32 @gntdev_map_grant_pages(%struct.gntdev_grant_map*) #1

declare dso_local i32 @vm_map_pages_zero(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @unmap_grant_pages(%struct.gntdev_grant_map*, i32, i32) #1

declare dso_local i32 @gntdev_put_map(%struct.gntdev_priv*, %struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
