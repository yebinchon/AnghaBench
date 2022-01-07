; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.dentry* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ecryptfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %17, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %124

24:                                               ; preds = %5
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %25)
  store %struct.dentry* %26, %struct.dentry** %13, align 8
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %27)
  store %struct.dentry* %28, %struct.dentry** %14, align 8
  %29 = load %struct.dentry*, %struct.dentry** %13, align 8
  %30 = call i32 @dget(%struct.dentry* %29)
  %31 = load %struct.dentry*, %struct.dentry** %14, align 8
  %32 = call i32 @dget(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %13, align 8
  %34 = call %struct.dentry* @dget_parent(%struct.dentry* %33)
  store %struct.dentry* %34, %struct.dentry** %15, align 8
  %35 = load %struct.dentry*, %struct.dentry** %14, align 8
  %36 = call %struct.dentry* @dget_parent(%struct.dentry* %35)
  store %struct.dentry* %36, %struct.dentry** %16, align 8
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = call %struct.inode* @d_inode(%struct.dentry* %37)
  store %struct.inode* %38, %struct.inode** %18, align 8
  %39 = load %struct.dentry*, %struct.dentry** %15, align 8
  %40 = load %struct.dentry*, %struct.dentry** %16, align 8
  %41 = call %struct.dentry* @lock_rename(%struct.dentry* %39, %struct.dentry* %40)
  store %struct.dentry* %41, %struct.dentry** %17, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.dentry*, %struct.dentry** %13, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  %47 = load %struct.dentry*, %struct.dentry** %15, align 8
  %48 = icmp ne %struct.dentry* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  br label %111

50:                                               ; preds = %24
  %51 = load %struct.dentry*, %struct.dentry** %14, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.dentry*, %struct.dentry** %52, align 8
  %54 = load %struct.dentry*, %struct.dentry** %16, align 8
  %55 = icmp ne %struct.dentry* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %111

57:                                               ; preds = %50
  %58 = load %struct.dentry*, %struct.dentry** %13, align 8
  %59 = call i64 @d_unhashed(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.dentry*, %struct.dentry** %14, align 8
  %63 = call i64 @d_unhashed(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  br label %111

66:                                               ; preds = %61
  %67 = load %struct.dentry*, %struct.dentry** %17, align 8
  %68 = load %struct.dentry*, %struct.dentry** %13, align 8
  %69 = icmp eq %struct.dentry* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %111

71:                                               ; preds = %66
  %72 = load %struct.dentry*, %struct.dentry** %17, align 8
  %73 = load %struct.dentry*, %struct.dentry** %14, align 8
  %74 = icmp eq %struct.dentry* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @ENOTEMPTY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %111

78:                                               ; preds = %71
  %79 = load %struct.dentry*, %struct.dentry** %15, align 8
  %80 = call %struct.inode* @d_inode(%struct.dentry* %79)
  %81 = load %struct.dentry*, %struct.dentry** %13, align 8
  %82 = load %struct.dentry*, %struct.dentry** %16, align 8
  %83 = call %struct.inode* @d_inode(%struct.dentry* %82)
  %84 = load %struct.dentry*, %struct.dentry** %14, align 8
  %85 = call i32 @vfs_rename(%struct.inode* %80, %struct.dentry* %81, %struct.inode* %83, %struct.dentry* %84, i32* null, i32 0)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %111

89:                                               ; preds = %78
  %90 = load %struct.inode*, %struct.inode** %18, align 8
  %91 = icmp ne %struct.inode* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %18, align 8
  %94 = load %struct.inode*, %struct.inode** %18, align 8
  %95 = call %struct.inode* @ecryptfs_inode_to_lower(%struct.inode* %94)
  %96 = call i32 @fsstack_copy_attr_all(%struct.inode* %93, %struct.inode* %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = load %struct.dentry*, %struct.dentry** %16, align 8
  %100 = call %struct.inode* @d_inode(%struct.dentry* %99)
  %101 = call i32 @fsstack_copy_attr_all(%struct.inode* %98, %struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = icmp ne %struct.inode* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = load %struct.dentry*, %struct.dentry** %15, align 8
  %108 = call %struct.inode* @d_inode(%struct.dentry* %107)
  %109 = call i32 @fsstack_copy_attr_all(%struct.inode* %106, %struct.inode* %108)
  br label %110

110:                                              ; preds = %105, %97
  br label %111

111:                                              ; preds = %110, %88, %75, %70, %65, %56, %49
  %112 = load %struct.dentry*, %struct.dentry** %15, align 8
  %113 = load %struct.dentry*, %struct.dentry** %16, align 8
  %114 = call i32 @unlock_rename(%struct.dentry* %112, %struct.dentry* %113)
  %115 = load %struct.dentry*, %struct.dentry** %16, align 8
  %116 = call i32 @dput(%struct.dentry* %115)
  %117 = load %struct.dentry*, %struct.dentry** %15, align 8
  %118 = call i32 @dput(%struct.dentry* %117)
  %119 = load %struct.dentry*, %struct.dentry** %14, align 8
  %120 = call i32 @dput(%struct.dentry* %119)
  %121 = load %struct.dentry*, %struct.dentry** %13, align 8
  %122 = call i32 @dput(%struct.dentry* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %111, %21
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @vfs_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32*, i32) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, %struct.inode*) #1

declare dso_local %struct.inode* @ecryptfs_inode_to_lower(%struct.inode*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
