; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_os_xmit_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_os_xmit_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.xmit_buf = type { i32*, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@XMITBUF_ALIGN_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pxmitbuf->pxmit_urb[i]==NULL\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_os_xmit_resource_alloc(%struct.adapter* %0, %struct.xmit_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.xmit_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @kzalloc(i32 %9, i32 %10)
  %12 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %13 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %15 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @_FAIL, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %22 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %25 = call i32 @PTR_ALIGN(i32 %23, i32 %24)
  %26 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %27 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %29 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %54, %20
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @usb_alloc_urb(i32 0, i32 %34)
  %36 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %37 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %43 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %33
  %51 = call i32 @DBG_88E(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @_FAIL, align 4
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i32, i32* @_SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %50, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
