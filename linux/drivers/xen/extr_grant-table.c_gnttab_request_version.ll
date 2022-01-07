; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_request_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_request_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gnttab_set_version = type { i32 }

@xen_gnttab_version = common dso_local global i32 0, align 4
@GNTTABOP_set_version = common dso_local global i32 0, align 4
@gnttab_v2_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@gnttab_interface = common dso_local global %struct.TYPE_4__* null, align 8
@gnttab_v1_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Grant tables using version %d layout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gnttab_request_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnttab_request_version() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.gnttab_set_version, align 4
  %3 = call i64 (...) @gnttab_need_v2()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.gnttab_set_version, %struct.gnttab_set_version* %2, i32 0, i32 0
  store i32 2, i32* %6, align 4
  br label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.gnttab_set_version, %struct.gnttab_set_version* %2, i32 0, i32 0
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i32, i32* @xen_gnttab_version, align 4
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @xen_gnttab_version, align 4
  %14 = icmp sle i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @xen_gnttab_version, align 4
  %17 = getelementptr inbounds %struct.gnttab_set_version, %struct.gnttab_set_version* %2, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i32, i32* @GNTTABOP_set_version, align 4
  %20 = call i64 @HYPERVISOR_grant_table_op(i32 %19, %struct.gnttab_set_version* %2, i32 1)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gnttab_set_version, %struct.gnttab_set_version* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_4__* @gnttab_v2_ops, %struct.TYPE_4__** @gnttab_interface, align 8
  br label %29

28:                                               ; preds = %23, %18
  store %struct.TYPE_4__* @gnttab_v1_ops, %struct.TYPE_4__** @gnttab_interface, align 8
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gnttab_interface, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i64 @gnttab_need_v2(...) #1

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_set_version*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
