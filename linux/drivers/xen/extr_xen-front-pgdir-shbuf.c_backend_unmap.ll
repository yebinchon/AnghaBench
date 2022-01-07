; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i32, %struct.gnttab_unmap_grant_ref*, %struct.TYPE_2__*, i32*, i32 }
%struct.gnttab_unmap_grant_ref = type { i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to unmap page %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to unmap grant references, ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_front_pgdir_shbuf*)* @backend_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backend_unmap(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %4 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %3, align 8
  %8 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %9 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %14 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %13, i32 0, i32 1
  %15 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %14, align 8
  %16 = icmp ne %struct.gnttab_unmap_grant_ref* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %19 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %12, %1
  store i32 0, i32* %2, align 4
  br label %132

23:                                               ; preds = %17
  %24 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %25 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gnttab_unmap_grant_ref* @kcalloc(i32 %26, i32 8, i32 %27)
  store %struct.gnttab_unmap_grant_ref* %28, %struct.gnttab_unmap_grant_ref** %4, align 8
  %29 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %30 = icmp ne %struct.gnttab_unmap_grant_ref* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %132

34:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %38 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %43 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @xen_page_to_vaddr(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %50, i64 %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GNTMAP_host_map, align 4
  %56 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %57 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %56, i32 0, i32 1
  %58 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %58, i64 %60
  %62 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %53, i32 %54, i32 %55, i64 %63)
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %70 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %71 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %74 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %69, i32* null, i32* %72, i32 %75)
  store i32 %76, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %109, %68
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %80 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %77
  %84 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %84, i64 %86
  %88 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @GNTST_okay, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %83
  %96 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %97 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %101, i64 %103
  %105 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %100, i64 %106)
  br label %108

108:                                              ; preds = %95, %83
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %77

112:                                              ; preds = %77
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %117 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %115, %112
  %123 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %4, align 8
  %124 = call i32 @kfree(%struct.gnttab_unmap_grant_ref* %123)
  %125 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %126 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %125, i32 0, i32 1
  %127 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %126, align 8
  %128 = call i32 @kfree(%struct.gnttab_unmap_grant_ref* %127)
  %129 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %130 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %129, i32 0, i32 1
  store %struct.gnttab_unmap_grant_ref* null, %struct.gnttab_unmap_grant_ref** %130, align 8
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %122, %31, %22
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.gnttab_unmap_grant_ref* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @xen_page_to_vaddr(i32) #1

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i32, i32, i64) #1

declare dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref*, i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree(%struct.gnttab_unmap_grant_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
