; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_get_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AE_ERROR = common dso_local global i32 0, align 4
@interface = common dso_local global %struct.TYPE_2__* null, align 8
@ACER_CAP_MAILLED = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@WMID_GUID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_u32(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AE_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interface, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %50 [
    i32 131, label %10
    i32 130, label %14
    i32 129, label %23
    i32 128, label %27
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AMW0_get_u32(i32* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @AMW0_get_u32(i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %2, %22
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @WMID_get_u32(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %30 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ACER_CAP_THREEG, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @wmid_v2_get_u32(i32* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %27
  %41 = load i32, i32* @WMID_GUID2, align 4
  %42 = call i32 @wmi_has_guid(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @WMID_get_u32(i32* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %2, %49, %23, %18, %10
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @AMW0_get_u32(i32*, i32) #1

declare dso_local i32 @WMID_get_u32(i32*, i32) #1

declare dso_local i32 @wmid_v2_get_u32(i32*, i32) #1

declare dso_local i32 @wmi_has_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
