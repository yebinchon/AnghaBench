; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_lock_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_lock_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.privcmd_dm_op_buf = type { i64, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.privcmd_dm_op_buf*, i32, %struct.page**, i32)* @lock_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_pages(%struct.privcmd_dm_op_buf* %0, i32 %1, %struct.page** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.privcmd_dm_op_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.privcmd_dm_op_buf* %0, %struct.privcmd_dm_op_buf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %63, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.privcmd_dm_op_buf*, %struct.privcmd_dm_op_buf** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %18, i64 %20
  %22 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @offset_in_page(i64 %23)
  %25 = load %struct.privcmd_dm_op_buf*, %struct.privcmd_dm_op_buf** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %25, i64 %27
  %29 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @DIV_ROUND_UP(i64 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %67

40:                                               ; preds = %17
  %41 = load %struct.privcmd_dm_op_buf*, %struct.privcmd_dm_op_buf** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %41, i64 %43
  %45 = getelementptr inbounds %struct.privcmd_dm_op_buf, %struct.privcmd_dm_op_buf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FOLL_WRITE, align 4
  %49 = load %struct.page**, %struct.page*** %8, align 8
  %50 = call i32 @get_user_pages_fast(i64 %46, i32 %47, i32 %48, %struct.page** %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %67

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.page**, %struct.page*** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %60, i64 %61
  store %struct.page** %62, %struct.page*** %8, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %13

66:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %53, %37
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
