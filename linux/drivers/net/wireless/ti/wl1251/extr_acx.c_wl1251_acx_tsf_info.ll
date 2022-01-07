; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tsf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tsf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_tsf_info = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_TSF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ACX_FW_REV interrogate failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_tsf_info(%struct.wl1251* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acx_tsf_info*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_tsf_info* @kzalloc(i32 16, i32 %8)
  store %struct.acx_tsf_info* %9, %struct.acx_tsf_info** %6, align 8
  %10 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %6, align 8
  %11 = icmp ne %struct.acx_tsf_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %17 = load i32, i32* @ACX_TSF_INFO, align 4
  %18 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %6, align 8
  %19 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %16, i32 %17, %struct.acx_tsf_info* %18, i32 16)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @wl1251_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %6, align 8
  %26 = getelementptr inbounds %struct.acx_tsf_info, %struct.acx_tsf_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %6, align 8
  %29 = getelementptr inbounds %struct.acx_tsf_info, %struct.acx_tsf_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 32
  %33 = or i32 %27, %32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %24, %22
  %36 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %6, align 8
  %37 = call i32 @kfree(%struct.acx_tsf_info* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.acx_tsf_info* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_tsf_info*, i32) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @kfree(%struct.acx_tsf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
