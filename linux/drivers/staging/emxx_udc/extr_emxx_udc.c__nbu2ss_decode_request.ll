; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_decode_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_decode_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i64, i32, %struct.usb_ctrlrequest, i32, %struct.TYPE_2__* }
%struct.usb_ctrlrequest = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }

@EINVAL = common dso_local global i32 0, align 4
@EP0_IN_STATUS_PHASE = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@EP0_IN_DATA_PHASE = common dso_local global i64 0, align 8
@EP0_OUT_DATA_PHASE = common dso_local global i64 0, align 8
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@EP0_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*)* @_nbu2ss_decode_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_decode_request(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %8, i32 0, i32 2
  store %struct.usb_ctrlrequest* %9, %struct.usb_ctrlrequest** %5, align 8
  %10 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %12 = bitcast %struct.usb_ctrlrequest* %11 to i32*
  %13 = call i32 @_nbu2ss_read_request_data(%struct.nbu2ss_udc* %10, i32* %12)
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @EP0_IN_STATUS_PHASE, align 8
  %20 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %21 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @USB_DIR_IN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* @EP0_IN_DATA_PHASE, align 8
  %31 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %32 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @EP0_OUT_DATA_PHASE, align 8
  %35 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %36 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %40 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @USB_TYPE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %48 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %65 [
    i32 131, label %50
    i32 132, label %53
    i32 128, label %56
    i32 130, label %59
    i32 129, label %62
  ]

50:                                               ; preds = %46
  %51 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %52 = call i32 @std_req_get_status(%struct.nbu2ss_udc* %51)
  store i32 %52, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %66

53:                                               ; preds = %46
  %54 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %55 = call i32 @std_req_clear_feature(%struct.nbu2ss_udc* %54)
  store i32 %55, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %46
  %57 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %58 = call i32 @std_req_set_feature(%struct.nbu2ss_udc* %57)
  store i32 %58, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %61 = call i32 @std_req_set_address(%struct.nbu2ss_udc* %60)
  store i32 %61, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %64 = call i32 @std_req_set_configuration(%struct.nbu2ss_udc* %63)
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %62, %59, %56, %53, %50
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %72 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EP0_IN_STATUS_PHASE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %81 = call i32 @EP0_send_NULL(%struct.nbu2ss_udc* %80, i32 1)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %70
  br label %101

84:                                               ; preds = %67
  %85 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %86 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %89 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %91, align 8
  %93 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %94 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %93, i32 0, i32 3
  %95 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %96 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %95, i32 0, i32 2
  %97 = call i32 %92(i32* %94, %struct.usb_ctrlrequest* %96)
  store i32 %97, i32* %4, align 4
  %98 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %99 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  br label %101

101:                                              ; preds = %84, %83
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* @EP0_IDLE, align 8
  %106 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %107 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @_nbu2ss_read_request_data(%struct.nbu2ss_udc*, i32*) #1

declare dso_local i32 @std_req_get_status(%struct.nbu2ss_udc*) #1

declare dso_local i32 @std_req_clear_feature(%struct.nbu2ss_udc*) #1

declare dso_local i32 @std_req_set_feature(%struct.nbu2ss_udc*) #1

declare dso_local i32 @std_req_set_address(%struct.nbu2ss_udc*) #1

declare dso_local i32 @std_req_set_configuration(%struct.nbu2ss_udc*) #1

declare dso_local i32 @EP0_send_NULL(%struct.nbu2ss_udc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
