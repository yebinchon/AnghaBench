; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_process_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_process_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { i8*, i32, i32, i32, %struct.TYPE_2__*, %struct.s3c_hsudc_ep* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32, i32 }
%struct.s3c_hsudc_ep = type { i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i8* null, align 8
@DATA_STATE_RECV = common dso_local global i8* null, align 8
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i8* null, align 8
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setup failed, returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc*)* @s3c_hsudc_process_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_process_setup(%struct.s3c_hsudc* %0) #0 {
  %2 = alloca %struct.s3c_hsudc*, align 8
  %3 = alloca %struct.s3c_hsudc_ep*, align 8
  %4 = alloca %struct.usb_ctrlrequest, align 4
  %5 = alloca i32, align 4
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %2, align 8
  %6 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %7 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %6, i32 0, i32 5
  %8 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %7, align 8
  %9 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %8, i64 0
  store %struct.s3c_hsudc_ep* %9, %struct.s3c_hsudc_ep** %3, align 8
  %10 = bitcast %struct.usb_ctrlrequest* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %12 = load i32, i32* @EPROTO, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep* %11, i32 %13)
  %15 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %16 = bitcast %struct.usb_ctrlrequest* %4 to i32*
  %17 = call i32 @s3c_hsudc_read_setup_pkt(%struct.s3c_hsudc* %15, i32* %16)
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %26 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i8*, i8** @DATA_STATE_XMIT, align 8
  %30 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %31 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %36 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i8*, i8** @DATA_STATE_RECV, align 8
  %40 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %41 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %32, %23
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %82 [
    i32 129, label %45
    i32 130, label %57
    i32 128, label %68
    i32 131, label %68
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %49 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %50 = or i32 %48, %49
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %82

53:                                               ; preds = %45
  %54 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %55 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %56 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %138

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USB_TYPE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %82

65:                                               ; preds = %57
  %66 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %67 = call i32 @s3c_hsudc_process_req_status(%struct.s3c_hsudc* %66, %struct.usb_ctrlrequest* %4)
  br label %138

68:                                               ; preds = %42, %42
  %69 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USB_TYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %82

76:                                               ; preds = %68
  %77 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %78 = call i32 @s3c_hsudc_handle_reqfeat(%struct.s3c_hsudc* %77, %struct.usb_ctrlrequest* %4)
  %79 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %80 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %81 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %138

82:                                               ; preds = %42, %75, %64, %52
  %83 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %84 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %138

87:                                               ; preds = %82
  %88 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %89 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %92 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %91, i32 0, i32 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %94, align 8
  %96 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %97 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %96, i32 0, i32 3
  %98 = call i32 %95(i32* %97, %struct.usb_ctrlrequest* %4)
  store i32 %98, i32* %5, align 4
  %99 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %100 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %99, i32 0, i32 2
  %101 = call i32 @spin_lock(i32* %100)
  %102 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %87
  %107 = load i32, i32* @USB_DIR_IN, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %110 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %114 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %115 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %106, %87
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %121 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %126 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %125, i32 0, i32 1
  %127 = call i32 @s3c_hsudc_set_halt(i32* %126, i32 1)
  %128 = load i8*, i8** @WAIT_FOR_SETUP, align 8
  %129 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %130 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @USB_DIR_IN, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %134 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %119, %116
  br label %138

138:                                              ; preds = %53, %65, %76, %137, %82
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep*, i32) #2

declare dso_local i32 @s3c_hsudc_read_setup_pkt(%struct.s3c_hsudc*, i32*) #2

declare dso_local i32 @s3c_hsudc_process_req_status(%struct.s3c_hsudc*, %struct.usb_ctrlrequest*) #2

declare dso_local i32 @s3c_hsudc_handle_reqfeat(%struct.s3c_hsudc*, %struct.usb_ctrlrequest*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @s3c_hsudc_set_halt(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
