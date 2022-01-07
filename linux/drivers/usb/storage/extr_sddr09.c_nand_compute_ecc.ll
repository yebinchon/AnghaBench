; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_nand_compute_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_nand_compute_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parity = common dso_local global i8* null, align 8
@ecc2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @nand_compute_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_compute_ecc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %8, align 1
  %11 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %59, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  %26 = load i8*, i8** @parity, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, i8* %26, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %55, %15
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = xor i32 %51, %46
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %44, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %35

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %12

62:                                               ; preds = %12
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 6
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 4
  %71 = add nsw i32 %66, %70
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 2
  %76 = add nsw i32 %71, %75
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = shl i32 %82, 1
  %84 = xor i32 %81, %83
  %85 = load i8*, i8** @parity, align 8
  %86 = load i8, i8* %8, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 170, i32 0
  %94 = xor i32 %84, %93
  %95 = xor i32 %94, -1
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %96, i8* %98, align 1
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 7
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 6
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 6
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, 4
  %107 = add nsw i32 %102, %106
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 5
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 2
  %112 = add nsw i32 %107, %111
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %112, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 %118, 1
  %120 = xor i32 %117, %119
  %121 = load i8*, i8** @parity, align 8
  %122 = load i8, i8* %8, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 170, i32 0
  %130 = xor i32 %120, %129
  %131 = xor i32 %130, -1
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8 %132, i8* %134, align 1
  %135 = load i8*, i8** @ecc2, align 8
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8 %139, i8* %141, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
