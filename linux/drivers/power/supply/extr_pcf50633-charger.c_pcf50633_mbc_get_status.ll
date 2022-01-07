; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.pcf50633_mbc = type { i64, i64, i32 }

@PCF50633_REG_MBCS2 = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_MASK = common dso_local global i32 0, align 4
@PCF50633_MBC_USB_ONLINE = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_USB_PRE = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_USB_PRE_WAIT = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_USB_FAST = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_USB_FAST_WAIT = common dso_local global i32 0, align 4
@PCF50633_MBC_USB_ACTIVE = common dso_local global i32 0, align 4
@PCF50633_MBC_ADAPTER_ONLINE = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_ADP_PRE = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_ADP_PRE_WAIT = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_ADP_FAST = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_ADP_FAST_WAIT = common dso_local global i32 0, align 4
@PCF50633_MBC_ADAPTER_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_mbc_get_status(%struct.pcf50633* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca %struct.pcf50633_mbc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %3, align 8
  %7 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %8 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pcf50633_mbc* @platform_get_drvdata(i32 %9)
  store %struct.pcf50633_mbc* %10, %struct.pcf50633_mbc** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %12 = icmp ne %struct.pcf50633_mbc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %16 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCF50633_REG_MBCS2, align 4
  %19 = call i32 @pcf50633_reg_read(i32 %17, i32 %18)
  %20 = load i32, i32* @PCF50633_MBCS2_MBC_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %23 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* @PCF50633_MBC_USB_ONLINE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %14
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PCF50633_MBCS2_MBC_USB_PRE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PCF50633_MBCS2_MBC_USB_PRE_WAIT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCF50633_MBCS2_MBC_USB_FAST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PCF50633_MBCS2_MBC_USB_FAST_WAIT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38, %34, %30
  %47 = load i32, i32* @PCF50633_MBC_USB_ACTIVE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %52 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @PCF50633_MBC_ADAPTER_ONLINE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PCF50633_MBCS2_MBC_ADP_PRE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PCF50633_MBCS2_MBC_ADP_PRE_WAIT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCF50633_MBCS2_MBC_ADP_FAST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PCF50633_MBCS2_MBC_ADP_FAST_WAIT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %67, %63, %59
  %76 = load i32, i32* @PCF50633_MBC_ADAPTER_ACTIVE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.pcf50633_mbc* @platform_get_drvdata(i32) #1

declare dso_local i32 @pcf50633_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
