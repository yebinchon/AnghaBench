; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_check_msr_delta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_check_msr_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { %struct.async_icount }
%struct.async_icount = type { i64, i64, i64, i64 }

@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CAR = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*, i64, %struct.async_icount*)* @check_msr_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_msr_delta(%struct.fwtty_port* %0, i64 %1, %struct.async_icount* %2) #0 {
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.async_icount*, align 8
  %7 = alloca %struct.async_icount, align 8
  %8 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.async_icount* %2, %struct.async_icount** %6, align 8
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %10 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %9, i32 0, i32 0
  %11 = bitcast %struct.async_icount* %7 to i8*
  %12 = bitcast %struct.async_icount* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @TIOCM_RNG, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %19 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %62, label %24

24:                                               ; preds = %17, %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @TIOCM_DSR, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %31 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %62, label %36

36:                                               ; preds = %29, %24
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @TIOCM_CAR, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %43 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %41, %36
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @TIOCM_CTS, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %55 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i1 [ false, %48 ], [ %59, %53 ]
  br label %62

62:                                               ; preds = %60, %41, %29, %17
  %63 = phi i1 [ true, %41 ], [ true, %29 ], [ true, %17 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %66 = bitcast %struct.async_icount* %65 to i8*
  %67 = bitcast %struct.async_icount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
