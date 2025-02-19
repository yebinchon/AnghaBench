; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_nlink_fattr_to_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_nlink_fattr_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_fattr = type { i32, i32, i32 }

@CIFS_FATTR_UNKNOWN_NLINK = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.cifs_fattr*)* @cifs_nlink_fattr_to_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_nlink_fattr_to_inode(%struct.inode* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  %5 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %6 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CIFS_FATTR_UNKNOWN_NLINK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I_NEW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATTR_DIRECTORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @set_nlink(%struct.inode* %26, i32 2)
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @set_nlink(%struct.inode* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %11
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_nlink(%struct.inode* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
