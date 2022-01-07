; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_ctor_pagedown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zpvec.h_z_erofs_pagevec_ctor_pagedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_pagevec_ctor = type { i32, i64, %struct.page*, i32, i32* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_erofs_pagevec_ctor*, i32)* @z_erofs_pagevec_ctor_pagedown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z_erofs_pagevec_ctor_pagedown(%struct.z_erofs_pagevec_ctor* %0, i32 %1) #0 {
  %3 = alloca %struct.z_erofs_pagevec_ctor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.z_erofs_pagevec_ctor* %0, %struct.z_erofs_pagevec_ctor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %7 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %8 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.page* @z_erofs_pagevec_ctor_next_page(%struct.z_erofs_pagevec_ctor* %6, i32 %9)
  store %struct.page* %10, %struct.page** %5, align 8
  %11 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @z_erofs_pagevec_ctor_exit(%struct.z_erofs_pagevec_ctor* %11, i32 %12)
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %16 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %15, i32 0, i32 2
  store %struct.page* %14, %struct.page** %16, align 8
  %17 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %18 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %23 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %22, i32 0, i32 2
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = call i32 @kmap_atomic(%struct.page* %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %28 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %27, i32 0, i32 2
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = call i32 @kmap(%struct.page* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  %33 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %34 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %40 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.z_erofs_pagevec_ctor*, %struct.z_erofs_pagevec_ctor** %3, align 8
  %42 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, %struct.z_erofs_pagevec_ctor* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local %struct.page* @z_erofs_pagevec_ctor_next_page(%struct.z_erofs_pagevec_ctor*, i32) #1

declare dso_local i32 @z_erofs_pagevec_ctor_exit(%struct.z_erofs_pagevec_ctor*, i32) #1

declare dso_local i32 @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
