; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_compacted_load_cluster_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_compacted_load_cluster_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.erofs_inode = type { i32, i32, i64, i64, i32 }

@EROFS_BLKSIZ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Z_EROFS_ADVISE_COMPACTED_2B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i64)* @compacted_load_cluster_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compacted_load_cluster_from_disk(%struct.z_erofs_maprecorder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_maprecorder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.erofs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %17 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %16, i32 0, i32 1
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %19)
  store %struct.erofs_inode* %20, %struct.erofs_inode** %7, align 8
  %21 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %22 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @EROFS_I_SB(%struct.inode* %24)
  %26 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %27 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @iloc(i32 %25, i32 %28)
  %30 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %31 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %35 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @ALIGN(i64 %37, i32 8)
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EROFS_BLKSIZ, align 4
  %46 = call i32 @DIV_ROUND_UP(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 12
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %138

52:                                               ; preds = %2
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp uge i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %138

60:                                               ; preds = %52
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %63 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = srem i32 %64, 32
  %66 = sub nsw i32 32, %65
  %67 = sdiv i32 %66, 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %60
  %72 = load %struct.erofs_inode*, %struct.erofs_inode** %7, align 8
  %73 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @Z_EROFS_ADVISE_COMPACTED_2B, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @rounddown(i32 %81, i32 16)
  store i32 %82, i32* %12, align 4
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 2, i32* %13, align 4
  br label %114

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = mul i32 %92, 4
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 1, i32* %13, align 4
  br label %114

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  %107 = mul i32 %106, 2
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %5, align 8
  store i32 2, i32* %13, align 4
  br label %114

114:                                              ; preds = %105, %104, %90
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* %13, align 4
  %117 = shl i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = mul i64 %115, %118
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  %124 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @erofs_blknr(i32 %125)
  %127 = call i32 @z_erofs_reload_indexes(%struct.z_erofs_maprecorder* %124, i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %114
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %3, align 4
  br label %138

132:                                              ; preds = %114
  %133 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @erofs_blkoff(i32 %135)
  %137 = call i32 @unpack_compacted_index(%struct.z_erofs_maprecorder* %133, i32 %134, i32 %136)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %130, %57, %49
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i64 @iloc(i32, i32) #1

declare dso_local i32 @EROFS_I_SB(%struct.inode*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @z_erofs_reload_indexes(%struct.z_erofs_maprecorder*, i32) #1

declare dso_local i32 @erofs_blknr(i32) #1

declare dso_local i32 @unpack_compacted_index(%struct.z_erofs_maprecorder*, i32, i32) #1

declare dso_local i32 @erofs_blkoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
