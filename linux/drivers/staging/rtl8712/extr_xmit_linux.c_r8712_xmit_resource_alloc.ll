; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.xmit_buf = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pxmitbuf->pxmit_urb[i] == NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_xmit_resource_alloc(%struct._adapter* %0, %struct.xmit_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_buf*, align 8
  %6 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @usb_alloc_urb(i32 0, i32 %11)
  %13 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %12, i32* %18, align 4
  %19 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %10
  %28 = load %struct._adapter*, %struct._adapter** %4, align 8
  %29 = getelementptr inbounds %struct._adapter, %struct._adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netdev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %10
  %35 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %36 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kmemleak_not_leak(i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kmemleak_not_leak(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
