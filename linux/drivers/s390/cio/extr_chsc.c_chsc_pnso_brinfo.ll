; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_pnso_brinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_pnso_brinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_pnso_area = type { i32, %struct.TYPE_4__, %struct.chsc_brinfo_resume_token, i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.chsc_brinfo_resume_token = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.subchannel_id = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_pnso_brinfo(i64 %0, i64 %1, %struct.chsc_pnso_area* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.subchannel_id, align 4
  %8 = alloca %struct.chsc_brinfo_resume_token, align 4
  %9 = alloca %struct.chsc_pnso_area*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.subchannel_id* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 4
  %14 = getelementptr inbounds %struct.chsc_brinfo_resume_token, %struct.chsc_brinfo_resume_token* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.chsc_pnso_area* %2, %struct.chsc_pnso_area** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %16 = call i32 @memset(%struct.chsc_pnso_area* %15, i32 0, i32 48)
  %17 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %18 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 48, i32* %19, align 8
  %20 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %21 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 61, i32* %22, align 4
  %23 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %26 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %30 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %34 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %38 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %40 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %42 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %41, i32 0, i32 2
  %43 = bitcast %struct.chsc_brinfo_resume_token* %42 to i8*
  %44 = bitcast %struct.chsc_brinfo_resume_token* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %49 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %51 = call i64 @chsc(%struct.chsc_pnso_area* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %5
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %62

56:                                               ; preds = %5
  %57 = load %struct.chsc_pnso_area*, %struct.chsc_pnso_area** %9, align 8
  %58 = getelementptr inbounds %struct.chsc_pnso_area, %struct.chsc_pnso_area* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @chsc_error_from_response(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.chsc_pnso_area*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @chsc(%struct.chsc_pnso_area*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
