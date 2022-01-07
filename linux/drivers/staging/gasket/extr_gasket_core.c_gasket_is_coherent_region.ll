; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_is_coherent_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_is_coherent_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_driver_desc = type { %struct.gasket_coherent_buffer_desc }
%struct.gasket_coherent_buffer_desc = type { i64, i64, i64 }

@GASKET_NOMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_driver_desc*, i64)* @gasket_is_coherent_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_is_coherent_region(%struct.gasket_driver_desc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_driver_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gasket_coherent_buffer_desc, align 8
  store %struct.gasket_driver_desc* %0, %struct.gasket_driver_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %4, align 8
  %8 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %7, i32 0, i32 0
  %9 = bitcast %struct.gasket_coherent_buffer_desc* %6 to i8*
  %10 = bitcast %struct.gasket_coherent_buffer_desc* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.gasket_coherent_buffer_desc, %struct.gasket_coherent_buffer_desc* %6, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GASKET_NOMAP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.gasket_coherent_buffer_desc, %struct.gasket_coherent_buffer_desc* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.gasket_coherent_buffer_desc, %struct.gasket_coherent_buffer_desc* %6, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.gasket_coherent_buffer_desc, %struct.gasket_coherent_buffer_desc* %6, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %23, %25
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %31

29:                                               ; preds = %20, %15
  br label %30

30:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
