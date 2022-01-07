; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_from_refs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_from_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_priv = type { i32, i32, i32 }
%struct.gntdev_grant_map = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.gntdev_dmabuf_export_args = type { i32, i32, i32, i32, i32, %struct.gntdev_grant_map*, %struct.gntdev_priv* }

@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTMAP_device_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_priv*, i32, i32, i8*, i8**, i8**)* @dmabuf_exp_from_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabuf_exp_from_refs(%struct.gntdev_priv* %0, i32 %1, i32 %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gntdev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.gntdev_grant_map*, align 8
  %15 = alloca %struct.gntdev_dmabuf_export_args, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gntdev_priv* %0, %struct.gntdev_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.gntdev_grant_map* @dmabuf_exp_alloc_backing_storage(%struct.gntdev_priv* %18, i32 %19, i32 %20)
  store %struct.gntdev_grant_map* %21, %struct.gntdev_grant_map** %14, align 8
  %22 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %23 = call i64 @IS_ERR(%struct.gntdev_grant_map* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %27 = call i32 @PTR_ERR(%struct.gntdev_grant_map* %26)
  store i32 %27, i32* %7, align 4
  br label %114

28:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %36 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  %42 = load i8**, i8*** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %48 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %46, i8** %53, align 8
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %59 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %62 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %63 = call i32 @gntdev_add_map(%struct.gntdev_priv* %61, %struct.gntdev_grant_map* %62)
  %64 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %65 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @GNTMAP_host_map, align 4
  %68 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %69 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %73 = call i32 @gntdev_map_grant_pages(%struct.gntdev_grant_map* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %109

77:                                               ; preds = %57
  %78 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %79 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 6
  store %struct.gntdev_priv* %78, %struct.gntdev_priv** %79, align 8
  %80 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %81 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 5
  store %struct.gntdev_grant_map* %80, %struct.gntdev_grant_map** %81, align 8
  %82 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %83 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %87 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %91 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %95 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = call i32 @dmabuf_exp_from_pages(%struct.gntdev_dmabuf_export_args* %15)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %77
  br label %109

103:                                              ; preds = %77
  %104 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load i8**, i8*** %13, align 8
  store i8* %107, i8** %108, align 8
  store i32 0, i32* %7, align 4
  br label %114

109:                                              ; preds = %102, %76
  %110 = load %struct.gntdev_priv*, %struct.gntdev_priv** %8, align 8
  %111 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %14, align 8
  %112 = call i32 @dmabuf_exp_remove_map(%struct.gntdev_priv* %110, %struct.gntdev_grant_map* %111)
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %109, %103, %25
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local %struct.gntdev_grant_map* @dmabuf_exp_alloc_backing_storage(%struct.gntdev_priv*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gntdev_grant_map*) #1

declare dso_local i32 @PTR_ERR(%struct.gntdev_grant_map*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gntdev_add_map(%struct.gntdev_priv*, %struct.gntdev_grant_map*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gntdev_map_grant_pages(%struct.gntdev_grant_map*) #1

declare dso_local i32 @dmabuf_exp_from_pages(%struct.gntdev_dmabuf_export_args*) #1

declare dso_local i32 @dmabuf_exp_remove_map(%struct.gntdev_priv*, %struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
