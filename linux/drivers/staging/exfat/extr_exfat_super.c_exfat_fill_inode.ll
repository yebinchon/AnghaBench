; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_fill_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i32*, i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32* }
%struct.file_id_t = type { i32 }
%struct.exfat_sb_info = type { %struct.TYPE_4__, %struct.fs_info_t }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fs_info_t = type { i32 }
%struct.dir_entry_t = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i64, i32 }

@ATTR_SUBDIR = common dso_local global i32 0, align 4
@exfat_dir_inode_operations = common dso_local global i32 0, align 4
@exfat_dir_operations = common dso_local global i32 0, align 4
@ATTR_SYMLINK = common dso_local global i32 0, align 4
@exfat_symlink_inode_operations = common dso_local global i32 0, align 4
@exfat_file_inode_operations = common dso_local global i32 0, align 4
@exfat_file_operations = common dso_local global i32 0, align 4
@exfat_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*)* @exfat_fill_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_fill_inode(%struct.inode* %0, %struct.file_id_t* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file_id_t*, align 8
  %5 = alloca %struct.exfat_sb_info*, align 8
  %6 = alloca %struct.fs_info_t*, align 8
  %7 = alloca %struct.dir_entry_t, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.exfat_sb_info* @EXFAT_SB(i32 %10)
  store %struct.exfat_sb_info* %11, %struct.exfat_sb_info** %5, align 8
  %12 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %12, i32 0, i32 1
  store %struct.fs_info_t* %13, %struct.fs_info_t** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.file_id_t*, %struct.file_id_t** %4, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.file_id_t* %17, i32 4)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @ffsReadStat(%struct.inode* %19, %struct.dir_entry_t* %7)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @INC_IVERSION(%struct.inode* %39)
  %41 = call i32 (...) @get_seconds()
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_SUBDIR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %2
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, -2
  store i32 %53, i32* %51, align 8
  %54 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %55 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @exfat_make_mode(%struct.exfat_sb_info* %54, i32 %56, i32 511)
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 7
  store i32* @exfat_dir_inode_operations, i32** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 6
  store i32* @exfat_dir_operations, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @i_size_write(%struct.inode* %64, i32 %66)
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call i32 @i_size_read(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_nlink(%struct.inode* %73, i32 %75)
  br label %138

77:                                               ; preds = %2
  %78 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ATTR_SYMLINK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %89 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @exfat_make_mode(%struct.exfat_sb_info* %88, i32 %90, i32 511)
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 7
  store i32* @exfat_symlink_inode_operations, i32** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @i_size_write(%struct.inode* %96, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @i_size_read(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %137

105:                                              ; preds = %77
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %111 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @exfat_make_mode(%struct.exfat_sb_info* %110, i32 %112, i32 511)
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 8
  store i8* %113, i8** %115, align 8
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 7
  store i32* @exfat_file_inode_operations, i32** %117, align 8
  %118 = load %struct.inode*, %struct.inode** %3, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 6
  store i32* @exfat_file_operations, i32** %119, align 8
  %120 = load %struct.inode*, %struct.inode** %3, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 5
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32* @exfat_aops, i32** %123, align 8
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 5
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %3, align 8
  %129 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @i_size_write(%struct.inode* %128, i32 %130)
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = call i32 @i_size_read(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %134)
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %105, %83
  br label %138

138:                                              ; preds = %137, %49
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @exfat_save_attr(%struct.inode* %139, i32 %141)
  %143 = load %struct.inode*, %struct.inode** %3, align 8
  %144 = call i32 @i_size_read(%struct.inode* %143)
  %145 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %146 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = add nsw i32 %144, %148
  %150 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %151 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = xor i32 %153, -1
  %155 = and i32 %149, %154
  %156 = ashr i32 %155, 9
  %157 = load %struct.inode*, %struct.inode** %3, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 3
  %162 = call i32 @exfat_time_fat2unix(i32* %160, i32* %161)
  %163 = load %struct.inode*, %struct.inode** %3, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 2
  %166 = call i32 @exfat_time_fat2unix(i32* %164, i32* %165)
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %7, i32 0, i32 1
  %170 = call i32 @exfat_time_fat2unix(i32* %168, i32* %169)
  ret i32 0
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.file_id_t*, i32) #1

declare dso_local %struct.TYPE_6__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @ffsReadStat(%struct.inode*, %struct.dir_entry_t*) #1

declare dso_local i32 @INC_IVERSION(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i8* @exfat_make_mode(%struct.exfat_sb_info*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @exfat_save_attr(%struct.inode*, i32) #1

declare dso_local i32 @exfat_time_fat2unix(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
