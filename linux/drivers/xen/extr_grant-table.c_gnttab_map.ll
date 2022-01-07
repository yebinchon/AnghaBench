; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.gnttab_setup_table = type { i32, i64, i32, i8* }
%struct.xen_add_to_physmap = type { i32, i32, i32, i8* }

@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@xen_auto_xlat_grant_frames = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@DOMID_SELF = common dso_local global i8* null, align 8
@XENMAPSPACE_grant_table = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"grant table add_to_physmap failed, err=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GNTTABOP_setup_table = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@gnttab_interface = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gnttab_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnttab_map(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnttab_setup_table, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xen_add_to_physmap, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %15 = call i64 @xen_feature(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xen_auto_xlat_grant_frames, i32 0, i32 0), align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  br label %24

24:                                               ; preds = %45, %17
  %25 = load i8*, i8** @DOMID_SELF, align 8
  %26 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %10, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @XENMAPSPACE_grant_table, align 4
  %30 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xen_auto_xlat_grant_frames, i32 0, i32 1), align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @XENMEM_add_to_physmap, align 4
  %38 = call i32 @HYPERVISOR_memory_op(i32 %37, %struct.xen_add_to_physmap* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %50

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %24, label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %101

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32* @kmalloc_array(i32 %53, i32 8, i32 %54)
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %101

61:                                               ; preds = %52
  %62 = load i8*, i8** @DOMID_SELF, align 8
  %63 = getelementptr inbounds %struct.gnttab_setup_table, %struct.gnttab_setup_table* %6, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds %struct.gnttab_setup_table, %struct.gnttab_setup_table* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.gnttab_setup_table, %struct.gnttab_setup_table* %6, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @set_xen_guest_handle(i32 %67, i32* %68)
  %70 = load i32, i32* @GNTTABOP_setup_table, align 4
  %71 = call i32 @HYPERVISOR_grant_table_op(i32 %70, %struct.gnttab_setup_table* %6, i32 1)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ENOSYS, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @kfree(i32* %77)
  %79 = load i32, i32* @ENOSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %101

81:                                               ; preds = %61
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.gnttab_setup_table, %struct.gnttab_setup_table* %6, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ true, %81 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gnttab_interface, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32 (i32*, i32)*, i32 (i32*, i32)** %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 %94(i32* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %88, %76, %58, %50
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_setup_table*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
