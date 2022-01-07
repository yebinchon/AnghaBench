; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_get_zeroed_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_get_zeroed_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @ecryptfs_get_zeroed_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecryptfs_get_zeroed_pages(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.page* @alloc_pages(i32 %9, i32 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call i64 @page_address(%struct.page* %15)
  store i64 %16, i64* %3, align 8
  br label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
