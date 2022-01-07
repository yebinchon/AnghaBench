; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_port** }
%struct.usb_port = type { i32 }

@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_STEP = common dso_local global i64 0, align 8
@HUB_DEBOUNCE_STABLE = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@HUB_DEBOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"debounce total %dms stable %dms status 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hub_port_debounce(%struct.usb_hub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_port*, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 65535, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 1
  %17 = load %struct.usb_port**, %struct.usb_port*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %17, i64 %20
  %22 = load %struct.usb_port*, %struct.usb_port** %21, align 8
  store %struct.usb_port* %22, %struct.usb_port** %14, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %85, %3
  %24 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @hub_port_status(%struct.usb_hub* %24, i32 %25, i32* %10, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %42
  %50 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @HUB_DEBOUNCE_STABLE, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %91

60:                                               ; preds = %55
  br label %65

61:                                               ; preds = %36, %31
  store i32 0, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %72 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %76 = call i32 @usb_clear_port_feature(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @HUB_DEBOUNCE_TIMEOUT, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %91

82:                                               ; preds = %77
  %83 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %84 = call i32 @msleep(i64 %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @HUB_DEBOUNCE_STEP, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  br label %23

91:                                               ; preds = %81, %59
  %92 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %93 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %92, i32 0, i32 0
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @HUB_DEBOUNCE_STABLE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %101, %29
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i32 @usb_clear_port_feature(i32, i32, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
