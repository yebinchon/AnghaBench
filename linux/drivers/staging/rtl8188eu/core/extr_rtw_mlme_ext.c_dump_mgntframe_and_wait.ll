; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_dump_mgntframe_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_dump_mgntframe_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64 }
%struct.xmit_frame = type { %struct.xmit_buf* }
%struct.xmit_buf = type { %struct.submit_ctx* }
%struct.submit_ctx = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, %struct.xmit_frame*, i32)* @dump_mgntframe_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dump_mgntframe_and_wait(%struct.adapter* %0, %struct.xmit_frame* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.xmit_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.xmit_buf*, align 8
  %10 = alloca %struct.submit_ctx, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @_FAIL, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %13 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %12, i32 0, i32 0
  %14 = load %struct.xmit_buf*, %struct.xmit_buf** %13, align 8
  store %struct.xmit_buf* %14, %struct.xmit_buf** %9, align 8
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %3
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %41

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rtw_sctx_init(%struct.submit_ctx* %10, i32 %27)
  %29 = load %struct.xmit_buf*, %struct.xmit_buf** %9, align 8
  %30 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %29, i32 0, i32 0
  store %struct.submit_ctx* %10, %struct.submit_ctx** %30, align 8
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %33 = call i64 @rtw_hal_mgnt_xmit(%struct.adapter* %31, %struct.xmit_frame* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i64 @rtw_sctx_wait(%struct.submit_ctx* %10)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %24
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @rtw_sctx_init(%struct.submit_ctx*, i32) #1

declare dso_local i64 @rtw_hal_mgnt_xmit(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i64 @rtw_sctx_wait(%struct.submit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
