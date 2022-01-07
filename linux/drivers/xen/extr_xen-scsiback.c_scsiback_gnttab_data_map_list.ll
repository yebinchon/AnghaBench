; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_gnttab_data_map_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_gnttab_data_map_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { i32, %struct.vscsibk_info* }
%struct.vscsibk_info = type { i32 }
%struct.scsiif_request_segment = type { i32 }
%struct.page = type { i32 }
%struct.gnttab_map_grant_ref = type { i32 }

@VSCSI_GRANT_BATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no grant page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsibk_pend*, %struct.scsiif_request_segment*, %struct.page**, i32*, i32, i32)* @scsiback_gnttab_data_map_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_gnttab_data_map_list(%struct.vscsibk_pend* %0, %struct.scsiif_request_segment* %1, %struct.page** %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vscsibk_pend*, align 8
  %9 = alloca %struct.scsiif_request_segment*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.vscsibk_info*, align 8
  %20 = alloca i32, align 4
  store %struct.vscsibk_pend* %0, %struct.vscsibk_pend** %8, align 8
  store %struct.scsiif_request_segment* %1, %struct.scsiif_request_segment** %9, align 8
  store %struct.page** %2, %struct.page*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @VSCSI_GRANT_BATCH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca %struct.gnttab_map_grant_ref, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %26 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %25, i32 0, i32 1
  %27 = load %struct.vscsibk_info*, %struct.vscsibk_info** %26, align 8
  store %struct.vscsibk_info* %27, %struct.vscsibk_info** %19, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %96, %6
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = load %struct.page**, %struct.page*** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  %37 = call i64 @get_free_page(%struct.page** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.page**, %struct.page*** %10, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @put_free_pages(%struct.page** %40, i32 %41)
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %110

46:                                               ; preds = %32
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %24, i64 %48
  %50 = load %struct.page**, %struct.page*** %10, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 %52
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = call i32 @vaddr_page(%struct.page* %54)
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.scsiif_request_segment*, %struct.scsiif_request_segment** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.scsiif_request_segment, %struct.scsiif_request_segment* %57, i64 %59
  %61 = getelementptr inbounds %struct.scsiif_request_segment, %struct.scsiif_request_segment* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vscsibk_info*, %struct.vscsibk_info** %19, align 8
  %64 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref* %49, i32 %55, i32 %56, i32 %62, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @VSCSI_GRANT_BATCH, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %46
  br label %96

73:                                               ; preds = %46
  %74 = load %struct.page**, %struct.page*** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @scsiback_gnttab_data_map_batch(%struct.gnttab_map_grant_ref* %24, %struct.page** %74, i32* %75, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.page**, %struct.page*** %10, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.page*, %struct.page** %79, i64 %80
  store %struct.page** %81, %struct.page*** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %88 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %73
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %110

95:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %28

99:                                               ; preds = %28
  %100 = load %struct.page**, %struct.page*** %10, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @scsiback_gnttab_data_map_batch(%struct.gnttab_map_grant_ref* %24, %struct.page** %100, i32* %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %106 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %110

110:                                              ; preds = %99, %93, %39
  %111 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_free_page(%struct.page**) #2

declare dso_local i32 @put_free_pages(%struct.page**, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref*, i32, i32, i32, i32) #2

declare dso_local i32 @vaddr_page(%struct.page*) #2

declare dso_local i32 @scsiback_gnttab_data_map_batch(%struct.gnttab_map_grant_ref*, %struct.page**, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
