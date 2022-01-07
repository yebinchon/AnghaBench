; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_block_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6598x = type { i32, i32 }

@TPS_MAX_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6598x*, i64, i8*, i64)* @tps6598x_block_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6598x_block_read(%struct.tps6598x* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps6598x*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tps6598x* %0, %struct.tps6598x** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @TPS_MAX_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 1
  %21 = mul nuw i64 8, %16
  %22 = icmp ugt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %69

29:                                               ; preds = %4
  %30 = load %struct.tps6598x*, %struct.tps6598x** %6, align 8
  %31 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.tps6598x*, %struct.tps6598x** %6, align 8
  %36 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @regmap_raw_read(i32 %37, i64 %38, i64* %40, i32 %42)
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %69

44:                                               ; preds = %29
  %45 = load %struct.tps6598x*, %struct.tps6598x** %6, align 8
  %46 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = mul nuw i64 8, %16
  %50 = trunc i64 %49 to i32
  %51 = call i32 @regmap_raw_read(i32 %47, i64 %48, i64* %18, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %69

56:                                               ; preds = %44
  %57 = getelementptr inbounds i64, i64* %18, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i64, i64* %18, i64 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @memcpy(i8* %65, i64* %66, i64 %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %64, %61, %54, %34, %26
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @regmap_raw_read(i32, i64, i64*, i32) #2

declare dso_local i32 @memcpy(i8*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
