; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"GetPortStatus(%u)\0A\00", align 1
@RH_PS_PPS = common dso_local global i32 0, align 4
@RH_PS_POCI = common dso_local global i32 0, align 4
@ocic_mask = common dso_local global i32 0, align 4
@RH_PS_OCIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%sPortFeature(%u): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"POWER\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"C_OVER_CURRENT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @ohci_da8xx_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %14, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %115 [
    i32 131, label %21
    i32 130, label %66
    i32 132, label %67
  ]

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %115

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %30 = call i32 @hcd_to_ohci(%struct.usb_hcd* %29)
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @roothub_portstatus(i32 %30, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %35 = call i32 @ohci_da8xx_get_power(%struct.usb_hcd* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @RH_PS_PPS, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %37, %25
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %44 = call i32 @ohci_da8xx_get_oci(%struct.usb_hcd* %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @RH_PS_POCI, align 4
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @ocic_mask, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @RH_PS_OCIC, align 4
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = call i32 @put_unaligned(i32 %62, i32* %64)
  store i32 0, i32* %7, align 4
  br label %123

66:                                               ; preds = %6
  store i32 1, i32* %15, align 4
  br label %68

67:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %115

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  switch i32 %73, label %114 [
    i32 128, label %74
    i32 129, label %92
  ]

74:                                               ; preds = %72
  %75 = load %struct.device*, %struct.device** %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @ohci_da8xx_set_power(%struct.usb_hcd* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @EPIPE, align 4
  %88 = sub nsw i32 0, %87
  br label %90

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %7, align 4
  br label %123

92:                                               ; preds = %72
  %93 = load %struct.device*, %struct.device** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* @ocic_mask, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* @ocic_mask, align 4
  br label %113

107:                                              ; preds = %92
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* @ocic_mask, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* @ocic_mask, align 4
  br label %113

113:                                              ; preds = %107, %102
  store i32 0, i32* %7, align 4
  br label %123

114:                                              ; preds = %72
  br label %115

115:                                              ; preds = %114, %6, %71, %24
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @orig_ohci_hub_control(%struct.usb_hcd* %116, i32 %117, i32 %118, i32 %119, i8* %120, i32 %121)
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %115, %113, %90, %60
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @roothub_portstatus(i32, i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_da8xx_get_power(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_da8xx_get_oci(%struct.usb_hcd*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ohci_da8xx_set_power(%struct.usb_hcd*, i32) #1

declare dso_local i32 @orig_ohci_hub_control(%struct.usb_hcd*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
