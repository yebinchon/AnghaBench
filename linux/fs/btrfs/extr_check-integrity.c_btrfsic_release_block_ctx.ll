; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_release_block_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_release_block_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block_data_ctx = type { i32, i32**, i32**, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_block_data_ctx*)* @btrfsic_release_block_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %0) #0 {
  %2 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfsic_block_data_ctx* %0, %struct.btrfsic_block_data_ctx** %2, align 8
  %4 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %97

8:                                                ; preds = %1
  %9 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = icmp ne i32** %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = icmp ne i32** %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = trunc i64 %26 to i32
  %28 = add i32 %25, %27
  %29 = sub i32 %28, 1
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = lshr i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %85, %8
  %33 = load i32, i32* %3, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %3, align 4
  %38 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %35
  %47 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kunmap(i32* %53)
  %55 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %46, %35
  %62 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @__free_page(i32* %77)
  %79 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %79, i32 0, i32 2
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %70, %61
  br label %32

86:                                               ; preds = %32
  %87 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %88 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %92 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  %93 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %93, i32 0, i32 2
  store i32** null, i32*** %94, align 8
  %95 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %95, i32 0, i32 1
  store i32** null, i32*** %96, align 8
  br label %97

97:                                               ; preds = %86, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kunmap(i32*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
