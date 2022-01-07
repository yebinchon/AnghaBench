; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_read_from_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_read_from_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block_data_ctx = type { i64, i64, i8** }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_block_data_ctx*, i8*, i64, i64)* @btrfsic_read_from_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_read_from_block_data(%struct.btrfsic_block_data_ctx* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btrfsic_block_data_ctx* %0, %struct.btrfsic_block_data_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @offset_in_page(i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @offset_in_page(i64 %36)
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %41, %4
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @min(i64 %42, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = call i64 @DIV_ROUND_UP(i64 %50, i64 %51)
  %53 = icmp uge i64 %47, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @memcpy(i8* %62, i8* %65, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %14, align 8
  br label %38

76:                                               ; preds = %38
  ret void
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
