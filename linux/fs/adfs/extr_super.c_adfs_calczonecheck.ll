; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_calczonecheck.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_calczonecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.super_block*, i8*)* @adfs_calczonecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @adfs_calczonecheck(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %73, %2
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = lshr i32 %24, 8
  %26 = add i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 8
  %40 = add i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %5, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = lshr i32 %52, 8
  %54 = add i32 %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 255
  store i32 %58, i32* %6, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = lshr i32 %66, 8
  %68 = add i32 %65, %67
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 255
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %17
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 4
  store i32 %75, i32* %9, align 4
  br label %14

76:                                               ; preds = %14
  %77 = load i32, i32* %8, align 4
  %78 = lshr i32 %77, 8
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = lshr i32 %85, 8
  %87 = add i32 %84, %86
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = lshr i32 %94, 8
  %96 = add i32 %93, %95
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = lshr i32 %103, 8
  %105 = add i32 %102, %104
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = xor i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = xor i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = xor i32 %112, %113
  %115 = trunc i32 %114 to i8
  ret i8 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
