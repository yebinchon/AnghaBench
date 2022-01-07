; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c___orc_alloc_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c___orc_alloc_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_scb = type { i32 }
%struct.orc_host = type { i32, i32**, %struct.orc_scb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.orc_scb* (%struct.orc_host*)* @__orc_alloc_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.orc_scb* @__orc_alloc_scb(%struct.orc_host* %0) #0 {
  %2 = alloca %struct.orc_scb*, align 8
  %3 = alloca %struct.orc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.orc_host* %0, %struct.orc_host** %3, align 8
  %8 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %9 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %65, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %61, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %20 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %39 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %37
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 32, %51
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  %55 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %56 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %55, i32 0, i32 2
  %57 = load %struct.orc_scb*, %struct.orc_scb** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %57, i64 %58
  store %struct.orc_scb* %59, %struct.orc_scb** %2, align 8
  br label %69

60:                                               ; preds = %18
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %15

64:                                               ; preds = %15
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %11

68:                                               ; preds = %11
  store %struct.orc_scb* null, %struct.orc_scb** %2, align 8
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.orc_scb*, %struct.orc_scb** %2, align 8
  ret %struct.orc_scb* %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
