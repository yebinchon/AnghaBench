; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_store_gamma_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_store_gamma_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.fbtft_par* }
%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*, i32*)* }
%struct.fbtft_par.0 = type opaque

@FBTFT_GAMMA_MAX_VALUES_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_gamma_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_gamma_curve(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.fbtft_par*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %16)
  store %struct.fb_info* %17, %struct.fb_info** %10, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %19, align 8
  store %struct.fbtft_par* %20, %struct.fbtft_par** %11, align 8
  %21 = load i32, i32* @FBTFT_GAMMA_MAX_VALUES_TOTAL, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @fbtft_gamma_parse_str(%struct.fbtft_par* %25, i32* %24, i8* %26, i64 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %73

33:                                               ; preds = %4
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %35 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.fbtft_par.0*, i32*)*, i32 (%struct.fbtft_par.0*, i32*)** %36, align 8
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %39 = bitcast %struct.fbtft_par* %38 to %struct.fbtft_par.0*
  %40 = call i32 %37(%struct.fbtft_par.0* %39, i32* %24)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %73

45:                                               ; preds = %33
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %47 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %51 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %55 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %59 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32 %53, i32* %24, i32 %65)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %11, align 8
  %68 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %73

73:                                               ; preds = %45, %43, %31
  %74 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fbtft_gamma_parse_str(%struct.fbtft_par*, i32*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
