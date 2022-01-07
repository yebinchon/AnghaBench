; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_map_blocks_flatmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_map_blocks_flatmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.erofs_map_blocks = type { i64, i64, i64, i64, i32 }
%struct.erofs_inode = type { i64, i64, i64, i32, i64 }
%struct.erofs_sb_info = type { i32 }

@EROFS_INODE_FLAT_INLINE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EROFS_MAP_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"inline data cross block boundary @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EROFS_MAP_META = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"internal error @ nid: %llu (size %llu), m_la 0x%llx\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.erofs_map_blocks*, i32)* @erofs_map_blocks_flatmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_map_blocks_flatmode(%struct.inode* %0, %struct.erofs_map_blocks* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.erofs_map_blocks*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.erofs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.erofs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.erofs_map_blocks* %1, %struct.erofs_map_blocks** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %15 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %17)
  store %struct.erofs_inode* %18, %struct.erofs_inode** %11, align 8
  %19 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %20 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EROFS_INODE_FLAT_INLINE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @trace_erofs_map_blocks_flatmode_enter(%struct.inode* %25, %struct.erofs_map_blocks* %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = call i64 @DIV_ROUND_UP(i64 %31, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %34, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %45 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %44, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %47 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %154

48:                                               ; preds = %3
  %49 = load i32, i32* @EROFS_MAP_MAPPED, align 4
  %50 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %51 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @blknr_to_addr(i64 %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %58 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @blknr_to_addr(i64 %59)
  %61 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %62 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %66 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @blknr_to_addr(i64 %67)
  %69 = load i64, i64* %10, align 8
  %70 = sub nsw i64 %68, %69
  %71 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %72 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %153

73:                                               ; preds = %48
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %135

76:                                               ; preds = %73
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.erofs_sb_info* @EROFS_SB(i32 %79)
  store %struct.erofs_sb_info* %80, %struct.erofs_sb_info** %13, align 8
  %81 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %13, align 8
  %82 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %83 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @iloc(%struct.erofs_sb_info* %81, i32 %84)
  %86 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %87 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %91 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %95 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @erofs_blkoff(i64 %96)
  %98 = add nsw i64 %93, %97
  %99 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %100 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %107 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %109 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @erofs_blkoff(i64 %110)
  %112 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %113 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %76
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %123 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, i32, ...) @erofs_err(i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = call i32 @DBG_BUGON(i32 1)
  %127 = load i32, i32* @EFSCORRUPTED, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %160

129:                                              ; preds = %76
  %130 = load i32, i32* @EROFS_MAP_META, align 4
  %131 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %132 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %152

135:                                              ; preds = %73
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.erofs_inode*, %struct.erofs_inode** %11, align 8
  %140 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %146 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32, i8*, i32, ...) @erofs_err(i32 %138, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %141, i64 %144, i64 %147)
  %149 = call i32 @DBG_BUGON(i32 1)
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %160

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %152, %56
  br label %154

154:                                              ; preds = %153, %43
  %155 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %156 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %159 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %135, %118
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @trace_erofs_map_blocks_flatmode_exit(%struct.inode* %161, %struct.erofs_map_blocks* %162, i32 %163, i32 0)
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @trace_erofs_map_blocks_flatmode_enter(%struct.inode*, %struct.erofs_map_blocks*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @blknr_to_addr(i64) #1

declare dso_local %struct.erofs_sb_info* @EROFS_SB(i32) #1

declare dso_local i64 @iloc(%struct.erofs_sb_info*, i32) #1

declare dso_local i64 @erofs_blkoff(i64) #1

declare dso_local i32 @erofs_err(i32, i8*, i32, ...) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @trace_erofs_map_blocks_flatmode_exit(%struct.inode*, %struct.erofs_map_blocks*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
