; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_disconnect_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_disconnect_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_PFI_DEFAULT = common dso_local global i32 0, align 4
@NI_RTSI_OUTPUT_RGOUT0 = common dso_local global i64 0, align 8
@default_rtsi_routing = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.comedi_device*)* @disconnect_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_route(i32 %0, i32 %1, %struct.comedi_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.comedi_device* %2, %struct.comedi_device** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.ni_private*, %struct.ni_private** %13, align 8
  store %struct.ni_private* %14, %struct.ni_private** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 1
  %20 = call i64 @ni_route_to_register(i32 %16, i32 %17, i32* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %141

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %29 = call i32 @get_output_select_source(i32 %27, %struct.comedi_device* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @channel_is_pfi(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @COMEDI_INPUT, align 4
  %43 = call i32 @ni_set_pfi_direction(%struct.comedi_device* %40, i32 %41, i32 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @NI_PFI_OUTPUT_PFI_DEFAULT, align 4
  %47 = call i32 @ni_set_pfi_routing(%struct.comedi_device* %44, i32 %45, i32 %46)
  br label %140

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @channel_is_rtsi(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @NI_RTSI_OUTPUT_RGOUT0, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %59 = call i32 @decr_rgout0_src_use(i32 %57, %struct.comedi_device* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %141

64:                                               ; preds = %56
  br label %87

65:                                               ; preds = %52
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @ni_rtsi_route_requires_mux(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ni_get_rtsi_routing(%struct.comedi_device* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %75 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %74, i32 0, i32 1
  %76 = call i32 @ni_find_route_source(i32 %72, i32 %73, i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %141

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %85 = call i32 @decr_rtsi_brd_src_use(i32 %82, i32 %83, %struct.comedi_device* %84)
  br label %86

86:                                               ; preds = %81, %65
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i64*, i64** @default_rtsi_routing, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @TRIGGER_LINE(i32 0)
  %91 = sub i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %9, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @COMEDI_INPUT, align 4
  %98 = call i32 @ni_set_rtsi_direction(%struct.comedi_device* %95, i32 %96, i32 %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @ni_set_rtsi_routing(%struct.comedi_device* %99, i32 %100, i64 %101)
  br label %139

103:                                              ; preds = %48
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @NI_CtrOut(i32 0)
  %106 = icmp uge i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @NI_CtrOut(i32 -1)
  %110 = icmp ule i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = call i32 @NI_CtrOut(i32 0)
  %113 = load i32, i32* %6, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ugt i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %141

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %123 = call i64 @ni_disable_gout_routing(i32 %121, %struct.comedi_device* %122)
  store i64 %123, i64* %9, align 8
  br label %138

124:                                              ; preds = %107, %103
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @channel_is_ctr(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %130 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ni_tio_unset_routing(i32 %131, i32 %132)
  br label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %141

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138, %87
  br label %140

140:                                              ; preds = %139, %39
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %134, %117, %79, %62, %32, %23
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @ni_route_to_register(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @get_output_select_source(i32, %struct.comedi_device*) #1

declare dso_local i64 @channel_is_pfi(i32) #1

declare dso_local i32 @ni_set_pfi_direction(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_pfi_routing(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @channel_is_rtsi(i32) #1

declare dso_local i32 @decr_rgout0_src_use(i32, %struct.comedi_device*) #1

declare dso_local i64 @ni_rtsi_route_requires_mux(i64) #1

declare dso_local i32 @ni_find_route_source(i32, i32, i32*) #1

declare dso_local i32 @ni_get_rtsi_routing(%struct.comedi_device*, i32) #1

declare dso_local i32 @decr_rtsi_brd_src_use(i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @TRIGGER_LINE(i32) #1

declare dso_local i32 @ni_set_rtsi_direction(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_rtsi_routing(%struct.comedi_device*, i32, i64) #1

declare dso_local i32 @NI_CtrOut(i32) #1

declare dso_local i64 @ni_disable_gout_routing(i32, %struct.comedi_device*) #1

declare dso_local i64 @channel_is_ctr(i32) #1

declare dso_local i32 @ni_tio_unset_routing(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
