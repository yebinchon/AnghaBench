; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_rtl8188eu_xmit_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_rtl8188eu_xmit_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64, i64, i32, %struct.xmit_priv }
%struct.xmit_priv = type { i32 }

@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"xmit_tasklet => bDriverStopped or bSurpriseRemoved or bWritePortCancel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188eu_xmit_tasklet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.adapter*
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 4
  store %struct.xmit_priv* %8, %struct.xmit_priv** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 3
  %11 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %12 = call i64 @check_fwstate(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %40

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %39
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21, %16
  %32 = call i32 @DBG_88E(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %36 = call i32 @rtl8188eu_xmitframe_complete(%struct.adapter* %34, %struct.xmit_priv* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  br label %16

40:                                               ; preds = %14, %38, %31
  ret void
}

declare dso_local i64 @check_fwstate(i32*, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @rtl8188eu_xmitframe_complete(%struct.adapter*, %struct.xmit_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
