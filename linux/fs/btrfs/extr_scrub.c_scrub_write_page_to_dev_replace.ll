; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_write_page_to_dev_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_write_page_to_dev_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, %struct.scrub_page** }
%struct.scrub_page = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scrub_block*, i32)* @scrub_write_page_to_dev_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_write_page_to_dev_replace(%struct.scrub_block* %0, i32 %1) #0 {
  %3 = alloca %struct.scrub_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scrub_page*, align 8
  %6 = alloca i8*, align 8
  store %struct.scrub_block* %0, %struct.scrub_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scrub_block*, %struct.scrub_block** %3, align 8
  %8 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %7, i32 0, i32 1
  %9 = load %struct.scrub_page**, %struct.scrub_page*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %9, i64 %11
  %13 = load %struct.scrub_page*, %struct.scrub_page** %12, align 8
  store %struct.scrub_page* %13, %struct.scrub_page** %5, align 8
  %14 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %15 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %21 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %26 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i8* @kmap_atomic(i32* %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @clear_page(i8* %29)
  %31 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %32 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @flush_dcache_page(i32* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @kunmap_atomic(i8* %35)
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.scrub_block*, %struct.scrub_block** %3, align 8
  %39 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %42 = call i32 @scrub_add_page_to_wr_bio(i32 %40, %struct.scrub_page* %41)
  ret i32 %42
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmap_atomic(i32*) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @flush_dcache_page(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @scrub_add_page_to_wr_bio(i32, %struct.scrub_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
