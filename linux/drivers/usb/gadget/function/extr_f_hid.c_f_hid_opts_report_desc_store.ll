; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_f_hid_opts_report_desc_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_f_hid_opts_report_desc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.f_hid_opts = type { i8*, i64, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @f_hid_opts_report_desc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_hid_opts_report_desc_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f_hid_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.f_hid_opts* @to_f_hid_opts(%struct.config_item* %10)
  store %struct.f_hid_opts* %11, %struct.f_hid_opts** %7, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %15 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %18 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %54

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %54

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmemdup(i8* %30, i64 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %54

39:                                               ; preds = %29
  %40 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %41 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %46 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %49 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %51 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %39, %36, %26, %21
  %55 = load %struct.f_hid_opts*, %struct.f_hid_opts** %7, align 8
  %56 = getelementptr inbounds %struct.f_hid_opts, %struct.f_hid_opts* %55, i32 0, i32 3
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.f_hid_opts* @to_f_hid_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
