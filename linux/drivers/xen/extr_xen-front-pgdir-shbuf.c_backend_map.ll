; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_backend_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i32, i8*, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gnttab_map_grant_ref = type { i64, i32 }
%struct.xen_page_directory = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XEN_NUM_GREFS_PER_PAGE = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to map page %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to map grant references, ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_front_pgdir_shbuf*)* @backend_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backend_map(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %4 = alloca %struct.gnttab_map_grant_ref*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xen_page_directory*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %3, align 8
  store %struct.gnttab_map_grant_ref* null, %struct.gnttab_map_grant_ref** %4, align 8
  %14 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %15 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 16, i32 %17)
  %19 = bitcast i8* %18 to %struct.gnttab_map_grant_ref*
  store %struct.gnttab_map_grant_ref* %19, %struct.gnttab_map_grant_ref** %4, align 8
  %20 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %21 = icmp ne %struct.gnttab_map_grant_ref* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %186

25:                                               ; preds = %1
  %26 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %27 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %33 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %35 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %25
  %39 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %40 = call i32 @kfree(%struct.gnttab_map_grant_ref* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %186

43:                                               ; preds = %25
  %44 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %45 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  %47 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %48 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %111, %43
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %53 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.xen_page_directory*
  store %struct.xen_page_directory* %58, %struct.xen_page_directory** %11, align 8
  %59 = load i32, i32* @XEN_NUM_GREFS_PER_PAGE, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %100, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %66
  %71 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %72 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xen_page_to_vaddr(i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %79, i64 %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @GNTMAP_host_map, align 4
  %85 = load %struct.xen_page_directory*, %struct.xen_page_directory** %11, align 8
  %86 = getelementptr inbounds %struct.xen_page_directory, %struct.xen_page_directory* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %93 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref* %82, i32 %83, i32 %84, i32 %91, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %70
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %66

103:                                              ; preds = %66
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %5, align 8
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %50

114:                                              ; preds = %50
  %115 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %116 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %117 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %120 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @gnttab_map_refs(%struct.gnttab_map_grant_ref* %115, i32* null, i32* %118, i32 %121)
  store i32 %122, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %167, %114
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %126 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %123
  %130 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %130, i64 %132
  %134 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %137 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %142, i64 %144
  %146 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @GNTST_okay, align 8
  %149 = icmp ne i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %129
  %154 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %155 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %159, i64 %161
  %163 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %158, i64 %164)
  br label %166

166:                                              ; preds = %153, %129
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %123

170:                                              ; preds = %123
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %175 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %174, i32 0, i32 3
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %181 = call i32 @backend_unmap(%struct.xen_front_pgdir_shbuf* %180)
  br label %182

182:                                              ; preds = %173, %170
  %183 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %4, align 8
  %184 = call i32 @kfree(%struct.gnttab_map_grant_ref* %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %38, %22
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gnttab_map_grant_ref*) #1

declare dso_local i32 @xen_page_to_vaddr(i32) #1

declare dso_local i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref*, i32, i32, i32, i32) #1

declare dso_local i32 @gnttab_map_refs(%struct.gnttab_map_grant_ref*, i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @backend_unmap(%struct.xen_front_pgdir_shbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
