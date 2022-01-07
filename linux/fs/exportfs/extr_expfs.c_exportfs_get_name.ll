; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.export_operations* }
%struct.export_operations = type { i32 (%struct.dentry*, i8*, %struct.dentry*)* }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*)* @exportfs_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exportfs_get_name(%struct.vfsmount* %0, %struct.dentry* %1, i8* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.export_operations*, align 8
  %11 = alloca %struct.path, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.export_operations*, %struct.export_operations** %15, align 8
  store %struct.export_operations* %16, %struct.export_operations** %10, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %18, %struct.dentry** %17, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %20 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  store %struct.vfsmount* %20, %struct.vfsmount** %19, align 8
  %21 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %22 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %21, i32 0, i32 0
  %23 = load i32 (%struct.dentry*, i8*, %struct.dentry*)*, i32 (%struct.dentry*, i8*, %struct.dentry*)** %22, align 8
  %24 = icmp ne i32 (%struct.dentry*, i8*, %struct.dentry*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %27 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %26, i32 0, i32 0
  %28 = load i32 (%struct.dentry*, i8*, %struct.dentry*)*, i32 (%struct.dentry*, i8*, %struct.dentry*)** %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.dentry*, %struct.dentry** %9, align 8
  %32 = call i32 %28(%struct.dentry* %29, i8* %30, %struct.dentry* %31)
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call i32 @get_name(%struct.path* %11, i8* %34, %struct.dentry* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @get_name(%struct.path*, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
