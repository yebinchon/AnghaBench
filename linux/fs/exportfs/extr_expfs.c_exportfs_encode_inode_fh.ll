; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_encode_inode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_encode_inode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fid = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.export_operations* }
%struct.export_operations = type { i32 (%struct.inode*, i32, i32*, %struct.inode*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exportfs_encode_inode_fh(%struct.inode* %0, %struct.fid* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.export_operations*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  store %struct.export_operations* %15, %struct.export_operations** %10, align 8
  %16 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %17 = icmp ne %struct.export_operations* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %20 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %19, i32 0, i32 0
  %21 = load i32 (%struct.inode*, i32, i32*, %struct.inode*)*, i32 (%struct.inode*, i32, i32*, %struct.inode*)** %20, align 8
  %22 = icmp ne i32 (%struct.inode*, i32, i32*, %struct.inode*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %25 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %24, i32 0, i32 0
  %26 = load i32 (%struct.inode*, i32, i32*, %struct.inode*)*, i32 (%struct.inode*, i32, i32*, %struct.inode*)** %25, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.fid*, %struct.fid** %7, align 8
  %29 = getelementptr inbounds %struct.fid, %struct.fid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 %26(%struct.inode* %27, i32 %30, i32* %31, %struct.inode* %32)
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %18, %4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load %struct.fid*, %struct.fid** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @export_encode_fh(%struct.inode* %35, %struct.fid* %36, i32* %37, %struct.inode* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @export_encode_fh(%struct.inode*, %struct.fid*, i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
