; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_expand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gnttab_interface = common dso_local global %struct.TYPE_2__* null, align 8
@nr_grant_frames = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"xen/grant-table: max_grant_frames reached cur=%u extra=%u limit=%u gnttab_free_count=%u req_entries=%u\0A\00", align 1
@gnttab_free_count = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gnttab_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnttab_expand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gnttab_interface, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* @nr_grant_frames, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gnttab_interface, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %12, %15
  %17 = sub i32 %16, 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gnttab_interface, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = udiv i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %22, %23
  %25 = call i32 (...) @gnttab_max_grant_frames()
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (...) @gnttab_max_grant_frames()
  %31 = load i32, i32* @gnttab_free_count, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = sub i32 %40, 1
  %42 = call i32 @gnttab_map(i32 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @grow_gnttab_list(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gnttab_max_grant_frames(...) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gnttab_map(i32, i32) #1

declare dso_local i32 @grow_gnttab_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
