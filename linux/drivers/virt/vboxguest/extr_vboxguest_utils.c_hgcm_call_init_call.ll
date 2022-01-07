; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_call_init_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_call_init_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmmdev_hgcm_call = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.vmmdev_hgcm_function_parameter = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VINF_SUCCESS = common dso_local global i32 0, align 4
@VMMDEV_HGCM_PARM_TYPE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmmdev_hgcm_call*, i32, i32, %struct.vmmdev_hgcm_function_parameter*, i32, i8**)* @hgcm_call_init_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgcm_call_init_call(%struct.vmmdev_hgcm_call* %0, i32 %1, i32 %2, %struct.vmmdev_hgcm_function_parameter* %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.vmmdev_hgcm_call*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmmdev_hgcm_function_parameter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.vmmdev_hgcm_function_parameter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.vmmdev_hgcm_call* %0, %struct.vmmdev_hgcm_call** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.vmmdev_hgcm_function_parameter* %3, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %17 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %18 = call %struct.vmmdev_hgcm_function_parameter* @VMMDEV_HGCM_CALL_PARMS(%struct.vmmdev_hgcm_call* %17)
  store %struct.vmmdev_hgcm_function_parameter* %18, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %19 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %19, i64 %21
  %23 = ptrtoint %struct.vmmdev_hgcm_function_parameter* %22 to i64
  %24 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %25 = ptrtoint %struct.vmmdev_hgcm_call* %24 to i64
  %26 = sub i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %29 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @VINF_SUCCESS, align 4
  %32 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %33 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %37 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %40 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %43 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %100, %6
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  %49 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %50 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %94 [
    i32 135, label %52
    i32 134, label %52
    i32 133, label %57
    i32 132, label %57
    i32 128, label %57
    i32 131, label %74
    i32 130, label %74
    i32 129, label %74
  ]

52:                                               ; preds = %48, %48
  %53 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %54 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %55 = bitcast %struct.vmmdev_hgcm_function_parameter* %53 to i8*
  %56 = bitcast %struct.vmmdev_hgcm_function_parameter* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  br label %99

57:                                               ; preds = %48, %48, %48
  %58 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %59 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %60 = load i8**, i8*** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %66 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %71 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @hgcm_call_init_linaddr(%struct.vmmdev_hgcm_call* %58, %struct.vmmdev_hgcm_function_parameter* %59, i8* %64, i32 %69, i32 %72, i32* %15)
  br label %99

74:                                               ; preds = %48, %48, %48
  %75 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %76 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %16, align 8
  %82 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %7, align 8
  %83 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %86 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %91 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @hgcm_call_init_linaddr(%struct.vmmdev_hgcm_call* %82, %struct.vmmdev_hgcm_function_parameter* %83, i8* %84, i32 %89, i32 %92, i32* %15)
  br label %99

94:                                               ; preds = %48
  %95 = call i32 @WARN_ON(i32 1)
  %96 = load i32, i32* @VMMDEV_HGCM_PARM_TYPE_INVALID, align 4
  %97 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %98 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %74, %57, %52
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %104 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %103, i32 1
  store %struct.vmmdev_hgcm_function_parameter* %104, %struct.vmmdev_hgcm_function_parameter** %10, align 8
  %105 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  %106 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %105, i32 1
  store %struct.vmmdev_hgcm_function_parameter* %106, %struct.vmmdev_hgcm_function_parameter** %13, align 8
  br label %44

107:                                              ; preds = %44
  ret void
}

declare dso_local %struct.vmmdev_hgcm_function_parameter* @VMMDEV_HGCM_CALL_PARMS(%struct.vmmdev_hgcm_call*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hgcm_call_init_linaddr(%struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_function_parameter*, i8*, i32, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
