; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_access_intent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_access_intent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%union.inputArgs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.CodaFid }
%union.outputArgs = type { i32 }

@CODA_ACCESS_TYPE_READ_FINISH = common dso_local global i32 0, align 4
@CODA_ACCESS_TYPE_WRITE_FINISH = common dso_local global i32 0, align 4
@access_intent = common dso_local global i32 0, align 4
@CODA_ACCESS_INTENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_access_intent(%struct.super_block* %0, %struct.CodaFid* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.CodaFid*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.inputArgs*, align 8
  %15 = alloca %union.outputArgs*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @CODA_ACCESS_TYPE_READ_FINISH, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @CODA_ACCESS_TYPE_WRITE_FINISH, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %6
  %28 = phi i1 [ true, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %19, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %88

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @access_intent, align 4
  %39 = call i32 @SIZE(i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @CODA_ACCESS_INTENT, align 4
  %41 = call i32 @UPARG(i32 %40)
  %42 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %43 = bitcast %union.inputArgs* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %46 = bitcast %struct.CodaFid* %44 to i8*
  %47 = bitcast %struct.CodaFid* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load i64, i64* %11, align 8
  %49 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %50 = bitcast %union.inputArgs* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %54 = bitcast %union.inputArgs* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %58 = bitcast %union.inputArgs* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %8, align 8
  %61 = call i32 @coda_vcp(%struct.super_block* %60)
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  br label %67

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi i32* [ null, %65 ], [ %17, %66 ]
  %69 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %70 = call i32 @coda_upcall(i32 %61, i32 %62, i32* %68, %union.inputArgs* %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %67
  %77 = load %union.inputArgs*, %union.inputArgs** %14, align 8
  %78 = call i32 @kvfree(%union.inputArgs* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %36
  %89 = load i32, i32* %7, align 4
  ret i32 %89
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
