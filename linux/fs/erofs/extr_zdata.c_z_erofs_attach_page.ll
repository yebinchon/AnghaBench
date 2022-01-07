; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_attach_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_attach_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_collector = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@COLLECT_PRIMARY = common dso_local global i64 0, align 8
@Z_EROFS_PAGE_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_collector*, %struct.page*, i32)* @z_erofs_attach_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_attach_page(%struct.z_erofs_collector* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_erofs_collector*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.z_erofs_collector* %0, %struct.z_erofs_collector** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %11 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COLLECT_PRIMARY, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @Z_EROFS_PAGE_TYPE_EXCLUSIVE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i64 @z_erofs_try_inplace_io(%struct.z_erofs_collector* %20, %struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %46

25:                                               ; preds = %19, %15, %3
  %26 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %27 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %26, i32 0, i32 2
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @z_erofs_pagevec_enqueue(i32* %27, %struct.page* %28, i32 %29, i32* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %33 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ %43, %41 ]
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @z_erofs_try_inplace_io(%struct.z_erofs_collector*, %struct.page*) #1

declare dso_local i32 @z_erofs_pagevec_enqueue(i32*, %struct.page*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
