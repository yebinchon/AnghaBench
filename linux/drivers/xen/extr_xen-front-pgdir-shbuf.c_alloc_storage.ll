; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_alloc_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_alloc_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_front_pgdir_shbuf*)* @alloc_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_storage(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %3, align 8
  %4 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %5 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kcalloc(i32 %6, i32 1, i32 %7)
  %9 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %10 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %12 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %20 = call i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf* %19)
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %25 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %3, align 8
  %27 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_num_pages_dir(%struct.xen_front_pgdir_shbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
