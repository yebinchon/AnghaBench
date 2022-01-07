; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.file = type { i16, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.coda_file_info = type { i32, i64 }
%struct.coda_inode_info = type { i32, i64 }

@O_EXCL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.coda_file_info*, align 8
  %8 = alloca %struct.coda_inode_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_EXCL, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %5, align 2
  %20 = load i16, i16* %5, align 2
  %21 = call zeroext i16 @coda_flags_to_cflags(i16 zeroext %20)
  store i16 %21, i16* %6, align 2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %22)
  store %struct.coda_file_info* %23, %struct.coda_file_info** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @coda_i2f(%struct.inode* %27)
  %29 = load i16, i16* %6, align 2
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @venus_close(i32 %26, i32 %28, i16 zeroext %29, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %37 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.inode* @file_inode(i32 %38)
  store %struct.inode* %39, %struct.inode** %9, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call %struct.coda_inode_info* @ITOC(%struct.inode* %40)
  store %struct.coda_inode_info* %41, %struct.coda_inode_info** %8, align 8
  %42 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %43 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = icmp eq i32* %47, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %2
  %52 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %53 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %56 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %60 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %51
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %63, %51
  br label %69

69:                                               ; preds = %68, %2
  %70 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %71 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %74 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fput(i32 %75)
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  ret i32 0
}

declare dso_local zeroext i16 @coda_flags_to_cflags(i16 zeroext) #1

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local i32 @venus_close(i32, i32, i16 zeroext, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
