; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.cramfs_inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@read_mutex = common dso_local global i32 0, align 4
@CRAMFS_FLAG_SORTED_DIRS = common dso_local global i32 0, align 4
@CRAMFS_MAXPATHLEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @cramfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @cramfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cramfs_inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %15 = call i32 @mutex_lock(i32* @read_mutex)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_4__* @CRAMFS_SB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRAMFS_FLAG_SORTED_DIRS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %135, %120, %109, %81, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %136

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @OFFSET(%struct.inode* %31)
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %40 = add i64 4, %39
  %41 = call %struct.cramfs_inode* @cramfs_read(i32 %37, i32 %38, i64 %40)
  store %struct.cramfs_inode* %41, %struct.cramfs_inode** %10, align 8
  %42 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %43 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %42, i64 1
  %44 = bitcast %struct.cramfs_inode* %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %136

61:                                               ; preds = %47, %30
  %62 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %63 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 2
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 4, %67
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 3
  %78 = and i32 %77, -4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %24

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.inode* @ERR_PTR(i32 %88)
  store %struct.inode* %89, %struct.inode** %8, align 8
  br label %137

90:                                               ; preds = %83
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  br label %83

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.dentry*, %struct.dentry** %5, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %24

110:                                              ; preds = %102
  %111 = load %struct.dentry*, %struct.dentry** %5, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @memcmp(i8* %114, i8* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %24

121:                                              ; preds = %110
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call %struct.inode* @get_cramfs_inode(i32 %127, %struct.cramfs_inode* %128, i32 %129)
  store %struct.inode* %130, %struct.inode** %8, align 8
  br label %136

131:                                              ; preds = %121
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %136

135:                                              ; preds = %131
  br label %24

136:                                              ; preds = %134, %124, %60, %24
  br label %137

137:                                              ; preds = %136, %86
  %138 = call i32 @mutex_unlock(i32* @read_mutex)
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = load %struct.dentry*, %struct.dentry** %5, align 8
  %141 = call %struct.dentry* @d_splice_alias(%struct.inode* %139, %struct.dentry* %140)
  ret %struct.dentry* %141
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @CRAMFS_SB(i32) #1

declare dso_local i32 @OFFSET(%struct.inode*) #1

declare dso_local %struct.cramfs_inode* @cramfs_read(i32, i32, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.inode* @get_cramfs_inode(i32, %struct.cramfs_inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
