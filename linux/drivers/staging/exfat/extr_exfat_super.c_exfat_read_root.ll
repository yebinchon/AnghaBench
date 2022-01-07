; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_read_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_read_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32*, i32, i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.exfat_sb_info = type { %struct.TYPE_7__, %struct.fs_info_t }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fs_info_t = type { i32, i64 }
%struct.dir_entry_t = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@TYPE_DIR = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@exfat_dir_inode_operations = common dso_local global i32 0, align 4
@exfat_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @exfat_read_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_read_root(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.exfat_sb_info*, align 8
  %5 = alloca %struct.fs_info_t*, align 8
  %6 = alloca %struct.dir_entry_t, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 10
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %10)
  store %struct.exfat_sb_info* %11, %struct.exfat_sb_info** %4, align 8
  %12 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %4, align 8
  %13 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %12, i32 0, i32 1
  store %struct.fs_info_t* %13, %struct.fs_info_t** %5, align 8
  %14 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %15 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i64 %16, i64* %21, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %32 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  store i64 %33, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @TYPE_DIR, align 4
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 -1, i32* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = call i32 @ffsReadStat(%struct.inode* %58, %struct.dir_entry_t* %6)
  %60 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %4, align 8
  %67 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = call i32 @INC_IVERSION(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 7
  store i64 0, i64* %75, align 8
  %76 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %4, align 8
  %77 = load i32, i32* @ATTR_SUBDIR, align 4
  %78 = call i32 @exfat_make_mode(%struct.exfat_sb_info* %76, i32 %77, i32 511)
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 5
  store i32* @exfat_dir_inode_operations, i32** %82, align 8
  %83 = load %struct.inode*, %struct.inode** %2, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  store i32* @exfat_dir_operations, i32** %84, align 8
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @i_size_write(%struct.inode* %85, i32 %87)
  %89 = load %struct.inode*, %struct.inode** %2, align 8
  %90 = call i32 @i_size_read(%struct.inode* %89)
  %91 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %92 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = add nsw i32 %90, %94
  %96 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %97 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = xor i32 %99, -1
  %101 = and i32 %95, %100
  %102 = ashr i32 %101, 9
  %103 = load %struct.inode*, %struct.inode** %2, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %106 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 32
  %110 = or i32 %109, -1
  %111 = load %struct.inode*, %struct.inode** %2, align 8
  %112 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %2, align 8
  %115 = call i32 @i_size_read(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  %117 = call %struct.TYPE_8__* @EXFAT_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.inode*, %struct.inode** %2, align 8
  %120 = load i32, i32* @ATTR_SUBDIR, align 4
  %121 = call i32 @exfat_save_attr(%struct.inode* %119, i32 %120)
  %122 = load %struct.inode*, %struct.inode** %2, align 8
  %123 = call i32 @current_time(%struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %2, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.inode*, %struct.inode** %2, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %2, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 3
  store i32 %123, i32* %129, align 4
  %130 = load %struct.inode*, %struct.inode** %2, align 8
  %131 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 2
  %134 = call i32 @set_nlink(%struct.inode* %130, i64 %133)
  ret i32 0
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_8__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @ffsReadStat(%struct.inode*, %struct.dir_entry_t*) #1

declare dso_local i32 @INC_IVERSION(%struct.inode*) #1

declare dso_local i32 @exfat_make_mode(%struct.exfat_sb_info*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @exfat_save_attr(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
