; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_......uwbuwb.h_edc_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_......uwbuwb.h_edc_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edc = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edc*, i64, i64)* @edc_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edc_inc(%struct.edc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.edc* %0, %struct.edc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.edc*, %struct.edc** %5, align 8
  %12 = getelementptr inbounds %struct.edc, %struct.edc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.edc*, %struct.edc** %5, align 8
  %19 = getelementptr inbounds %struct.edc, %struct.edc* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.edc*, %struct.edc** %5, align 8
  %22 = getelementptr inbounds %struct.edc, %struct.edc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.edc*, %struct.edc** %5, align 8
  %25 = getelementptr inbounds %struct.edc, %struct.edc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.edc*, %struct.edc** %5, align 8
  %33 = getelementptr inbounds %struct.edc, %struct.edc* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.edc*, %struct.edc** %5, align 8
  %36 = getelementptr inbounds %struct.edc, %struct.edc* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  store i32 1, i32* %4, align 4
  br label %39

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %17
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
