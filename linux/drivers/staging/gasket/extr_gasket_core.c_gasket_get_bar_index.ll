; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_get_bar_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_get_bar_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { %struct.gasket_bar_desc* }
%struct.gasket_bar_desc = type { i64, i64, i64 }

@GASKET_NUM_BARS = common dso_local global i32 0, align 4
@GASKET_NOMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, i64)* @gasket_get_bar_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_get_bar_index(%struct.gasket_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_driver_desc*, align 8
  %8 = alloca %struct.gasket_bar_desc, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %12, align 8
  store %struct.gasket_driver_desc* %13, %struct.gasket_driver_desc** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GASKET_NUM_BARS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %7, align 8
  %20 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %19, i32 0, i32 0
  %21 = load %struct.gasket_bar_desc*, %struct.gasket_bar_desc** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %21, i64 %23
  %25 = bitcast %struct.gasket_bar_desc* %8 to i8*
  %26 = bitcast %struct.gasket_bar_desc* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GASKET_NOMAP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %8, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %8, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %39, %41
  %43 = icmp slt i64 %37, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %36, %31
  br label %47

47:                                               ; preds = %46, %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
