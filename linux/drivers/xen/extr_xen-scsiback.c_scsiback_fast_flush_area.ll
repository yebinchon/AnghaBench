; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_fast_flush_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_fast_flush_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { i32, i64*, %struct.page**, i64, i32* }
%struct.page = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i32 }

@VSCSI_GRANT_BATCH = common dso_local global i32 0, align 4
@SCSIBACK_INVALID_HANDLE = common dso_local global i64 0, align 8
@GNTMAP_host_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsibk_pend*)* @scsiback_fast_flush_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_fast_flush_area(%struct.vscsibk_pend* %0) #0 {
  %2 = alloca %struct.vscsibk_pend*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vscsibk_pend* %0, %struct.vscsibk_pend** %2, align 8
  %11 = load i32, i32* @VSCSI_GRANT_BATCH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca %struct.gnttab_unmap_grant_ref, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @VSCSI_GRANT_BATCH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca %struct.page*, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %19 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %23 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %25 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %27 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %114

31:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %35 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %32
  %39 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %40 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @SCSIBACK_INVALID_HANDLE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %93

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %14, i64 %52
  %54 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @vaddr(%struct.vscsibk_pend* %54, i32 %55)
  %57 = load i32, i32* @GNTMAP_host_map, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %53, i32 %56, i32 %57, i64 %58)
  %60 = load i64, i64* @SCSIBACK_INVALID_HANDLE, align 8
  %61 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %62 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %68 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %67, i32 0, i32 2
  %69 = load %struct.page**, %struct.page*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.page*, %struct.page** %69, i64 %71
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 %75
  store %struct.page* %73, %struct.page** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 %78
  %80 = load %struct.page*, %struct.page** %79, align 8
  %81 = call i32 @put_page(%struct.page* %80)
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @VSCSI_GRANT_BATCH, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %50
  br label %93

88:                                               ; preds = %50
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %14, i32* null, %struct.page** %17, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @BUG_ON(i32 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %88, %87, %49
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %32

96:                                               ; preds = %32
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %14, i32* null, %struct.page** %17, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @BUG_ON(i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %106 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %105, i32 0, i32 2
  %107 = load %struct.page**, %struct.page*** %106, align 8
  %108 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %109 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @put_free_pages(%struct.page** %107, i32 %110)
  %112 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %2, align 8
  %113 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %104, %30
  %115 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %10, align 4
  switch i32 %116, label %118 [
    i32 0, label %117
    i32 1, label %117
  ]

117:                                              ; preds = %114, %114
  ret void

118:                                              ; preds = %114
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i32, i32, i64) #2

declare dso_local i32 @vaddr(%struct.vscsibk_pend*, i32) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref*, i32*, %struct.page**, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @put_free_pages(%struct.page**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
