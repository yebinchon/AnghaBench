; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_acl.c_ext2_init_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_acl.c_ext2_init_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_init_acl(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = call i32 @posix_acl_create(%struct.inode* %9, i32* %11, %struct.posix_acl** %6, %struct.posix_acl** %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %19 = icmp ne %struct.posix_acl* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %23 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %24 = call i32 @__ext2_set_acl(%struct.inode* %21, %struct.posix_acl* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %26 = call i32 @posix_acl_release(%struct.posix_acl* %25)
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %32 = icmp ne %struct.posix_acl* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %39 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %40 = call i32 @__ext2_set_acl(%struct.inode* %37, %struct.posix_acl* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %43 = call i32 @posix_acl_release(%struct.posix_acl* %42)
  br label %47

44:                                               ; preds = %30
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @__ext2_set_acl(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
