; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_rh_create(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kzalloc(i64 %13, i32 %14)
  %16 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %17 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %42

23:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %27 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %33 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @wusb_port_init(i32* %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %24

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @wusb_port_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
