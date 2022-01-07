; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_unmap_grant_ref = type { i32 }
%struct.page = type { i32 }

@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref* %1, %struct.page** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %7 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref** %6, align 8
  store %struct.gnttab_unmap_grant_ref* %1, %struct.gnttab_unmap_grant_ref** %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %13 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @HYPERVISOR_grant_table_op(i32 %12, %struct.gnttab_unmap_grant_ref* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.page**, %struct.page*** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  %31 = call i32 @ClearPageForeign(%struct.page* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %6, align 8
  %37 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %38 = load %struct.page**, %struct.page*** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @clear_foreign_p2m_mapping(%struct.gnttab_unmap_grant_ref* %36, %struct.gnttab_unmap_grant_ref* %37, %struct.page** %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #1

declare dso_local i32 @ClearPageForeign(%struct.page*) #1

declare dso_local i32 @clear_foreign_p2m_mapping(%struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref*, %struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
