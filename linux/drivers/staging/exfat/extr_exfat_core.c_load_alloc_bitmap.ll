; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_load_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_load_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32 }
%struct.bmap_dentry_t = type { i32, i32, i32 }
%struct.fs_info_t = type { i64, i32, i32, i32*, i32**, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.dentry_t = type { i32 }
%struct.bd_info_t = type { i64 }
%struct.TYPE_4__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_BITMAP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@FFS_MEMORYERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_FORMATERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_alloc_bitmap(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.chain_t, align 8
  %11 = alloca %struct.bmap_dentry_t*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  %13 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.fs_info_t* %16, %struct.fs_info_t** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.bd_info_t* %19, %struct.bd_info_t** %13, align 8
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %186, %1
  %26 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @CLUSTER_32(i32 -1)
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %187

30:                                               ; preds = %25
  %31 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %32 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %187

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %174, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %40 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %177

43:                                               ; preds = %37
  %44 = load %struct.super_block*, %struct.super_block** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @get_entry_in_dir(%struct.super_block* %44, %struct.chain_t* %10, i32 %45, i32* null)
  %47 = inttoptr i64 %46 to %struct.bmap_dentry_t*
  store %struct.bmap_dentry_t* %47, %struct.bmap_dentry_t** %11, align 8
  %48 = load %struct.bmap_dentry_t*, %struct.bmap_dentry_t** %11, align 8
  %49 = icmp ne %struct.bmap_dentry_t* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %51, i32* %2, align 4
  br label %189

52:                                               ; preds = %43
  %53 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %54 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %56, align 8
  %58 = load %struct.bmap_dentry_t*, %struct.bmap_dentry_t** %11, align 8
  %59 = bitcast %struct.bmap_dentry_t* %58 to %struct.dentry_t*
  %60 = call i64 %57(%struct.dentry_t* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @TYPE_UNUSED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %177

65:                                               ; preds = %52
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @TYPE_BITMAP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %174

70:                                               ; preds = %65
  %71 = load %struct.bmap_dentry_t*, %struct.bmap_dentry_t** %11, align 8
  %72 = getelementptr inbounds %struct.bmap_dentry_t, %struct.bmap_dentry_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %173

75:                                               ; preds = %70
  %76 = load %struct.bmap_dentry_t*, %struct.bmap_dentry_t** %11, align 8
  %77 = getelementptr inbounds %struct.bmap_dentry_t, %struct.bmap_dentry_t* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @GET32_A(i32 %78)
  %80 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %81 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.bmap_dentry_t*, %struct.bmap_dentry_t** %11, align 8
  %83 = getelementptr inbounds %struct.bmap_dentry_t, %struct.bmap_dentry_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @GET64_A(i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub nsw i64 %86, 1
  %88 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %89 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = ashr i64 %87, %90
  %92 = add nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %97 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32** @kmalloc_array(i32 %98, i32 8, i32 %99)
  %101 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %102 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %101, i32 0, i32 4
  store i32** %100, i32*** %102, align 8
  %103 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %104 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %103, i32 0, i32 4
  %105 = load i32**, i32*** %104, align 8
  %106 = icmp ne i32** %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %75
  %108 = load i32, i32* @FFS_MEMORYERR, align 4
  store i32 %108, i32* %2, align 4
  br label %189

109:                                              ; preds = %75
  %110 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %111 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @START_SECTOR(i32 %112)
  store i64 %113, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %166, %109
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %117 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %169

120:                                              ; preds = %114
  %121 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %122 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %121, i32 0, i32 4
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  store i32* null, i32** %126, align 8
  %127 = load %struct.super_block*, %struct.super_block** %3, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %133 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %132, i32 0, i32 4
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = call i32 @sector_read(%struct.super_block* %127, i64 %131, i32** %137, i32 1)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @FFS_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %147, %142
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %149 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %148, i32 0, i32 4
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32*, i32** %150, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @brelse(i32* %155)
  br label %143

157:                                              ; preds = %143
  %158 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %159 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = call i32 @kfree(i32** %160)
  %162 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %163 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %162, i32 0, i32 4
  store i32** null, i32*** %163, align 8
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %189

165:                                              ; preds = %120
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %114

169:                                              ; preds = %114
  %170 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %171 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %170, i32 0, i32 3
  store i32* null, i32** %171, align 8
  %172 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %172, i32* %2, align 4
  br label %189

173:                                              ; preds = %70
  br label %174

174:                                              ; preds = %173, %69
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %37

177:                                              ; preds = %64, %37
  %178 = load %struct.super_block*, %struct.super_block** %3, align 8
  %179 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %182 = call i64 @FAT_read(%struct.super_block* %178, i64 %180, i64* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %185, i32* %2, align 4
  br label %189

186:                                              ; preds = %177
  br label %25

187:                                              ; preds = %35, %25
  %188 = load i32, i32* @FFS_FORMATERR, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %184, %169, %157, %107, %50
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @GET32_A(i32) #1

declare dso_local i64 @GET64_A(i32) #1

declare dso_local i32** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @START_SECTOR(i32) #1

declare dso_local i32 @sector_read(%struct.super_block*, i64, i32**, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
