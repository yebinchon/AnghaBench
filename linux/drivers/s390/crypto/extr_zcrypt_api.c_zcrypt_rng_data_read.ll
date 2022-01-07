; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_rng_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_rng_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }

@zcrypt_rng_buffer_index = common dso_local global i64 0, align 8
@zcrypt_rng_buffer = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32*)* @zcrypt_rng_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_rng_data_read(%struct.hwrng* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwrng*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @zcrypt_rng_buffer_index, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i32*, i32** @zcrypt_rng_buffer, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @zcrypt_rng(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = call i64 (...) @zcrypt_process_rescan()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** @zcrypt_rng_buffer, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @zcrypt_rng(i8* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %17, %9
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  store i64 %33, i64* @zcrypt_rng_buffer_index, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32*, i32** @zcrypt_rng_buffer, align 8
  %36 = load i64, i64* @zcrypt_rng_buffer_index, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* @zcrypt_rng_buffer_index, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 4, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @zcrypt_rng(i8*) #1

declare dso_local i64 @zcrypt_process_rescan(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
