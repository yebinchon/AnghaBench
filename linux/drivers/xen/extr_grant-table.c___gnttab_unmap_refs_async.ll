; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c___gnttab_unmap_refs_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c___gnttab_unmap_refs_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntab_unmap_queue_data = type { i32, i32, i32 (i32, %struct.gntab_unmap_queue_data*)*, i32*, i32, i32, i32 }

@GNTTAB_UNMAP_REFS_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gntab_unmap_queue_data*)* @__gnttab_unmap_refs_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data* %0) #0 {
  %2 = alloca %struct.gntab_unmap_queue_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.gntab_unmap_queue_data* %0, %struct.gntab_unmap_queue_data** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %9 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %14 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @page_count(i32 %19)
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %12
  %23 = load i32, i32* @GNTTAB_UNMAP_REFS_DELAY, align 4
  %24 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %25 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %23, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %5, align 8
  %30 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %31 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %30, i32 0, i32 6
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @msecs_to_jiffies(i64 %32)
  %34 = call i32 @schedule_delayed_work(i32* %31, i32 %33)
  br label %59

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %41 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %44 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %47 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %50 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gnttab_unmap_refs(i32 %42, i32 %45, i32* %48, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %54 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %53, i32 0, i32 2
  %55 = load i32 (i32, %struct.gntab_unmap_queue_data*)*, i32 (i32, %struct.gntab_unmap_queue_data*)** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %58 = call i32 %55(i32 %56, %struct.gntab_unmap_queue_data* %57)
  br label %59

59:                                               ; preds = %39, %22
  ret void
}

declare dso_local i32 @page_count(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @gnttab_unmap_refs(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
