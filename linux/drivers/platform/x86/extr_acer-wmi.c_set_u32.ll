; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_set_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@interface = common dso_local global %struct.TYPE_2__* null, align 8
@ACER_CAP_MAILLED = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@WMID_GUID2 = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_u32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interface, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interface, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %78 [
    i32 131, label %17
    i32 130, label %21
    i32 129, label %51
    i32 128, label %55
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @AMW0_set_u32(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AMW0_set_u32(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %82

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WMID_set_u32(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @AMW0_set_u32(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %13, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WMID_set_u32(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %13
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %58 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ACER_CAP_THREEG, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @wmid_v2_set_u32(i32 %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %55
  %69 = load i32, i32* @WMID_GUID2, align 4
  %70 = call i32 @wmi_has_guid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @WMID_set_u32(i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %13, %77
  %79 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %2
  %81 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78, %72, %64, %51, %46, %44, %25, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @AMW0_set_u32(i32, i32) #1

declare dso_local i32 @WMID_set_u32(i32, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @wmid_v2_set_u32(i32, i32) #1

declare dso_local i32 @wmi_has_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
