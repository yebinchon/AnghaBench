; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_gnttab_data_map_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_gnttab_data_map_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_map_grant_ref = type { i64, i32 }
%struct.page = type { i32 }

@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid buffer -- could not remap it\0A\00", align 1
@SCSIBACK_INVALID_HANDLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gnttab_map_grant_ref*, %struct.page**, i32*, i32)* @scsiback_gnttab_data_map_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_gnttab_data_map_batch(%struct.gnttab_map_grant_ref* %0, %struct.page** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnttab_map_grant_ref*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gnttab_map_grant_ref* %0, %struct.gnttab_map_grant_ref** %6, align 8
  store %struct.page** %1, %struct.page*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

15:                                               ; preds = %4
  %16 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %17 = load %struct.page**, %struct.page*** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @gnttab_map_refs(%struct.gnttab_map_grant_ref* %16, i32* null, %struct.page** %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @BUG_ON(i32 %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %66, %15
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %27, i64 %29
  %31 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GNTST_okay, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @SCSIBACK_INVALID_HANDLE, align 4
  %41 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %41, i64 %43
  %45 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %26
  %49 = load %struct.page**, %struct.page*** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 %51
  %53 = load %struct.page*, %struct.page** %52, align 8
  %54 = call i32 @get_page(%struct.page* %53)
  br label %55

55:                                               ; preds = %48, %38
  %56 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %56, i64 %58
  %60 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %22

69:                                               ; preds = %22
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @gnttab_map_refs(%struct.gnttab_map_grant_ref*, i32*, %struct.page**, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
