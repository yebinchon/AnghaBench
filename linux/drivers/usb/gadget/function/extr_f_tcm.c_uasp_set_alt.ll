; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, i32, i32, i32, i32, %struct.usb_function }
%struct.usb_function = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i64 }

@USBG_IS_UAS = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USBG_USE_STREAMS = common dso_local global i32 0, align 4
@USBG_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using the UAS protocol\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_uas*)* @uasp_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uasp_set_alt(%struct.f_uas* %0) #0 {
  %2 = alloca %struct.f_uas*, align 8
  %3 = alloca %struct.usb_function*, align 8
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %2, align 8
  %6 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %7 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %6, i32 0, i32 5
  store %struct.usb_function* %7, %struct.usb_function** %3, align 8
  %8 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %9 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %13, align 8
  store %struct.usb_gadget* %14, %struct.usb_gadget** %4, align 8
  %15 = load i32, i32* @USBG_IS_UAS, align 4
  %16 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %17 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %19 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_SPEED_SUPER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @USBG_USE_STREAMS, align 4
  %25 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %26 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %31 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %32 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %33 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @config_ep_by_speed(%struct.usb_gadget* %30, %struct.usb_function* %31, i32 %34)
  %36 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %37 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_ep_enable(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %118

43:                                               ; preds = %29
  %44 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %45 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %46 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %47 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @config_ep_by_speed(%struct.usb_gadget* %44, %struct.usb_function* %45, i32 %48)
  %50 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %51 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_ep_enable(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %113

57:                                               ; preds = %43
  %58 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %59 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %60 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %61 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @config_ep_by_speed(%struct.usb_gadget* %58, %struct.usb_function* %59, i32 %62)
  %64 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %65 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_ep_enable(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %108

71:                                               ; preds = %57
  %72 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %73 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %74 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %75 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @config_ep_by_speed(%struct.usb_gadget* %72, %struct.usb_function* %73, i32 %76)
  %78 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %79 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @usb_ep_enable(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %103

85:                                               ; preds = %71
  %86 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %87 = call i32 @uasp_prepare_reqs(%struct.f_uas* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %98

91:                                               ; preds = %85
  %92 = load i32, i32* @USBG_ENABLED, align 4
  %93 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %94 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %121

98:                                               ; preds = %90
  %99 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %100 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @usb_ep_disable(i32 %101)
  br label %103

103:                                              ; preds = %98, %84
  %104 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %105 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @usb_ep_disable(i32 %106)
  br label %108

108:                                              ; preds = %103, %70
  %109 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %110 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @usb_ep_disable(i32 %111)
  br label %113

113:                                              ; preds = %108, %56
  %114 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %115 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @usb_ep_disable(i32 %116)
  br label %118

118:                                              ; preds = %113, %42
  %119 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %120 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %91
  ret void
}

declare dso_local i32 @config_ep_by_speed(%struct.usb_gadget*, %struct.usb_function*, i32) #1

declare dso_local i32 @usb_ep_enable(i32) #1

declare dso_local i32 @uasp_prepare_reqs(%struct.f_uas*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
