; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_erofs_try_to_free_cached_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_erofs_try_to_free_cached_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.z_erofs_pcluster = type { i32, %struct.page**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_try_to_free_cached_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.z_erofs_pcluster*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @page_private(%struct.page* %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.z_erofs_pcluster*
  store %struct.z_erofs_pcluster* %12, %struct.z_erofs_pcluster** %5, align 8
  %13 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %5, align 8
  %14 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %5, align 8
  %18 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %17, i32 0, i32 0
  %19 = call i64 @erofs_workgroup_try_to_freeze(i32* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %5, align 8
  %28 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %27, i32 0, i32 1
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = icmp eq %struct.page* %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %5, align 8
  %38 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %37, i32 0, i32 1
  %39 = load %struct.page**, %struct.page*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.page*, %struct.page** %39, i64 %41
  %43 = load %struct.page*, %struct.page** %42, align 8
  %44 = call i32 @WRITE_ONCE(%struct.page* %43, i32* null)
  store i32 1, i32* %7, align 4
  br label %49

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %22

49:                                               ; preds = %36, %22
  %50 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %5, align 8
  %51 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %50, i32 0, i32 0
  %52 = call i32 @erofs_workgroup_unfreeze(i32* %51, i32 1)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = call i32 @ClearPagePrivate(%struct.page* %56)
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call i32 @put_page(%struct.page* %58)
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @erofs_workgroup_try_to_freeze(i32*, i32) #1

declare dso_local i32 @WRITE_ONCE(%struct.page*, i32*) #1

declare dso_local i32 @erofs_workgroup_unfreeze(i32*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
