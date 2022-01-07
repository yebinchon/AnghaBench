; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_ep_match_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_ep_match_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_ep = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_ep_match_desc(%struct.usb_gadget* %0, %struct.usb_ep* %1, %struct.usb_endpoint_descriptor* %2, %struct.usb_ss_ep_comp_descriptor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_gadget*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %6, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %7, align 8
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_ss_ep_comp_descriptor* %3, %struct.usb_ss_ep_comp_descriptor** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %14 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %129

18:                                               ; preds = %4
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %20 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %22 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %24 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %28 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %129

33:                                               ; preds = %26, %18
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %35 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %39 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %129

44:                                               ; preds = %37, %33
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %47 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %129

51:                                               ; preds = %44
  %52 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %53 = call i32 @gadget_is_dualspeed(%struct.usb_gadget* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %57 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %56)
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %129

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %128 [
    i32 130, label %62
    i32 128, label %63
    i32 131, label %79
    i32 129, label %106
  ]

62:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %129

63:                                               ; preds = %60
  %64 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %65 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %129

70:                                               ; preds = %63
  %71 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %72 = call i32 @gadget_is_dualspeed(%struct.usb_gadget* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = icmp sgt i64 %75, 1023
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %129

78:                                               ; preds = %74, %70
  br label %128

79:                                               ; preds = %60
  %80 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %81 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %129

86:                                               ; preds = %79
  %87 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %9, align 8
  %88 = icmp ne %struct.usb_ss_ep_comp_descriptor* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %91 = call i32 @gadget_is_superspeed(%struct.usb_gadget* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %9, align 8
  %95 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 31
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %100 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %129

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %89, %86
  br label %128

106:                                              ; preds = %60
  %107 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %108 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %114 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %129

119:                                              ; preds = %112, %106
  %120 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %121 = call i32 @gadget_is_dualspeed(%struct.usb_gadget* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %11, align 8
  %125 = icmp sgt i64 %124, 64
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %129

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %60, %127, %105, %78
  store i32 1, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %126, %118, %103, %85, %77, %69, %62, %59, %50, %43, %32, %17
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @gadget_is_dualspeed(%struct.usb_gadget*) #1

declare dso_local i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @gadget_is_superspeed(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
