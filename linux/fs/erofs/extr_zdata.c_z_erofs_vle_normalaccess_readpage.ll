; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_vle_normalaccess_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_vle_normalaccess_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.z_erofs_decompress_frontend = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@pagepool = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read, err [%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @z_erofs_vle_normalaccess_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_vle_normalaccess_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.z_erofs_decompress_frontend, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  call void @DECOMPRESS_FRONTEND_INIT(%struct.z_erofs_decompress_frontend* sret %6, %struct.inode* %13)
  %14 = load i32, i32* @pagepool, align 4
  %15 = call i32 @LIST_HEAD(i32 %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @trace_erofs_readpage(%struct.page* %16, i32 0)
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @z_erofs_do_read_page(%struct.z_erofs_decompress_frontend* %6, %struct.page* %25, i32* @pagepool)
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %6, i32 0, i32 2
  %28 = call i32 @z_erofs_collector_end(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %6, i32 0, i32 2
  %33 = call i32 @z_erofs_submit_and_unzip(i32 %31, i32* %32, i32* @pagepool, i32 1)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @erofs_err(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %2
  %43 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %6, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %6, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @put_page(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = call i32 @put_pages_list(i32* @pagepool)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local void @DECOMPRESS_FRONTEND_INIT(%struct.z_erofs_decompress_frontend* sret, %struct.inode*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @trace_erofs_readpage(%struct.page*, i32) #1

declare dso_local i32 @z_erofs_do_read_page(%struct.z_erofs_decompress_frontend*, %struct.page*, i32*) #1

declare dso_local i32 @z_erofs_collector_end(i32*) #1

declare dso_local i32 @z_erofs_submit_and_unzip(i32, i32*, i32*, i32) #1

declare dso_local i32 @erofs_err(i32, i8*, i32) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @put_pages_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
