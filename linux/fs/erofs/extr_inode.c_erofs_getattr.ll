; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@STATX_ATTR_COMPRESSED = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @d_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %9, align 8
  %15 = call %struct.TYPE_2__* @EROFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @erofs_inode_is_data_compressed(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %22 = load %struct.kstat*, %struct.kstat** %6, align 8
  %23 = getelementptr inbounds %struct.kstat, %struct.kstat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %28 = load %struct.kstat*, %struct.kstat** %6, align 8
  %29 = getelementptr inbounds %struct.kstat, %struct.kstat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %33 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.kstat*, %struct.kstat** %6, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = load %struct.kstat*, %struct.kstat** %6, align 8
  %41 = call i32 @generic_fillattr(%struct.inode* %39, %struct.kstat* %40)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @erofs_inode_is_data_compressed(i32) #1

declare dso_local %struct.TYPE_2__* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
