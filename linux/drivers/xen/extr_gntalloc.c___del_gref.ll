; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntalloc.c___del_gref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntalloc.c___del_gref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntalloc_gref = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@UNMAP_NOTIFY_CLEAR_BYTE = common dso_local global i32 0, align 4
@UNMAP_NOTIFY_SEND_EVENT = common dso_local global i32 0, align 4
@gref_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gntalloc_gref*)* @__del_gref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__del_gref(%struct.gntalloc_gref* %0) #0 {
  %2 = alloca %struct.gntalloc_gref*, align 8
  %3 = alloca i64*, align 8
  store %struct.gntalloc_gref* %0, %struct.gntalloc_gref** %2, align 8
  %4 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %5 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @UNMAP_NOTIFY_CLEAR_BYTE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %13 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64* @kmap(i64 %14)
  store i64* %15, i64** %3, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %18 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %23 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kunmap(i64 %24)
  br label %26

26:                                               ; preds = %11, %1
  %27 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %28 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UNMAP_NOTIFY_SEND_EVENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %36 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @notify_remote_via_evtchn(i32 %38)
  %40 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %41 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @evtchn_put(i32 %43)
  br label %45

45:                                               ; preds = %34, %26
  %46 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %47 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %50 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %55 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @gnttab_query_foreign_access(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %90

60:                                               ; preds = %53
  %61 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %62 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @gnttab_end_foreign_access_ref(i64 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %90

67:                                               ; preds = %60
  %68 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %69 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @gnttab_free_grant_reference(i64 %70)
  br label %72

72:                                               ; preds = %67, %45
  %73 = load i32, i32* @gref_size, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* @gref_size, align 4
  %75 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %76 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %75, i32 0, i32 1
  %77 = call i32 @list_del(i32* %76)
  %78 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %79 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %84 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @__free_page(i64 %85)
  br label %87

87:                                               ; preds = %82, %72
  %88 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %2, align 8
  %89 = call i32 @kfree(%struct.gntalloc_gref* %88)
  br label %90

90:                                               ; preds = %87, %66, %59
  ret void
}

declare dso_local i64* @kmap(i64) #1

declare dso_local i32 @kunmap(i64) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

declare dso_local i32 @evtchn_put(i32) #1

declare dso_local i64 @gnttab_query_foreign_access(i64) #1

declare dso_local i32 @gnttab_end_foreign_access_ref(i64, i32) #1

declare dso_local i32 @gnttab_free_grant_reference(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.gntalloc_gref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
