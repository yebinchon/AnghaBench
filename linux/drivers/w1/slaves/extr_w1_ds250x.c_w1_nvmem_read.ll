; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_nvmem_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_nvmem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.w1_eprom_data* }
%struct.w1_eprom_data = type { i64, i32 (%struct.w1_slave*, i32)*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @w1_nvmem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_nvmem_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w1_slave*, align 8
  %11 = alloca %struct.w1_eprom_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.w1_slave*
  store %struct.w1_slave* %16, %struct.w1_slave** %10, align 8
  %17 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %18 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %17, i32 0, i32 0
  %19 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %18, align 8
  store %struct.w1_eprom_data* %19, %struct.w1_eprom_data** %11, align 8
  %20 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %11, align 8
  %21 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %12, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = sub i64 %38, %40
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @OFF2PG(i32 %43)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %58, %42
  %46 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %11, align 8
  %47 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %46, i32 0, i32 1
  %48 = load i32 (%struct.w1_slave*, i32)*, i32 (%struct.w1_slave*, i32)** %47, align 8
  %49 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = call i32 %48(%struct.w1_slave* %49, i32 %50)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %77

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @OFF2PG(i32 %64)
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %45, label %67

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %11, align 8
  %70 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @memcpy(i8* %68, i32* %74, i64 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %55, %27
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @OFF2PG(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
