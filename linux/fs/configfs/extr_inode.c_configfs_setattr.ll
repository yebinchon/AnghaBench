; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, %struct.iattr* }
%struct.iattr = type { i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.configfs_dirent*, %struct.configfs_dirent** %15, align 8
  store %struct.configfs_dirent* %16, %struct.configfs_dirent** %7, align 8
  %17 = load %struct.iattr*, %struct.iattr** %5, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %21 = icmp ne %struct.configfs_dirent* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %162

25:                                               ; preds = %2
  %26 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %27 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %26, i32 0, i32 1
  %28 = load %struct.iattr*, %struct.iattr** %27, align 8
  store %struct.iattr* %28, %struct.iattr** %8, align 8
  %29 = load %struct.iattr*, %struct.iattr** %8, align 8
  %30 = icmp ne %struct.iattr* %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.iattr* @kzalloc(i32 40, i32 %32)
  store %struct.iattr* %33, %struct.iattr** %8, align 8
  %34 = load %struct.iattr*, %struct.iattr** %8, align 8
  %35 = icmp ne %struct.iattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %162

39:                                               ; preds = %31
  %40 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %41 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iattr*, %struct.iattr** %8, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %46 = load %struct.iattr*, %struct.iattr** %8, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %49 = load %struct.iattr*, %struct.iattr** %8, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i8* @current_time(%struct.inode* %51)
  %53 = load %struct.iattr*, %struct.iattr** %8, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iattr*, %struct.iattr** %8, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 3
  store i8* %52, i8** %56, align 8
  %57 = load %struct.iattr*, %struct.iattr** %8, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 4
  store i8* %52, i8** %58, align 8
  %59 = load %struct.iattr*, %struct.iattr** %8, align 8
  %60 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %61 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %60, i32 0, i32 1
  store %struct.iattr* %59, %struct.iattr** %61, align 8
  br label %62

62:                                               ; preds = %39, %25
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = call i32 @simple_setattr(%struct.dentry* %63, %struct.iattr* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %162

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @ATTR_UID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.iattr*, %struct.iattr** %5, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iattr*, %struct.iattr** %8, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @ATTR_GID, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.iattr*, %struct.iattr** %5, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iattr*, %struct.iattr** %8, align 8
  %91 = getelementptr inbounds %struct.iattr, %struct.iattr* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @ATTR_ATIME, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.iattr*, %struct.iattr** %5, align 8
  %99 = getelementptr inbounds %struct.iattr, %struct.iattr* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call i8* @timestamp_truncate(i8* %100, %struct.inode* %101)
  %103 = load %struct.iattr*, %struct.iattr** %8, align 8
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @ATTR_MTIME, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.iattr*, %struct.iattr** %5, align 8
  %112 = getelementptr inbounds %struct.iattr, %struct.iattr* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i8* @timestamp_truncate(i8* %113, %struct.inode* %114)
  %116 = load %struct.iattr*, %struct.iattr** %8, align 8
  %117 = getelementptr inbounds %struct.iattr, %struct.iattr* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %110, %105
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ATTR_CTIME, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.iattr*, %struct.iattr** %5, align 8
  %125 = getelementptr inbounds %struct.iattr, %struct.iattr* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = call i8* @timestamp_truncate(i8* %126, %struct.inode* %127)
  %129 = load %struct.iattr*, %struct.iattr** %8, align 8
  %130 = getelementptr inbounds %struct.iattr, %struct.iattr* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @ATTR_MODE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %131
  %137 = load %struct.iattr*, %struct.iattr** %5, align 8
  %138 = getelementptr inbounds %struct.iattr, %struct.iattr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %11, align 4
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @in_group_p(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %136
  %146 = load i32, i32* @CAP_FSETID, align 4
  %147 = call i32 @capable(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @S_ISGID, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %149, %145, %136
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %157 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.iattr*, %struct.iattr** %8, align 8
  %159 = getelementptr inbounds %struct.iattr, %struct.iattr* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %131
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %68, %36, %22
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.iattr* @kzalloc(i32, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @simple_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i8* @timestamp_truncate(i8*, %struct.inode*) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
