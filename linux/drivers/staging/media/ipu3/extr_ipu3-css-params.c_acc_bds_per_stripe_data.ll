; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_acc_bds_per_stripe_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_acc_bds_per_stripe_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe* }
%struct.imgu_css_pipe = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.imgu_abi_acc_param = type { %struct.TYPE_12__, %struct.TYPE_18__ }
%struct.TYPE_12__ = type { %struct.TYPE_22__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@IPU3_CSS_RECT_BDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_css*, %struct.imgu_abi_acc_param*, i32, i32)* @acc_bds_per_stripe_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acc_bds_per_stripe_data(%struct.imgu_css* %0, %struct.imgu_abi_acc_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.imgu_css*, align 8
  %6 = alloca %struct.imgu_abi_acc_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %5, align 8
  store %struct.imgu_abi_acc_param* %1, %struct.imgu_abi_acc_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %11 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %10, i32 0, i32 0
  %12 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %12, i64 %14
  store %struct.imgu_css_pipe* %15, %struct.imgu_css_pipe** %9, align 8
  %16 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %17 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %28 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %39 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %50 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %60 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = bitcast %struct.TYPE_16__* %58 to i8*
  %64 = bitcast %struct.TYPE_16__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 4, i1 false)
  %65 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %66 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %75 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i32 %73, i32* %84, align 8
  %85 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %86 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %95 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i32 %93, i32* %104, align 4
  %105 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %9, align 8
  %106 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %6, align 8
  %113 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  store i32 %111, i32* %122, align 8
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
