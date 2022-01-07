; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_build_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_build_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sg_table*, i64)* @ffs_build_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ffs_build_sg_list(%struct.sg_table* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sg_table* %0, %struct.sg_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @vmalloc(i64 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %66

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @PAGE_ALIGN(i64 %17)
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.page** @kvmalloc_array(i32 %21, i32 8, i32 %22)
  store %struct.page** %23, %struct.page*** %6, align 8
  %24 = load %struct.page**, %struct.page*** %6, align 8
  %25 = icmp ne %struct.page** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @vfree(i8* %27)
  store i8* null, i8** %3, align 8
  br label %66

29:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %42, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call %struct.page* @vmalloc_to_page(i8* %36)
  %38 = load %struct.page**, %struct.page*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 %40
  store %struct.page* %37, %struct.page** %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %51 = load %struct.page**, %struct.page*** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64 @sg_alloc_table_from_pages(%struct.sg_table* %50, %struct.page** %51, i32 %52, i32 0, i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.page**, %struct.page*** %6, align 8
  %59 = call i32 @kvfree(%struct.page** %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @vfree(i8* %60)
  store i8* null, i8** %3, align 8
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.page**, %struct.page*** %6, align 8
  %64 = call i32 @kvfree(%struct.page** %63)
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %62, %57, %26, %15
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page** @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i64 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i64, i32) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
