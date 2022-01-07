; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring_valloc_hvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring_valloc_hvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_map_node = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }
%struct.map_ring_valloc_hvm = type { i32, i32, i32 }

@XENBUS_MAX_RING_GRANTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xenbus_map_ring_setup_grant_hvm = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@VM_IOREMAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@xenbus_valloc_lock = common dso_local global i32 0, align 4
@xenbus_valloc_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"leaking %p size %u page(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, i32*, i32, i8**)* @xenbus_map_ring_valloc_hvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenbus_map_ring_valloc_hvm(%struct.xenbus_device* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.xenbus_map_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.map_ring_valloc_hvm, align 4
  %15 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = bitcast %struct.map_ring_valloc_hvm* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @XENBUS_PAGES(i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %128

25:                                               ; preds = %4
  %26 = load i8**, i8*** %9, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.xenbus_map_node* @kzalloc(i32 32, i32 %27)
  store %struct.xenbus_map_node* %28, %struct.xenbus_map_node** %10, align 8
  %29 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %30 = icmp ne %struct.xenbus_map_node* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %128

34:                                               ; preds = %25
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %37 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @alloc_xenballooned_pages(i32 %35, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %124

44:                                               ; preds = %34
  %45 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %46 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @xenbus_map_ring_setup_grant_hvm, align 4
  %51 = call i32 @gnttab_foreach_grant(i32 %48, i32 %49, i32 %50, %struct.map_ring_valloc_hvm* %14)
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %56 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.map_ring_valloc_hvm, %struct.map_ring_valloc_hvm* %14, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GNTMAP_host_map, align 4
  %61 = call i32 @__xenbus_map_ring(%struct.xenbus_device* %52, i32* %53, i32 %54, i32 %57, i32 %59, i32 %60, i32* %13)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %64 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %113

68:                                               ; preds = %44
  %69 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %70 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @VM_MAP, align 4
  %75 = load i32, i32* @VM_IOREMAP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PAGE_KERNEL, align 4
  %78 = call i8* @vmap(i32 %72, i32 %73, i32 %76, i32 %77)
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %96

84:                                               ; preds = %68
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %87 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = call i32 @spin_lock(i32* @xenbus_valloc_lock)
  %90 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %91 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %90, i32 0, i32 3
  %92 = call i32 @list_add(i32* %91, i32* @xenbus_valloc_pages)
  %93 = call i32 @spin_unlock(i32* @xenbus_valloc_lock)
  %94 = load i8*, i8** %12, align 8
  %95 = load i8**, i8*** %9, align 8
  store i8* %94, i8** %95, align 8
  store i32 0, i32* %5, align 4
  br label %128

96:                                               ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %101 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %102 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds %struct.map_ring_valloc_hvm, %struct.map_ring_valloc_hvm* %14, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @xenbus_unmap_ring(%struct.xenbus_device* %100, i32 %103, i32 %104, i32 %106)
  br label %112

108:                                              ; preds = %96
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %99
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %119 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @free_xenballooned_pages(i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %116, %113
  br label %124

124:                                              ; preds = %123, %43
  %125 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %10, align 8
  %126 = call i32 @kfree(%struct.xenbus_map_node* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %84, %31, %22
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @XENBUS_PAGES(i32) #2

declare dso_local %struct.xenbus_map_node* @kzalloc(i32, i32) #2

declare dso_local i32 @alloc_xenballooned_pages(i32, i32) #2

declare dso_local i32 @gnttab_foreach_grant(i32, i32, i32, %struct.map_ring_valloc_hvm*) #2

declare dso_local i32 @__xenbus_map_ring(%struct.xenbus_device*, i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i8* @vmap(i32, i32, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @xenbus_unmap_ring(%struct.xenbus_device*, i32, i32, i32) #2

declare dso_local i32 @pr_alert(i8*, i8*, i32) #2

declare dso_local i32 @free_xenballooned_pages(i32, i32) #2

declare dso_local i32 @kfree(%struct.xenbus_map_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
