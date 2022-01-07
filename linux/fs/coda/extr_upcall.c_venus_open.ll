; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%struct.file = type { i32 }
%union.inputArgs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.CodaFid }
%union.outputArgs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.file* }

@open_by_fd = common dso_local global i32 0, align 4
@CODA_OPEN_BY_FD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_open(%struct.super_block* %0, %struct.CodaFid* %1, i32 %2, %struct.file** %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.CodaFid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file**, align 8
  %9 = alloca %union.inputArgs*, align 8
  %10 = alloca %union.outputArgs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.file** %3, %struct.file*** %8, align 8
  %14 = load i32, i32* @open_by_fd, align 4
  %15 = call i32 @SIZE(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @CODA_OPEN_BY_FD, align 4
  %17 = call i32 @UPARG(i32 %16)
  %18 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %19 = bitcast %union.inputArgs* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %22 = bitcast %struct.CodaFid* %20 to i8*
  %23 = bitcast %struct.CodaFid* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* %7, align 4
  %25 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %26 = bitcast %union.inputArgs* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call i32 @coda_vcp(%struct.super_block* %28)
  %30 = load i32, i32* %11, align 4
  %31 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %32 = call i32 @coda_upcall(i32 %29, i32 %30, i32* %12, %union.inputArgs* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %4
  %36 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %37 = bitcast %union.outputArgs* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.file*, %struct.file** %38, align 8
  %40 = load %struct.file**, %struct.file*** %8, align 8
  store %struct.file* %39, %struct.file** %40, align 8
  br label %41

41:                                               ; preds = %35, %4
  %42 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %43 = call i32 @kvfree(%union.inputArgs* %42)
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @UPARG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coda_upcall(i32, i32, i32*, %union.inputArgs*) #1

declare dso_local i32 @coda_vcp(%struct.super_block*) #1

declare dso_local i32 @kvfree(%union.inputArgs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
