; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wmab_args = type { i32, i64, i64, i32 }

@ACER_AMW0_WRITE = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACER_AMW0_MAILLED_MASK = common dso_local global i32 0, align 4
@ACER_AMW0_WIRELESS_MASK = common dso_local global i32 0, align 4
@ACER_AMW0_BLUETOOTH_MASK = common dso_local global i32 0, align 4
@max_brightness = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @AMW0_set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_set_u32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmab_args, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ACER_AMW0_WRITE, align 4
  %8 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 3
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 256, i32 0
  %13 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %60 [
    i32 129, label %17
    i32 128, label %27
    i32 131, label %37
    i32 130, label %47
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %17
  %23 = load i32, i32* @ACER_AMW0_MAILLED_MASK, align 4
  %24 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 8
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %27
  %33 = load i32, i32* @ACER_AMW0_WIRELESS_MASK, align 4
  %34 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 8
  br label %62

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %37
  %43 = load i32, i32* @ACER_AMW0_BLUETOOTH_MASK, align 4
  %44 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %62

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @max_brightness, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %52, i32* %3, align 4
  br label %64

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %57 [
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ec_write(i32 131, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @AE_ERROR, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %42, %32, %22
  %63 = call i32 @wmab_execute(%struct.wmab_args* %6, i32* null)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %57, %51, %40, %30, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ec_write(i32, i32) #1

declare dso_local i32 @wmab_execute(%struct.wmab_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
