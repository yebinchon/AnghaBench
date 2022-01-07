; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_ctor_next_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_ctor_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.z_erofs_pagevec_ctor = type { i32, i32*, %struct.page* }

@Z_EROFS_PAGE_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.z_erofs_pagevec_ctor*, i32)* @z_erofs_pagevec_ctor_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @z_erofs_pagevec_ctor_next_page(%struct.z_erofs_pagevec_ctor* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.z_erofs_pagevec_ctor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.z_erofs_pagevec_ctor* %0, %struct.z_erofs_pagevec_ctor** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %4, align 8
  %10 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %9, i32 0, i32 2
  %11 = load %struct.page*, %struct.page** %10, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %4, align 8
  %15 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %14, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %3, align 8
  br label %50

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %4, align 8
  %24 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @tagptr_unfold_tags(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @Z_EROFS_PAGE_TYPE_EXCLUSIVE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.page* @tagptr_unfold_ptr(i32 %36)
  store %struct.page* %37, %struct.page** %3, align 8
  br label %50

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %4, align 8
  %45 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @DBG_BUGON(i32 %48)
  store %struct.page* null, %struct.page** %3, align 8
  br label %50

50:                                               ; preds = %42, %35, %13
  %51 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %51
}

declare dso_local i32 @tagptr_unfold_tags(i32) #1

declare dso_local %struct.page* @tagptr_unfold_ptr(i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
