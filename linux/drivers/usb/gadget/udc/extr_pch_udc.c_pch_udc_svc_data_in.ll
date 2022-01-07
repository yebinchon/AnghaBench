; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_svc_data_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_svc_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_dev = type { i32, %struct.pch_udc_ep* }
%struct.pch_udc_ep = type { i32, i32, i32, i32 }

@UDC_EPSTS_IN = common dso_local global i32 0, align 4
@UDC_EPSTS_BNA = common dso_local global i32 0, align 4
@UDC_EPSTS_HE = common dso_local global i32 0, align 4
@UDC_EPSTS_TDC = common dso_local global i32 0, align 4
@UDC_EPSTS_RCS = common dso_local global i32 0, align 4
@UDC_EPSTS_TXEMPTY = common dso_local global i32 0, align 4
@UDC_EPSTS_RSS = common dso_local global i32 0, align 4
@UDC_EPSTS_XFERDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_dev*, i32)* @pch_udc_svc_data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_svc_data_in(%struct.pch_udc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_udc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pch_udc_ep*, align 8
  store %struct.pch_udc_dev* %0, %struct.pch_udc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %7, i32 0, i32 1
  %9 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @UDC_EPIN_IDX(i32 %10)
  %12 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %9, i64 %11
  store %struct.pch_udc_ep* %12, %struct.pch_udc_ep** %6, align 8
  %13 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %14 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %17 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @UDC_EPSTS_IN, align 4
  %20 = load i32, i32* @UDC_EPSTS_BNA, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UDC_EPSTS_HE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UDC_EPSTS_RCS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UDC_EPSTS_TXEMPTY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UDC_EPSTS_RSS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UDC_EPSTS_XFERDONE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %18, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %127

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UDC_EPSTS_BNA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %127

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @UDC_EPSTS_HE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %127

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @UDC_EPSTS_RSS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %56 = call i32 @pch_udc_ep_set_stall(%struct.pch_udc_ep* %55)
  %57 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %58 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %61 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %64 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PCH_UDC_EPINT(i32 %62, i32 %65)
  %67 = call i32 @pch_udc_enable_ep_interrupts(i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %54, %49
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @UDC_EPSTS_RCS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %80 = call i32 @pch_udc_ep_clear_stall(%struct.pch_udc_ep* %79)
  br label %95

81:                                               ; preds = %73
  %82 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %83 = call i32 @pch_udc_ep_set_stall(%struct.pch_udc_ep* %82)
  %84 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %85 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %88 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %91 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PCH_UDC_EPINT(i32 %89, i32 %92)
  %94 = call i32 @pch_udc_enable_ep_interrupts(i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %81, %78
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %103 = call i32 @pch_udc_complete_transfer(%struct.pch_udc_ep* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @UDC_EPSTS_IN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @UDC_EPSTS_RSS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @UDC_EPSTS_TXEMPTY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %6, align 8
  %126 = call i32 @pch_udc_start_next_txrequest(%struct.pch_udc_ep* %125)
  br label %127

127:                                              ; preds = %36, %42, %48, %124, %119, %114, %109, %104
  ret void
}

declare dso_local i64 @UDC_EPIN_IDX(i32) #1

declare dso_local i32 @pch_udc_ep_set_stall(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_enable_ep_interrupts(i32, i32) #1

declare dso_local i32 @PCH_UDC_EPINT(i32, i32) #1

declare dso_local i32 @pch_udc_ep_clear_stall(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_complete_transfer(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_start_next_txrequest(%struct.pch_udc_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
