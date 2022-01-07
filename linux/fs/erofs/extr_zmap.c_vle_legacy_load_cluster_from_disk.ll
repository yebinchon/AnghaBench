; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_legacy_load_cluster_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_legacy_load_cluster_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i64, i32, i32, i32, i8**, %struct.z_erofs_vle_decompressed_index*, %struct.inode* }
%struct.z_erofs_vle_decompressed_index = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.inode = type { i32 }
%struct.erofs_inode = type { i32, i64, i64, i32 }

@Z_EROFS_VLE_DI_CLUSTER_TYPE_BIT = common dso_local global i32 0, align 4
@Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i64)* @vle_legacy_load_cluster_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vle_legacy_load_cluster_from_disk(%struct.z_erofs_maprecorder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_maprecorder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.erofs_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.z_erofs_vle_decompressed_index*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %15 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %14, i32 0, i32 6
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %17)
  store %struct.erofs_inode* %18, %struct.erofs_inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @EROFS_I_SB(%struct.inode* %19)
  %21 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %22 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @iloc(i32 %20, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %27 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %31 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i64 @Z_EROFS_VLE_LEGACY_INDEX_ALIGN(i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = mul i64 %35, 24
  %37 = add i64 %34, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @erofs_blknr(i64 %39)
  %41 = call i32 @z_erofs_reload_indexes(%struct.z_erofs_maprecorder* %38, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %3, align 4
  br label %122

46:                                               ; preds = %2
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %49 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %51 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %50, i32 0, i32 5
  %52 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @erofs_blkoff(i64 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %52, i64 %55
  store %struct.z_erofs_vle_decompressed_index* %56, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %57 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %58 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @Z_EROFS_VLE_DI_CLUSTER_TYPE_BIT, align 4
  %64 = lshr i32 %62, %63
  %65 = load i32, i32* @Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %64, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  switch i32 %69, label %114 [
    i32 129, label %70
    i32 128, label %99
    i32 130, label %99
  ]

70:                                               ; preds = %46
  %71 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %72 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 1, %73
  %75 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %76 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %78 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %85 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  %88 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %89 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le16_to_cpu(i32 %93)
  %95 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %96 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %95, i32 0, i32 4
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* %94, i8** %98, align 8
  br label %118

99:                                               ; preds = %46, %46
  %100 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %101 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @le16_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %106 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.z_erofs_vle_decompressed_index*, %struct.z_erofs_vle_decompressed_index** %10, align 8
  %108 = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, %struct.z_erofs_vle_decompressed_index* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %113 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  br label %118

114:                                              ; preds = %46
  %115 = call i32 @DBG_BUGON(i32 1)
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %122

118:                                              ; preds = %99, %70
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %121 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %114, %44
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i64 @iloc(i32, i32) #1

declare dso_local i32 @EROFS_I_SB(%struct.inode*) #1

declare dso_local i64 @Z_EROFS_VLE_LEGACY_INDEX_ALIGN(i64) #1

declare dso_local i32 @z_erofs_reload_indexes(%struct.z_erofs_maprecorder*, i32) #1

declare dso_local i32 @erofs_blknr(i64) #1

declare dso_local i32 @erofs_blkoff(i64) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
