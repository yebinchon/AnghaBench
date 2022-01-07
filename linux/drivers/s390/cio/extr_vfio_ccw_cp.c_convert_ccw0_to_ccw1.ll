; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_convert_ccw0_to_ccw1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_convert_ccw0_to_ccw1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i32, i64, i64 }
%struct.ccw0 = type { i32, i32, i64, i64 }

@CCW_CMD_TIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, i64)* @convert_ccw0_to_ccw1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ccw0_to_ccw1(%struct.ccw1* %0, i64 %1) #0 {
  %3 = alloca %struct.ccw1*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccw0, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  store %struct.ccw1* %8, %struct.ccw1** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %16 = bitcast %struct.ccw1* %15 to %struct.ccw0*
  %17 = bitcast %struct.ccw0* %5 to i8*
  %18 = bitcast %struct.ccw0* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %20 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 15
  %23 = load i32, i32* @CCW_CMD_TIC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load i32, i32* @CCW_CMD_TIC, align 4
  %27 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %28 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  br label %46

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.ccw0, %struct.ccw0* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %37 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.ccw0, %struct.ccw0* %5, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %41 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = getelementptr inbounds %struct.ccw0, %struct.ccw0* %5, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %33, %25
  %47 = getelementptr inbounds %struct.ccw0, %struct.ccw0* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %52 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %51, i32 1
  store %struct.ccw1* %52, %struct.ccw1** %6, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
