; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_ep0out_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_ep0out_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i64, i32, i64, %struct.usb_function* }
%struct.usb_function = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_ncm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Bad control-OUT transfer\0A\00", align 1
@USB_CDC_NCM_NTB_MIN_IN_SIZE = common dso_local global i32 0, align 4
@ntb_parameters = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Got wrong INPUT SIZE (%d) from host\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Set NTB INPUT SIZE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ncm_ep0out_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncm_ep0out_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_function*, align 8
  %7 = alloca %struct.f_ncm*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 4
  %11 = load %struct.usb_function*, %struct.usb_function** %10, align 8
  store %struct.usb_function* %11, %struct.usb_function** %6, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %13 = call %struct.f_ncm* @func_to_ncm(%struct.usb_function* %12)
  store %struct.f_ncm* %13, %struct.f_ncm** %7, align 8
  %14 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %15 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %17, align 8
  store %struct.usb_composite_dev* %18, %struct.usb_composite_dev** %8, align 8
  %19 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %20 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %19, i32 0, i32 4
  store %struct.usb_function* null, %struct.usb_function** %20, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %27 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %2
  %34 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %35 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %61

36:                                               ; preds = %25
  %37 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @get_unaligned_le32(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @USB_CDC_NCM_NTB_MIN_IN_SIZE, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ntb_parameters, i32 0, i32 0), align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %36
  %50 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %61

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.f_ncm*, %struct.f_ncm** %7, align 8
  %56 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @VDBG(%struct.usb_composite_dev* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %49, %33
  %62 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %63 = call i32 @usb_ep_set_halt(%struct.usb_ep* %62)
  br label %64

64:                                               ; preds = %61, %53
  ret void
}

declare dso_local %struct.f_ncm* @func_to_ncm(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, ...) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_set_halt(%struct.usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
