; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_pagevec_ctor = type { i64, i64, i32*, %struct.page* }
%struct.page = type { i32 }

@Z_EROFS_PAGE_TYPE_EXCLUSIVE = common dso_local global i64 0, align 8
@erofs_vtptr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_pagevec_ctor*, %struct.page*, i32, i32*)* @z_erofs_pagevec_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_pagevec_enqueue(%struct.z_erofs_pagevec_ctor* %0, %struct.page* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_erofs_pagevec_ctor*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.z_erofs_pagevec_ctor* %0, %struct.z_erofs_pagevec_ctor** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %12 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %11, i32 0, i32 3
  %13 = load %struct.page*, %struct.page** %12, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %20 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %24 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %71

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %15, %4
  %30 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %31 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %34 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %39 = call i32 @z_erofs_pagevec_ctor_pagedown(%struct.z_erofs_pagevec_ctor* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i64, i64* @Z_EROFS_PAGE_TYPE_EXCLUSIVE, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @__bad_page_type_exclusive()
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %49 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %48, i32 0, i32 3
  %50 = load %struct.page*, %struct.page** %49, align 8
  %51 = ptrtoint %struct.page* %50 to i64
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %56 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %55, i32 0, i32 3
  store %struct.page* %54, %struct.page** %56, align 8
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32, i32* @erofs_vtptr_t, align 4
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @tagptr_fold(i32 %59, %struct.page* %60, i32 %61)
  %63 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %64 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %6, align 8
  %67 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %58, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @z_erofs_pagevec_ctor_pagedown(%struct.z_erofs_pagevec_ctor*, i32) #1

declare dso_local i32 @__bad_page_type_exclusive(...) #1

declare dso_local i32 @tagptr_fold(i32, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
