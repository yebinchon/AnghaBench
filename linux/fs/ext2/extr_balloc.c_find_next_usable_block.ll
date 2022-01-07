; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_find_next_usable_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_find_next_usable_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Bit not found near goal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.buffer_head*, i32)* @find_next_usable_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_usable_block(i32 %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 63
  %18 = and i32 %17, -64
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ext2_find_next_zero_bit(i64 %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %85

36:                                               ; preds = %24
  %37 = call i32 @ext2_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %3
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 7
  %55 = ashr i32 %54, 3
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 3
  %58 = sub nsw i32 %55, %57
  %59 = call i8* @memscan(i8* %52, i32 0, i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = ptrtoint i8* %60 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = shl i64 %67, 3
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %43
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %85

79:                                               ; preds = %73, %43
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bitmap_search_next_usable_block(i32 %80, %struct.buffer_head* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %77, %34
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ext2_find_next_zero_bit(i64, i32, i32) #1

declare dso_local i32 @ext2_debug(i8*) #1

declare dso_local i8* @memscan(i8*, i32, i32) #1

declare dso_local i32 @bitmap_search_next_usable_block(i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
