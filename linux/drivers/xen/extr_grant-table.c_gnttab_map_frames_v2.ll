; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_map_frames_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_map_frames_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gnttab_get_status_frames = type { i32, i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@GNTTABOP_get_status_frames = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@grstatus = common dso_local global i32 0, align 4
@gnttab_shared = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @gnttab_map_frames_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnttab_map_frames_v2(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gnttab_get_status_frames, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @nr_status_frames(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i32* @kmalloc_array(i32 %12, i32 4, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load i32, i32* @DOMID_SELF, align 4
  %22 = getelementptr inbounds %struct.gnttab_get_status_frames, %struct.gnttab_get_status_frames* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.gnttab_get_status_frames, %struct.gnttab_get_status_frames* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.gnttab_get_status_frames, %struct.gnttab_get_status_frames* %8, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @set_xen_guest_handle(i32 %26, i32* %27)
  %29 = load i32, i32* @GNTTABOP_get_status_frames, align 4
  %30 = call i32 @HYPERVISOR_grant_table_op(i32 %29, %struct.gnttab_get_status_frames* %8, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %20
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.gnttab_get_status_frames, %struct.gnttab_get_status_frames* %8, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ true, %40 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (...) @gnttab_max_grant_frames()
  %54 = call i32 @nr_status_frames(i32 %53)
  %55 = call i32 @arch_gnttab_map_status(i32* %51, i32 %52, i32 %54, i32* @grstatus)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (...) @gnttab_max_grant_frames()
  %63 = call i32 @arch_gnttab_map_shared(i32* %60, i32 %61, i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnttab_shared, i32 0, i32 0))
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @BUG_ON(i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %47, %35, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @nr_status_frames(i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_get_status_frames*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @arch_gnttab_map_status(i32*, i32, i32, i32*) #1

declare dso_local i32 @gnttab_max_grant_frames(...) #1

declare dso_local i32 @arch_gnttab_map_shared(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
