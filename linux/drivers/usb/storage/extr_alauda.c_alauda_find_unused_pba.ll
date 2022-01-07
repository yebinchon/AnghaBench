; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_find_unused_pba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_find_unused_pba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda_media_info = type { i32, i32, i64** }

@UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.alauda_media_info*, i32)* @alauda_find_unused_pba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alauda_find_unused_pba(%struct.alauda_media_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.alauda_media_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.alauda_media_info* %0, %struct.alauda_media_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.alauda_media_info*, %struct.alauda_media_info** %4, align 8
  %9 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %8, i32 0, i32 2
  %10 = load i64**, i64*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64*, i64** %10, i64 %12
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.alauda_media_info*, %struct.alauda_media_info** %4, align 8
  %18 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNDEF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.alauda_media_info*, %struct.alauda_media_info** %4, align 8
  %32 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  br label %43

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %15

42:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
