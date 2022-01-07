; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_guest_fill_page_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_guest_fill_page_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i8*, i32, i32* }
%struct.xen_page_directory = type { i32, i32 }

@XEN_NUM_GREFS_PER_PAGE = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_front_pgdir_shbuf*)* @guest_fill_page_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guest_fill_page_dir(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xen_page_directory*, align 8
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %2, align 8
  %10 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %11 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %14 = call i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %17 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %70, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to %struct.xen_page_directory*
  store %struct.xen_page_directory* %25, %struct.xen_page_directory** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XEN_NUM_GREFS_PER_PAGE, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @GRANT_INVALID_REF, align 4
  %32 = load %struct.xen_page_directory*, %struct.xen_page_directory** %9, align 8
  %33 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %46

34:                                               ; preds = %23
  %35 = load i32, i32* @XEN_NUM_GREFS_PER_PAGE, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %37 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xen_page_directory*, %struct.xen_page_directory** %9, align 8
  %45 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %34, %29
  %47 = load %struct.xen_page_directory*, %struct.xen_page_directory** %9, align 8
  %48 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %47, i32 0, i32 0
  %49 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %50 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i32* %48, i32* %54, i32 %58)
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %46
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %19

73:                                               ; preds = %19
  ret void
}

declare dso_local i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
