; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_req_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_req_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32)* @_nbu2ss_req_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_req_feature(%struct.nbu2ss_udc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USB_RECIP_MASK, align 4
  %17 = and i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %20 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = and i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %27 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %32 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %39 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @USB_DIR_OUT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %98

50:                                               ; preds = %43
  %51 = load i64, i64* %6, align 8
  switch i64 %51, label %86 [
    i64 129, label %52
    i64 128, label %61
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @_nbu2ss_set_feature_device(%struct.nbu2ss_udc* %56, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %55, %52
  br label %87

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 65392
  %64 = icmp eq i32 0, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @_nbu2ss_endpoint_toggle_reset(%struct.nbu2ss_udc* %76, i64 %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @_nbu2ss_set_endpoint_stall(%struct.nbu2ss_udc* %80, i64 %81, i32 %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %65
  br label %85

85:                                               ; preds = %84, %61
  br label %87

86:                                               ; preds = %50
  br label %87

87:                                               ; preds = %86, %85, %60
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %92 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %93 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @_nbu2ss_create_ep0_packet(%struct.nbu2ss_udc* %91, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %47
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_nbu2ss_set_feature_device(%struct.nbu2ss_udc*, i32, i32) #1

declare dso_local i32 @_nbu2ss_endpoint_toggle_reset(%struct.nbu2ss_udc*, i64) #1

declare dso_local i32 @_nbu2ss_set_endpoint_stall(%struct.nbu2ss_udc*, i64, i32) #1

declare dso_local i32 @_nbu2ss_create_ep0_packet(%struct.nbu2ss_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
