; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_acc_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_acc_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe* }
%struct.imgu_css_pipe = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.imgu_abi_acc_param = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@IPU3_CSS_RECT_BDS = common dso_local global i64 0, align 8
@IMGU_ABI_ACC_OPTYPE_PROCESS_LINES = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OP_NO_OPS = common dso_local global i32 0, align 4
@IMGU_ABI_DVS_STAT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_css*, %struct.imgu_abi_acc_param*, i32)* @imgu_css_cfg_acc_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_cfg_acc_dvs(%struct.imgu_css* %0, %struct.imgu_abi_acc_param* %1, i32 %2) #0 {
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca %struct.imgu_abi_acc_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store %struct.imgu_abi_acc_param* %1, %struct.imgu_abi_acc_param** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %10 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %9, i32 0, i32 0
  %11 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %11, i64 %13
  store %struct.imgu_css_pipe* %14, %struct.imgu_css_pipe** %8, align 8
  %15 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %16 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %5, align 8
  %23 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 8
  %29 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %5, align 8
  %30 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @IMGU_ABI_ACC_OPTYPE_PROCESS_LINES, align 4
  %37 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %5, align 8
  %38 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %36, i32* %43, align 4
  %44 = load i32, i32* @IMGU_ABI_ACC_OP_NO_OPS, align 4
  %45 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %5, align 8
  %46 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %66, %3
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IMGU_ABI_DVS_STAT_LEVELS, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.imgu_abi_acc_param*, %struct.imgu_abi_acc_param** %5, align 8
  %58 = getelementptr inbounds %struct.imgu_abi_acc_param, %struct.imgu_abi_acc_param* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %52

69:                                               ; preds = %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
