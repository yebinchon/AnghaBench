; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@nr_grant_frames = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@gnttab_shared = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xen_auto_xlat_grant_frames = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"gnttab share frames is not mapped!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gnttab_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnttab_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @gnttab_max_grant_frames()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @nr_grant_frames, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOSYS, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %30

10:                                               ; preds = %0
  %11 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %12 = call i64 @xen_feature(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gnttab_shared, i32 0, i32 0), align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xen_auto_xlat_grant_frames, i32 0, i32 0), align 8
  store i32* %18, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gnttab_shared, i32 0, i32 0), align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gnttab_shared, i32 0, i32 0), align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %30

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %14, %10
  %27 = load i32, i32* @nr_grant_frames, align 4
  %28 = sub i32 %27, 1
  %29 = call i32 @gnttab_map(i32 0, i32 %28)
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %26, %21, %7
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @gnttab_max_grant_frames(...) #1

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @gnttab_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
