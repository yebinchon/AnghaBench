; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_sadc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_sadc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.chsc_scssc_area = type { i32, i32, i32, %struct.TYPE_5__, %struct.subchannel_id, i32, i8*, i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.subchannel_id = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@QDIO_AIRQ_ISC = common dso_local global i32 0, align 4
@css_general_characteristics = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_sadc(i32 %0, %struct.chsc_scssc_area* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.subchannel_id, align 4
  %7 = alloca %struct.chsc_scssc_area*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %6, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store %struct.chsc_scssc_area* %1, %struct.chsc_scssc_area** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %12 = call i32 @memset(%struct.chsc_scssc_area* %11, i32 0, i32 56)
  %13 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %14 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 4064, i32* %15, align 8
  %16 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %17 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 33, i32* %18, align 4
  %19 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %20 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %23 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %26 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %28 = ashr i32 %27, 4
  %29 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %30 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %32 = ashr i32 %31, 4
  %33 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %34 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @QDIO_AIRQ_ISC, align 4
  %36 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %37 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %39 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %38, i32 0, i32 4
  %40 = bitcast %struct.subchannel_id* %39 to i8*
  %41 = bitcast %struct.subchannel_id* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @css_general_characteristics, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %46 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %45, i32 0, i32 2
  store i32 268435456, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %4
  %48 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %49 = call i64 @chsc(%struct.chsc_scssc_area* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %47
  %55 = load %struct.chsc_scssc_area*, %struct.chsc_scssc_area** %7, align 8
  %56 = getelementptr inbounds %struct.chsc_scssc_area, %struct.chsc_scssc_area* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @chsc_error_from_response(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.chsc_scssc_area*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @chsc(%struct.chsc_scssc_area*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
