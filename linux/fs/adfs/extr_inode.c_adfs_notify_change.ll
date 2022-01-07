; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_notify_change.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_4__, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adfs_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.iattr*, %struct.iattr** %4, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load %struct.iattr*, %struct.iattr** %4, align 8
  %19 = call i32 @setattr_prepare(%struct.dentry* %17, %struct.iattr* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ATTR_UID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.iattr*, %struct.iattr** %4, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uid_eq(i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %24, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ATTR_GID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.iattr*, %struct.iattr** %4, align 8
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gid_eq(i32 %42, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39, %24
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %39, %34
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %137

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ATTR_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load %struct.iattr*, %struct.iattr** %4, align 8
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @truncate_setsize(%struct.inode* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ATTR_MTIME, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load %struct.iattr*, %struct.iattr** %4, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 3
  %77 = bitcast %struct.TYPE_4__* %74 to i8*
  %78 = bitcast %struct.TYPE_4__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.iattr*, %struct.iattr** %4, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @adfs_unix2adfs_time(%struct.inode* %79, i32 %83)
  br label %85

85:                                               ; preds = %72, %67
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ATTR_ATIME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.iattr*, %struct.iattr** %4, align 8
  %92 = getelementptr inbounds %struct.iattr, %struct.iattr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ATTR_CTIME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.iattr*, %struct.iattr** %4, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @ATTR_MODE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.super_block*, %struct.super_block** %6, align 8
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = call i32 @adfs_mode2atts(%struct.super_block* %113, %struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.super_block*, %struct.super_block** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = call i32 @adfs_atts2mode(%struct.super_block* %119, %struct.inode* %120)
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %112, %107
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ATTR_SIZE, align 4
  %127 = load i32, i32* @ATTR_MTIME, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ATTR_MODE, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %125, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.inode*, %struct.inode** %5, align 8
  %135 = call i32 @mark_inode_dirty(%struct.inode* %134)
  br label %136

136:                                              ; preds = %133, %124
  br label %137

137:                                              ; preds = %136, %55
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local %struct.TYPE_5__* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adfs_unix2adfs_time(%struct.inode*, i32) #1

declare dso_local i32 @adfs_mode2atts(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ADFS_I(%struct.inode*) #1

declare dso_local i32 @adfs_atts2mode(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
