; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_pipeline_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_pipeline_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.TYPE_8__*, %struct.TYPE_14__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { %struct.imgu_fw_info* }
%struct.imgu_fw_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64 }
%struct.imgu_fw_isp_parameter = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"parameter size doesn't match defined size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @imgu_css_fw_pipeline_params(%struct.imgu_css* %0, i32 %1, i32 %2, i32 %3, %struct.imgu_fw_isp_parameter* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.imgu_css*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.imgu_fw_isp_parameter*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.imgu_fw_info*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.imgu_fw_isp_parameter* %4, %struct.imgu_fw_isp_parameter** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.imgu_css*, %struct.imgu_css** %9, align 8
  %18 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %20, align 8
  %22 = load %struct.imgu_css*, %struct.imgu_css** %9, align 8
  %23 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %21, i64 %29
  store %struct.imgu_fw_info* %30, %struct.imgu_fw_info** %16, align 8
  %31 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %13, align 8
  %32 = getelementptr inbounds %struct.imgu_fw_isp_parameter, %struct.imgu_fw_isp_parameter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %13, align 8
  %35 = getelementptr inbounds %struct.imgu_fw_isp_parameter, %struct.imgu_fw_isp_parameter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %16, align 8
  %39 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %37, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %77

56:                                               ; preds = %7
  %57 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %13, align 8
  %58 = getelementptr inbounds %struct.imgu_fw_isp_parameter, %struct.imgu_fw_isp_parameter* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %13, align 8
  %66 = getelementptr inbounds %struct.imgu_fw_isp_parameter, %struct.imgu_fw_isp_parameter* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i8* null, i8** %8, align 8
  br label %77

71:                                               ; preds = %64
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %13, align 8
  %74 = getelementptr inbounds %struct.imgu_fw_isp_parameter, %struct.imgu_fw_isp_parameter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr i8, i8* %72, i64 %75
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %71, %70, %55
  %78 = load i8*, i8** %8, align 8
  ret i8* %78
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
