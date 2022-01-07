; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c__LLTWrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c__LLTWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@_LLT_WRITE_ACCESS = common dso_local global i32 0, align 4
@REG_LLT_INIT = common dso_local global i32 0, align 4
@_LLT_NO_ACTIVE = common dso_local global i64 0, align 8
@POLLING_LLT_THRESHOLD = common dso_local global i64 0, align 8
@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to polling write LLT done at address %d!\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, i32, i32)* @_LLTWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_LLTWrite(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @_LLT_INIT_ADDR(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @_LLT_INIT_DATA(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @_LLT_WRITE_ACCESS, align 4
  %18 = call i32 @_LLT_OP(i32 %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @REG_LLT_INIT, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @usb_write32(%struct.adapter* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %48, %3
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @usb_read32(%struct.adapter* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* @_LLT_NO_ACTIVE, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @_LLT_OP_VALUE(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %52

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @POLLING_LLT_THRESHOLD, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @_module_hal_init_c_, align 4
  %40 = load i32, i32* @_drv_err_, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @RT_TRACE(i32 %39, i32 %40, i8* %43)
  %45 = load i64, i64* @_FAIL, align 8
  store i64 %45, i64* %7, align 8
  br label %52

46:                                               ; preds = %34
  %47 = call i32 @udelay(i32 5)
  br label %48

48:                                               ; preds = %46
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %25, label %52

52:                                               ; preds = %48, %38, %33
  %53 = load i64, i64* %7, align 8
  ret i64 %53
}

declare dso_local i32 @_LLT_INIT_ADDR(i32) #1

declare dso_local i32 @_LLT_INIT_DATA(i32) #1

declare dso_local i32 @_LLT_OP(i32) #1

declare dso_local i32 @usb_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

declare dso_local i64 @_LLT_OP_VALUE(i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
