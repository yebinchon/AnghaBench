; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_setup_auto_xlat_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_setup_auto_xlat_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i8* }

@xen_auto_xlat_grant_frames = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to ioremap gnttab share frames (addr=%pa)!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_setup_auto_xlat_frames(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @__max_nr_grant_frames()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xen_auto_xlat_grant_frames, i32 0, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %16, %17
  %19 = call i8* @xen_remap(i32 %15, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %3)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64* @kcalloc(i32 %27, i32 8, i32 %28)
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @xen_unmap(i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @XEN_PFN_DOWN(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i64*, i64** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xen_auto_xlat_grant_frames, i32 0, i32 2), align 8
  %57 = load i64*, i64** %4, align 8
  store i64* %57, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xen_auto_xlat_grant_frames, i32 0, i32 1), align 8
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xen_auto_xlat_grant_frames, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %32, %22, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @__max_nr_grant_frames(...) #1

declare dso_local i8* @xen_remap(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32*) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @xen_unmap(i8*) #1

declare dso_local i64 @XEN_PFN_DOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
