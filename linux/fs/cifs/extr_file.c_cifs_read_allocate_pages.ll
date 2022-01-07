; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_read_allocate_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_read_allocate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_readdata = type { %struct.page** }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_readdata*, i32)* @cifs_read_allocate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_read_allocate_pages(%struct.cifs_readdata* %0, i32 %1) #0 {
  %3 = alloca %struct.cifs_readdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cifs_readdata* %0, %struct.cifs_readdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @__GFP_HIGHMEM, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.page* @alloc_page(i32 %16)
  store %struct.page* %17, %struct.page** %6, align 8
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %34

23:                                               ; preds = %13
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %26 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %25, i32 0, i32 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %29
  store %struct.page* %24, %struct.page** %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %9

34:                                               ; preds = %20, %9
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %58, %37
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %45 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %44, i32 0, i32 0
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  %51 = call i32 @put_page(%struct.page* %50)
  %52 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %53 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %52, i32 0, i32 0
  %54 = load %struct.page**, %struct.page*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  store %struct.page* null, %struct.page** %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %39

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
