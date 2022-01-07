; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_comp_write_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_comp_write_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdebug_store_sectors = common dso_local global i64 0, align 8
@sdebug_sector_size = common dso_local global i64 0, align 8
@fake_storep = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @comp_write_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_write_worker(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* @sdebug_store_sectors, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @sdebug_sector_size, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i64 @do_div(i64 %15, i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %11, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %11, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %23, %3
  %30 = load i64, i64* @fake_storep, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %12, align 8
  %33 = mul nsw i64 %31, %32
  %34 = add nsw i64 %30, %33
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %12, align 8
  %40 = mul nsw i64 %38, %39
  %41 = call i32 @memcmp(i64 %34, i32* %35, i64 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %105

49:                                               ; preds = %29
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i64, i64* @fake_storep, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = mul nsw i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = mul nsw i64 %61, %62
  %64 = call i32 @memcmp(i64 %53, i32* %60, i64 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %52, %49
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %105

70:                                               ; preds = %65
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = mul nsw i64 %71, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %7, align 8
  %76 = load i64, i64* @fake_storep, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = mul nsw i64 %77, %78
  %80 = add nsw i64 %76, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i64, i64* %12, align 8
  %86 = mul nsw i64 %84, %85
  %87 = call i32 @memcpy(i64 %80, i32* %81, i64 %86)
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %70
  %91 = load i64, i64* @fake_storep, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i64, i64* %12, align 8
  %97 = mul nsw i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = mul nsw i64 %99, %100
  %102 = call i32 @memcpy(i64 %91, i32* %98, i64 %101)
  br label %103

103:                                              ; preds = %90, %70
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %68, %47
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i32 @memcmp(i64, i32*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
