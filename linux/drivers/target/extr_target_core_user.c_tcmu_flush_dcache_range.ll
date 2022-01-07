; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_flush_dcache_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_flush_dcache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @tcmu_flush_dcache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcmu_flush_dcache_range(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @offset_in_page(i8* %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 0, %11
  %13 = getelementptr i8, i8* %10, i64 %12
  store i8* %13, i8** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = call i64 @round_up(i64 %16, i64 %17)
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %22, %2
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @virt_to_page(i8* %23)
  %25 = call i32 @flush_dcache_page(i32 %24)
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr i8, i8* %27, i64 %26
  store i8* %28, i8** %6, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %19

32:                                               ; preds = %19
  ret void
}

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
