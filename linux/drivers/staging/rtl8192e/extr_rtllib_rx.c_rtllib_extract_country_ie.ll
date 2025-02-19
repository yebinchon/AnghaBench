; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_extract_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_extract_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64 }
%struct.rtllib_info_element = type { i64, i32 }
%struct.rtllib_network = type { i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Received beacon ContryIE, SSID: <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.rtllib_info_element*, %struct.rtllib_network*, i32*)* @rtllib_extract_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_extract_country_ie(%struct.rtllib_device* %0, %struct.rtllib_info_element* %1, %struct.rtllib_network* %2, i32* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.rtllib_info_element*, align 8
  %7 = alloca %struct.rtllib_network*, align 8
  %8 = alloca i32*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.rtllib_info_element* %1, %struct.rtllib_info_element** %6, align 8
  store %struct.rtllib_network* %2, %struct.rtllib_network** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %10 = call i64 @IS_DOT11D_ENABLE(%struct.rtllib_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %4
  %13 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %14 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %12
  %18 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %19 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %22 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %25 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i32 %20, i32 %23, i64 %26)
  %28 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %29 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %32 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %34 = call i32 @IS_COUNTRY_IE_VALID(%struct.rtllib_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %17
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %38 = call i64 @rtllib_act_scanning(%struct.rtllib_device* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %50 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netdev_info(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %45, %40, %36
  %54 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %57 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %6, align 8
  %60 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dot11d_update_country(%struct.rtllib_device* %54, i32* %55, i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %53, %17
  br label %64

64:                                               ; preds = %63, %12
  %65 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @IS_EQUAL_CIE_SRC(%struct.rtllib_device* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %71 = call i32 @UPDATE_CIE_WATCHDOG(%struct.rtllib_device* %70)
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %4
  ret void
}

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.rtllib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @IS_COUNTRY_IE_VALID(%struct.rtllib_device*) #1

declare dso_local i64 @rtllib_act_scanning(%struct.rtllib_device*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @dot11d_update_country(%struct.rtllib_device*, i32*, i64, i32) #1

declare dso_local i64 @IS_EQUAL_CIE_SRC(%struct.rtllib_device*, i32*) #1

declare dso_local i32 @UPDATE_CIE_WATCHDOG(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
