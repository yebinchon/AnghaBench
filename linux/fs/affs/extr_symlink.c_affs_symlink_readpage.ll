; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_symlink.c_affs_symlink_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_symlink.c_affs_symlink_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.slink_front = type { i8* }
%struct.affs_sb_info = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"get_link(ino=%lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @affs_symlink_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_symlink_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.slink_front*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.affs_sb_info*, align 8
  %15 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i8* @page_address(%struct.page* %21)
  store i8* %22, i8** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.buffer_head* @affs_bread(i32 %29, i32 %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %6, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %190

37:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.slink_front*
  store %struct.slink_front* %41, %struct.slink_front** %9, align 8
  store i8 0, i8* %13, align 1
  %42 = load %struct.slink_front*, %struct.slink_front** %9, align 8
  %43 = getelementptr inbounds %struct.slink_front, %struct.slink_front* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strchr(i8* %44, i8 signext 58)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %131

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.affs_sb_info* @AFFS_SB(i32 %50)
  store %struct.affs_sb_info* %51, %struct.affs_sb_info** %14, align 8
  %52 = load %struct.affs_sb_info*, %struct.affs_sb_info** %14, align 8
  %53 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.affs_sb_info*, %struct.affs_sb_info** %14, align 8
  %56 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.affs_sb_info*, %struct.affs_sb_info** %14, align 8
  %61 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %63 ]
  store i8* %65, i8** %15, align 8
  br label %66

66:                                               ; preds = %79, %64
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 1023
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %69, %66
  %78 = phi i1 [ false, %66 ], [ %76, %69 ]
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = load i8, i8* %12, align 1
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  br label %66

86:                                               ; preds = %77
  %87 = load %struct.affs_sb_info*, %struct.affs_sb_info** %14, align 8
  %88 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %105, %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 1023
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.slink_front*, %struct.slink_front** %9, align 8
  %95 = getelementptr inbounds %struct.slink_front, %struct.slink_front* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 58
  br label %103

103:                                              ; preds = %93, %90
  %104 = phi i1 [ false, %90 ], [ %102, %93 ]
  br i1 %104, label %105, label %119

105:                                              ; preds = %103
  %106 = load %struct.slink_front*, %struct.slink_front** %9, align 8
  %107 = getelementptr inbounds %struct.slink_front, %struct.slink_front* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %113, i8* %118, align 1
  br label %90

119:                                              ; preds = %103
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 1023
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 47, i8* %127, align 1
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  store i8 47, i8* %13, align 1
  br label %131

131:                                              ; preds = %128, %37
  br label %132

132:                                              ; preds = %169, %131
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 1023
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.slink_front*, %struct.slink_front** %9, align 8
  %137 = getelementptr inbounds %struct.slink_front, %struct.slink_front* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %12, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %135, %132
  %146 = phi i1 [ false, %132 ], [ %144, %135 ]
  br i1 %146, label %147, label %179

147:                                              ; preds = %145
  %148 = load i8, i8* %12, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 47
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load i8, i8* %13, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 47
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 1020
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 46, i8* %163, align 1
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  store i8 46, i8* %168, align 1
  br label %169

169:                                              ; preds = %158, %155, %151, %147
  %170 = load i8, i8* %12, align 1
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  store i8 %170, i8* %175, align 1
  %176 = load i8, i8* %12, align 1
  store i8 %176, i8* %13, align 1
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %132

179:                                              ; preds = %145
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %185 = call i32 @affs_brelse(%struct.buffer_head* %184)
  %186 = load %struct.page*, %struct.page** %5, align 8
  %187 = call i32 @SetPageUptodate(%struct.page* %186)
  %188 = load %struct.page*, %struct.page** %5, align 8
  %189 = call i32 @unlock_page(%struct.page* %188)
  store i32 0, i32* %3, align 4
  br label %197

190:                                              ; preds = %36
  %191 = load %struct.page*, %struct.page** %5, align 8
  %192 = call i32 @SetPageError(%struct.page* %191)
  %193 = load %struct.page*, %struct.page** %5, align 8
  %194 = call i32 @unlock_page(%struct.page* %193)
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %190, %179
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.affs_sb_info* @AFFS_SB(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
