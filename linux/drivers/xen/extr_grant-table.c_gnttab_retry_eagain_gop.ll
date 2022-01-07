; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_retry_eagain_gop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_retry_eagain_gop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GNTST_eagain = common dso_local global i64 0, align 8
@MAX_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: %s eagain grant\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@GNTST_bad_page = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64*, i8*)* @gnttab_retry_eagain_gop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnttab_retry_eagain_gop(i32 %0, i8* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @HYPERVISOR_grant_table_op(i32 %11, i8* %12, i32 1)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GNTST_eagain, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = call i32 @msleep(i32 %20)
  br label %23

23:                                               ; preds = %19, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GNTST_eagain, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_DELAY, align 4
  %32 = icmp ult i32 %30, %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %10, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_DELAY, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %43)
  %45 = load i64, i64* @GNTST_bad_page, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
