; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_dvi.c_dviInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_dvi.c_dviInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvi_ctrl_device = type { i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)* }

@g_dcftSupportedDviController = common dso_local global %struct.dvi_ctrl_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dviInit(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i8 zeroext %8, i8 zeroext %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca %struct.dvi_ctrl_device*, align 8
  store i8 %0, i8* %12, align 1
  store i8 %1, i8* %13, align 1
  store i8 %2, i8* %14, align 1
  store i8 %3, i8* %15, align 1
  store i8 %4, i8* %16, align 1
  store i8 %5, i8* %17, align 1
  store i8 %6, i8* %18, align 1
  store i8 %7, i8* %19, align 1
  store i8 %8, i8* %20, align 1
  store i8 %9, i8* %21, align 1
  %23 = load %struct.dvi_ctrl_device*, %struct.dvi_ctrl_device** @g_dcftSupportedDviController, align 8
  store %struct.dvi_ctrl_device* %23, %struct.dvi_ctrl_device** %22, align 8
  %24 = load %struct.dvi_ctrl_device*, %struct.dvi_ctrl_device** %22, align 8
  %25 = getelementptr inbounds %struct.dvi_ctrl_device, %struct.dvi_ctrl_device* %24, i32 0, i32 0
  %26 = load i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)*, i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)** %25, align 8
  %27 = icmp ne i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %10
  %29 = load %struct.dvi_ctrl_device*, %struct.dvi_ctrl_device** %22, align 8
  %30 = getelementptr inbounds %struct.dvi_ctrl_device, %struct.dvi_ctrl_device* %29, i32 0, i32 0
  %31 = load i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)*, i32 (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8)** %30, align 8
  %32 = load i8, i8* %12, align 1
  %33 = load i8, i8* %13, align 1
  %34 = load i8, i8* %14, align 1
  %35 = load i8, i8* %15, align 1
  %36 = load i8, i8* %16, align 1
  %37 = load i8, i8* %17, align 1
  %38 = load i8, i8* %18, align 1
  %39 = load i8, i8* %19, align 1
  %40 = load i8, i8* %20, align 1
  %41 = load i8, i8* %21, align 1
  %42 = call i32 %31(i8 zeroext %32, i8 zeroext %33, i8 zeroext %34, i8 zeroext %35, i8 zeroext %36, i8 zeroext %37, i8 zeroext %38, i8 zeroext %39, i8 zeroext %40, i8 zeroext %41)
  store i32 %42, i32* %11, align 4
  br label %44

43:                                               ; preds = %10
  store i32 -1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
