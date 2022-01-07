; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_WMID_set_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_WMID_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@max_brightness = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACER_WMID_SET_BRIGHTNESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_WIRELESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_BLUETOOTH_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_SET_THREEG_METHODID = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @WMID_set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMID_set_u32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %58 [
    i32 131, label %9
    i32 128, label %17
    i32 132, label %24
    i32 129, label %31
    i32 130, label %38
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @max_brightness, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %9
  %16 = load i32, i32* @ACER_WMID_SET_BRIGHTNESS_METHODID, align 4
  store i32 %16, i32* %6, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %17
  %23 = load i32, i32* @ACER_WMID_SET_WIRELESS_METHODID, align 4
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %24
  %30 = load i32, i32* @ACER_WMID_SET_BLUETOOTH_METHODID, align 4
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %31
  %37 = load i32, i32* @ACER_WMID_SET_THREEG_METHODID, align 4
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 146, i32 147
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  %54 = call i32 (...) @i8042_lock_chip()
  %55 = call i32 @i8042_command(i8* %7, i32 4185)
  %56 = call i32 (...) @i8042_unlock_chip()
  store i32 0, i32* %3, align 4
  br label %64

57:                                               ; preds = %43
  br label %60

58:                                               ; preds = %2
  %59 = load i32, i32* @AE_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %57, %36, %29, %22, %15
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @WMI_execute_u32(i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %58, %48, %41, %34, %27, %20, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @i8042_lock_chip(...) #1

declare dso_local i32 @i8042_command(i8*, i32) #1

declare dso_local i32 @i8042_unlock_chip(...) #1

declare dso_local i32 @WMI_execute_u32(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
