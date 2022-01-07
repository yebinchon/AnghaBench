; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_stat2inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_stat2inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i8*, i32, i32, i32, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.super_block = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32, i32 }
%struct.v9fs_inode = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%13s %u\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"HARDLINKCOUNT\00", align 1
@S_IALLUGO = common dso_local global i32 0, align 4
@V9FS_STAT2INODE_KEEP_ISIZE = common dso_local global i32 0, align 4
@V9FS_INO_INVALID_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_stat2inode(%struct.p9_wstat* %0, %struct.inode* %1, %struct.super_block* %2, i32 %3) #0 {
  %5 = alloca %struct.p9_wstat*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca [14 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.v9fs_session_info*, align 8
  %14 = alloca %struct.v9fs_inode*, align 8
  store %struct.p9_wstat* %0, %struct.p9_wstat** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  store %struct.v9fs_session_info* %17, %struct.v9fs_session_info** %13, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %18)
  store %struct.v9fs_inode* %19, %struct.v9fs_inode** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @set_nlink(%struct.inode* %20, i32 1)
  %22 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %23 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %29 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %35 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %41 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %46 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %51 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %4
  %54 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %55 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %60 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISREG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISDIR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %70, %64
  %77 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %78 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %82 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %80
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %90 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %91 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlcpy(i8* %89, i8* %92, i32 32)
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [14 x i8], [14 x i8]* %11, i64 0, i64 0
  %96 = call i32 @sscanf(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %95, i32* %12)
  %97 = getelementptr inbounds [14 x i8], [14 x i8]* %11, i64 0, i64 0
  %98 = call i32 @strncmp(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @set_nlink(%struct.inode* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %88
  br label %105

105:                                              ; preds = %104, %80, %76
  br label %106

106:                                              ; preds = %105, %70
  %107 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %108 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %109 = call i32 @p9mode2perm(%struct.v9fs_session_info* %107, %struct.p9_wstat* %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @S_IALLUGO, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @V9FS_STAT2INODE_KEEP_ISIZE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %106
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %128 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @v9fs_i_size_write(%struct.inode* %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %106
  %132 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %133 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 512
  %136 = sub nsw i32 %135, 1
  %137 = ashr i32 %136, 9
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @V9FS_INO_INVALID_ATTR, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %143 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  ret void
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @p9mode2perm(%struct.v9fs_session_info*, %struct.p9_wstat*) #1

declare dso_local i32 @v9fs_i_size_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
