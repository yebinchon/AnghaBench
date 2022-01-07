; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i8* }
%struct.super_block = type { i32 }
%struct.bfs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@BFS_ROOT_INO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Bad inode number %s:%08lx\0A\00", align 1
@BFS_INODES_PER_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to read inode %s:%08lx\0A\00", align 1
@BFS_VDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@bfs_dir_inops = common dso_local global i32 0, align 4
@bfs_dir_operations = common dso_local global i32 0, align 4
@BFS_VREG = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@bfs_file_inops = common dso_local global i32 0, align 4
@bfs_file_operations = common dso_local global i32 0, align 4
@bfs_aops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @bfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfs_inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.inode* @iget_locked(%struct.super_block* %11, i64 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %3, align 8
  br label %221

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %28, %struct.inode** %3, align 8
  br label %221

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @BFS_ROOT_INO, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 10
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = call %struct.TYPE_14__* @BFS_SB(%struct.TYPE_13__* %37)
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %34, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %33, %29
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 10
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %48)
  br label %215

50:                                               ; preds = %33
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @BFS_ROOT_INO, align 8
  %53 = sub i64 %51, %52
  %54 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %55 = udiv i64 %53, %54
  %56 = add i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 10
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.buffer_head* @sb_bread(%struct.TYPE_13__* %60, i32 %61)
  store %struct.buffer_head* %62, %struct.buffer_head** %8, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %50
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 10
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %70, i64 %71)
  br label %215

73:                                               ; preds = %50
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @BFS_ROOT_INO, align 8
  %76 = sub i64 %74, %75
  %77 = load i64, i64* @BFS_INODES_PER_BLOCK, align 8
  %78 = urem i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.bfs_inode*
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %83, i64 %85
  store %struct.bfs_inode* %86, %struct.bfs_inode** %6, align 8
  %87 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %88 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = and i32 65535, %90
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %95 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32, i32* @BFS_VDIR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %73
  %101 = load i32, i32* @S_IFDIR, align 4
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 9
  store i32* @bfs_dir_inops, i32** %107, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 8
  store i32* @bfs_dir_operations, i32** %109, align 8
  br label %132

110:                                              ; preds = %73
  %111 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %112 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load i32, i32* @BFS_VREG, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load i32, i32* @S_IFREG, align 4
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 9
  store i32* @bfs_file_inops, i32** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 8
  store i32* @bfs_file_operations, i32** %126, align 8
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 7
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32* @bfs_aops, i32** %130, align 8
  br label %131

131:                                              ; preds = %117, %110
  br label %132

132:                                              ; preds = %131, %100
  %133 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %134 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %137)
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %141 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %148 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = call %struct.TYPE_15__* @BFS_I(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 4
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %156 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = call i32 @i_uid_write(%struct.inode* %154, i32 %158)
  %160 = load %struct.inode*, %struct.inode** %7, align 8
  %161 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %162 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = call i32 @i_gid_write(%struct.inode* %160, i32 %164)
  %166 = load %struct.inode*, %struct.inode** %7, align 8
  %167 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %168 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = call i32 @set_nlink(%struct.inode* %166, i32 %170)
  %172 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %173 = call i32 @BFS_FILESIZE(%struct.bfs_inode* %172)
  %174 = load %struct.inode*, %struct.inode** %7, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 4
  %176 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %177 = call i32 @BFS_FILEBLOCKS(%struct.bfs_inode* %176)
  %178 = load %struct.inode*, %struct.inode** %7, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %181 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @le32_to_cpu(i32 %182)
  %184 = load %struct.inode*, %struct.inode** %7, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %188 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32_to_cpu(i32 %189)
  %191 = load %struct.inode*, %struct.inode** %7, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.bfs_inode*, %struct.bfs_inode** %6, align 8
  %195 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le32_to_cpu(i32 %196)
  %198 = load %struct.inode*, %struct.inode** %7, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.inode*, %struct.inode** %7, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load %struct.inode*, %struct.inode** %7, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store i64 0, i64* %209, align 8
  %210 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %211 = call i32 @brelse(%struct.buffer_head* %210)
  %212 = load %struct.inode*, %struct.inode** %7, align 8
  %213 = call i32 @unlock_new_inode(%struct.inode* %212)
  %214 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %214, %struct.inode** %3, align 8
  br label %221

215:                                              ; preds = %65, %42
  %216 = load %struct.inode*, %struct.inode** %7, align 8
  %217 = call i32 @iget_failed(%struct.inode* %216)
  %218 = load i32, i32* @EIO, align 4
  %219 = sub nsw i32 0, %218
  %220 = call %struct.inode* @ERR_PTR(i32 %219)
  store %struct.inode* %220, %struct.inode** %3, align 8
  br label %221

221:                                              ; preds = %215, %132, %27, %16
  %222 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %222
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_14__* @BFS_SB(%struct.TYPE_13__*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_15__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @BFS_FILESIZE(%struct.bfs_inode*) #1

declare dso_local i32 @BFS_FILEBLOCKS(%struct.bfs_inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
