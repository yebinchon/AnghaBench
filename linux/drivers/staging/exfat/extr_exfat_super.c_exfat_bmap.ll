; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i64, i8 }
%struct.exfat_sb_info = type { %struct.bd_info_t, %struct.fs_info_t }
%struct.bd_info_t = type { i32 }
%struct.fs_info_t = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@FAT12 = common dso_local global i64 0, align 8
@FAT16 = common dso_local global i64 0, align 8
@EXFAT_ROOT_INO = common dso_local global i64 0, align 8
@DENTRY_SIZE_BITS = common dso_local global i32 0, align 4
@FFS_FULL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, i64*, i32*)* @exfat_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_bmap(%struct.inode* %0, i32 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.exfat_sb_info*, align 8
  %14 = alloca %struct.fs_info_t*, align 8
  %15 = alloca %struct.bd_info_t*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %12, align 8
  %26 = load %struct.super_block*, %struct.super_block** %12, align 8
  %27 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %26)
  store %struct.exfat_sb_info* %27, %struct.exfat_sb_info** %13, align 8
  %28 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %13, align 8
  %29 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %28, i32 0, i32 1
  store %struct.fs_info_t* %29, %struct.fs_info_t** %14, align 8
  %30 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %13, align 8
  %31 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %30, i32 0, i32 0
  store %struct.bd_info_t* %31, %struct.bd_info_t** %15, align 8
  %32 = load %struct.super_block*, %struct.super_block** %12, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  %35 = load %struct.super_block*, %struct.super_block** %12, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  store i8 %37, i8* %17, align 1
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load i64*, i64** %10, align 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %41 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FAT12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %5
  %46 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %47 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FAT16, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %45, %5
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %60 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bd_info_t*, %struct.bd_info_t** %15, align 8
  %63 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %66 = sub nsw i32 %64, %65
  %67 = ashr i32 %61, %66
  %68 = icmp slt i32 %58, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i64*, i64** %10, align 8
  store i64 1, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %57
  store i32 0, i32* %6, align 4
  br label %153

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call i64 @i_size_read(%struct.inode* %80)
  %82 = load i64, i64* %16, align 8
  %83 = sub i64 %82, 1
  %84 = add i64 %81, %83
  %85 = load i8, i8* %17, align 1
  %86 = zext i8 %85 to i32
  %87 = zext i32 %86 to i64
  %88 = lshr i64 %84, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %153

98:                                               ; preds = %93
  br label %101

99:                                               ; preds = %79
  %100 = load i32*, i32** %11, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %104 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %102, %105
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %109 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %107, %111
  store i32 %112, i32* %21, align 4
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = call i64 @i_size_read(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = call %struct.TYPE_4__* @EXFAT_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @ffsMapCluster(%struct.inode* %119, i32 %120, i32* %22)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %101
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @FFS_FULL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ENOSPC, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %153

131:                                              ; preds = %124
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %153

134:                                              ; preds = %101
  %135 = load i32, i32* %22, align 4
  %136 = call i32 @CLUSTER_32(i32 -1)
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i32, i32* %22, align 4
  %140 = call i32 @START_SECTOR(i32 %139)
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %145 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = load i64*, i64** %10, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %138, %134
  br label %152

152:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %131, %128, %97, %77
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @ffsMapCluster(%struct.inode*, i32, i32*) #1

declare dso_local i32 @CLUSTER_32(i32) #1

declare dso_local i32 @START_SECTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
