; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_readpage_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_readpage_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bytes read %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*, i32*)* @cifs_readpage_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_readpage_worker(%struct.file* %0, %struct.page* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.TYPE_5__* @file_inode(%struct.file* %9)
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i32 @cifs_readpage_from_fscache(%struct.TYPE_5__* %10, %struct.page* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %88

16:                                               ; preds = %3
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i8* @kmap(%struct.page* %17)
  store i8* %18, i8** %7, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @cifs_read(%struct.file* %19, i8* %20, i32 %21, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %83

27:                                               ; preds = %16
  %28 = load i32, i32* @FYI, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cifs_dbg(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = call %struct.TYPE_5__* @file_inode(%struct.file* %32)
  %34 = call i8* @current_time(%struct.TYPE_5__* %33)
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = call %struct.TYPE_5__* @file_inode(%struct.file* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = call %struct.TYPE_5__* @file_inode(%struct.file* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = call %struct.TYPE_5__* @file_inode(%struct.file* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i64 @timespec64_compare(i8** %40, i8** %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = call %struct.TYPE_5__* @file_inode(%struct.file* %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = call %struct.TYPE_5__* @file_inode(%struct.file* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  br label %61

54:                                               ; preds = %31
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = call %struct.TYPE_5__* @file_inode(%struct.file* %55)
  %57 = call i8* @current_time(%struct.TYPE_5__* %56)
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = call %struct.TYPE_5__* @file_inode(%struct.file* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @memset(i8* %69, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %65, %61
  %75 = load %struct.page*, %struct.page** %5, align 8
  %76 = call i32 @flush_dcache_page(%struct.page* %75)
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = call i32 @SetPageUptodate(%struct.page* %77)
  %79 = load %struct.file*, %struct.file** %4, align 8
  %80 = call %struct.TYPE_5__* @file_inode(%struct.file* %79)
  %81 = load %struct.page*, %struct.page** %5, align 8
  %82 = call i32 @cifs_readpage_to_fscache(%struct.TYPE_5__* %80, %struct.page* %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %26
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = call i32 @kunmap(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %5, align 8
  %87 = call i32 @unlock_page(%struct.page* %86)
  br label %88

88:                                               ; preds = %83, %15
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @cifs_readpage_from_fscache(%struct.TYPE_5__*, %struct.page*) #1

declare dso_local %struct.TYPE_5__* @file_inode(%struct.file*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @cifs_read(%struct.file*, i8*, i32, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i8* @current_time(%struct.TYPE_5__*) #1

declare dso_local i64 @timespec64_compare(i8**, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @cifs_readpage_to_fscache(%struct.TYPE_5__*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
