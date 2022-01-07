; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_symlink.c_coda_symlink_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_symlink.c_coda_symlink_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @coda_symlink_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_symlink_filler(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coda_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i8* @page_address(%struct.page* %17)
  store i8* %18, i8** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.coda_inode_info* @ITOC(%struct.inode* %19)
  store %struct.coda_inode_info* %20, %struct.coda_inode_info** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %25 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @venus_readlink(i32 %23, i32* %25, i8* %26, i32* %9)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @SetPageUptodate(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @unlock_page(%struct.page* %34)
  store i32 0, i32* %3, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @SetPageError(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @venus_readlink(i32, i32*, i8*, i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
