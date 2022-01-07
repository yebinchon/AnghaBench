; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_fill_page_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_fill_page_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i8*, i32* }
%struct.xen_page_directory = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_front_pgdir_shbuf*)* @backend_fill_page_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_fill_page_dir(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %3 = alloca %struct.xen_page_directory*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %2, align 8
  %7 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %8 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %11 = call i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf* %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.xen_page_directory*
  store %struct.xen_page_directory* %19, %struct.xen_page_directory** %3, align 8
  %20 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %21 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xen_page_directory*, %struct.xen_page_directory** %3, align 8
  %29 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to %struct.xen_page_directory*
  store %struct.xen_page_directory* %39, %struct.xen_page_directory** %3, align 8
  %40 = load i32, i32* @GRANT_INVALID_REF, align 4
  %41 = load %struct.xen_page_directory*, %struct.xen_page_directory** %3, align 8
  %42 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
