; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_read_qos_info_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_read_qos_info_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_qos_information_element = type { i64, i64, i32 }
%struct.rtllib_info_element = type { i64, i64, i32 }

@QOS_ELEMENT_ID = common dso_local global i64 0, align 8
@QOS_OUI_INFO_SUB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_qos_information_element*, %struct.rtllib_info_element*)* @rtllib_read_qos_info_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_read_qos_info_element(%struct.rtllib_qos_information_element* %0, %struct.rtllib_info_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_qos_information_element*, align 8
  %5 = alloca %struct.rtllib_info_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rtllib_qos_information_element* %0, %struct.rtllib_qos_information_element** %4, align 8
  store %struct.rtllib_info_element* %1, %struct.rtllib_info_element** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 22, i64* %7, align 8
  %8 = load %struct.rtllib_qos_information_element*, %struct.rtllib_qos_information_element** %4, align 8
  %9 = icmp eq %struct.rtllib_qos_information_element* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %13 = icmp eq %struct.rtllib_info_element* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %58

15:                                               ; preds = %11
  %16 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %17 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QOS_ELEMENT_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %23 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.rtllib_qos_information_element*, %struct.rtllib_qos_information_element** %4, align 8
  %29 = getelementptr inbounds %struct.rtllib_qos_information_element, %struct.rtllib_qos_information_element* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %32 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %35 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i32 %30, i32 %33, i64 %36)
  %38 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %39 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rtllib_qos_information_element*, %struct.rtllib_qos_information_element** %4, align 8
  %42 = getelementptr inbounds %struct.rtllib_qos_information_element, %struct.rtllib_qos_information_element* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %44 = getelementptr inbounds %struct.rtllib_info_element, %struct.rtllib_info_element* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rtllib_qos_information_element*, %struct.rtllib_qos_information_element** %4, align 8
  %47 = getelementptr inbounds %struct.rtllib_qos_information_element, %struct.rtllib_qos_information_element* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %49

48:                                               ; preds = %21, %15
  store i32 -1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.rtllib_qos_information_element*, %struct.rtllib_qos_information_element** %4, align 8
  %54 = load i32, i32* @QOS_OUI_INFO_SUB_TYPE, align 4
  %55 = call i32 @rtllib_verify_qos_info(%struct.rtllib_qos_information_element* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %14, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @rtllib_verify_qos_info(%struct.rtllib_qos_information_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
