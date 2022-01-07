; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_foreach_grant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_foreach_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@XEN_PFN_PER_PAGE = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_foreach_grant(%struct.page** %0, i32 %1, i32 (i32, i32, i64, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32, i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (i32, i32, i64, i8*)* %2, i32 (i32, i32, i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %45, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @XEN_PFN_PER_PAGE, align 4
  %19 = urem i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.page**, %struct.page*** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @XEN_PFN_PER_PAGE, align 4
  %25 = udiv i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.page*, %struct.page** %22, i64 %26
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = call i64 @page_to_xen_pfn(%struct.page* %28)
  store i64 %29, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i32 (i32, i32, i64, i8*)*, i32 (i32, i32, i64, i8*)** %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @pfn_to_gfn(i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 %31(i32 %33, i32 %34, i64 %35, i8* %36)
  %38 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %12

48:                                               ; preds = %12
  ret void
}

declare dso_local i64 @page_to_xen_pfn(%struct.page*) #1

declare dso_local i32 @pfn_to_gfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
