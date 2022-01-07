; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c___scrub_mark_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c___scrub_mark_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_parity = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_parity*, i64*, i64, i64)* @__scrub_mark_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scrub_mark_bitmap(%struct.scrub_parity* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.scrub_parity*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.scrub_parity* %0, %struct.scrub_parity** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %14 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %22 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i64*, i64** %6, align 8
  %27 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %28 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bitmap_set(i64* %26, i64 0, i64 %29)
  br label %84

31:                                               ; preds = %4
  %32 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %33 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %39 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @div64_u64_rem(i64 %37, i64 %40, i64* %9)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @div_u64(i64 %42, i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @div_u64(i64 %45, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @UINT_MAX, align 8
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %58 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %31
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @bitmap_set(i64* %62, i64 %63, i64 %64)
  br label %84

66:                                               ; preds = %31
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %70 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i32 @bitmap_set(i64* %67, i64 %68, i64 %73)
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.scrub_parity*, %struct.scrub_parity** %5, align 8
  %78 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = sub nsw i64 %76, %81
  %83 = call i32 @bitmap_set(i64* %75, i64 0, i64 %82)
  br label %84

84:                                               ; preds = %66, %61, %25
  ret void
}

declare dso_local i32 @bitmap_set(i64*, i64, i64) #1

declare dso_local i64 @div64_u64_rem(i64, i64, i64*) #1

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
