; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dcssblk.c___dcssblk_direct_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dcssblk.c___dcssblk_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcssblk_dev_info = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PFN_DEV = common dso_local global i32 0, align 4
@PFN_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dcssblk_dev_info*, i64, i64, i8**, i32*)* @__dcssblk_direct_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__dcssblk_direct_access(%struct.dcssblk_dev_info* %0, i64 %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.dcssblk_dev_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dcssblk_dev_info* %0, %struct.dcssblk_dev_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %11, align 8
  %16 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %6, align 8
  %17 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %6, align 8
  %20 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %12, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %6, align 8
  %29 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = load i8**, i8*** %9, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %27, %5
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %6, align 8
  %41 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @PFN_DOWN(i32 %46)
  %48 = load i32, i32* @PFN_DEV, align 4
  %49 = load i32, i32* @PFN_SPECIAL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @__pfn_to_pfn_t(i32 %47, i32 %50)
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %39, %36
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = udiv i64 %56, %57
  ret i64 %58
}

declare dso_local i32 @__pfn_to_pfn_t(i32, i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
