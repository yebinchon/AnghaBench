; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_pages_set_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_pages_set_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.xen_page_foreign = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_pages_set_private(i32 %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_page_foreign*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.page** %1, %struct.page*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xen_page_foreign* @kzalloc(i32 4, i32 %13)
  store %struct.xen_page_foreign* %14, %struct.xen_page_foreign** %7, align 8
  %15 = load %struct.xen_page_foreign*, %struct.xen_page_foreign** %7, align 8
  %16 = icmp ne %struct.xen_page_foreign* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %12
  %21 = load %struct.page**, %struct.page*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %23
  %25 = load %struct.page*, %struct.page** %24, align 8
  %26 = load %struct.xen_page_foreign*, %struct.xen_page_foreign** %7, align 8
  %27 = ptrtoint %struct.xen_page_foreign* %26 to i64
  %28 = call i32 @set_page_private(%struct.page* %25, i64 %27)
  %29 = load %struct.page**, %struct.page*** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = call i32 @SetPagePrivate(%struct.page* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %8

38:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.xen_page_foreign* @kzalloc(i32, i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
