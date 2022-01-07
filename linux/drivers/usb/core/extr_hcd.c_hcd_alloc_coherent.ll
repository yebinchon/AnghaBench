; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_hcd_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_hcd_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_bus*, i32, i32*, i8**, i64, i32)* @hcd_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hcd_alloc_coherent(%struct.usb_bus* %0, i32 %1, i32* %2, i8** %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8**, i8*** %11, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %55

22:                                               ; preds = %6
  %23 = load %struct.usb_bus*, %struct.usb_bus** %8, align 8
  %24 = load i64, i64* %12, align 8
  %25 = add i64 %24, 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i8* @hcd_buffer_alloc(%struct.usb_bus* %23, i64 %25, i32 %26, i32* %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %55

34:                                               ; preds = %22
  %35 = load i8**, i8*** %11, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i8*, i8** %14, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = bitcast i8* %40 to i64*
  %42 = call i32 @put_unaligned(i64 %37, i64* %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i8*, i8** %14, align 8
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @memcpy(i8* %47, i8* %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %34
  %53 = load i8*, i8** %14, align 8
  %54 = load i8**, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %31, %18
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @hcd_buffer_alloc(%struct.usb_bus*, i64, i32, i32*) #1

declare dso_local i32 @put_unaligned(i64, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
