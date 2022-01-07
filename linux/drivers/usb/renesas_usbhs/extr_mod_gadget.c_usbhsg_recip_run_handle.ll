; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_run_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_run_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsg_recip_handle = type { i32 (%struct.usbhs_priv.0*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)*, i32 (%struct.usbhs_priv.1*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.2*)*, i32 (%struct.usbhs_priv.3*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.4*)*, i32 }
%struct.usbhs_priv.0 = type opaque
%struct.usbhsg_uep = type { i32 }
%struct.usb_ctrlrequest = type opaque
%struct.usbhs_priv.1 = type opaque
%struct.usb_ctrlrequest.2 = type opaque
%struct.usbhs_priv.3 = type opaque
%struct.usb_ctrlrequest.4 = type opaque
%struct.usb_ctrlrequest.5 = type { i32, i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.device = type { i32 }
%struct.usbhs_pipe = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wrong recip request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ENDPOINT\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unsupported RECIP(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s (pipe %d :%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, %struct.usbhsg_recip_handle*, %struct.usb_ctrlrequest.5*)* @usbhsg_recip_run_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_recip_run_handle(%struct.usbhs_priv* %0, %struct.usbhsg_recip_handle* %1, %struct.usb_ctrlrequest.5* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca %struct.usbhsg_recip_handle*, align 8
  %7 = alloca %struct.usb_ctrlrequest.5*, align 8
  %8 = alloca %struct.usbhsg_gpriv*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.usbhsg_uep*, align 8
  %11 = alloca %struct.usbhs_pipe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*, align 8
  %16 = alloca i8*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %5, align 8
  store %struct.usbhsg_recip_handle* %1, %struct.usbhsg_recip_handle** %6, align 8
  store %struct.usb_ctrlrequest.5* %2, %struct.usb_ctrlrequest.5** %7, align 8
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %18 = call %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv* %17)
  store %struct.usbhsg_gpriv* %18, %struct.usbhsg_gpriv** %8, align 8
  %19 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %8, align 8
  %20 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %19)
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.usb_ctrlrequest.5*, %struct.usb_ctrlrequest.5** %7, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest.5, %struct.usb_ctrlrequest.5* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_RECIP_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.usb_ctrlrequest.5*, %struct.usb_ctrlrequest.5** %7, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest.5, %struct.usb_ctrlrequest.5* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.usbhsg_uep* @usbhsg_gpriv_to_nth_uep(%struct.usbhsg_gpriv* %32, i32 %33)
  store %struct.usbhsg_uep* %34, %struct.usbhsg_uep** %10, align 8
  %35 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %10, align 8
  %36 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %35)
  store %struct.usbhs_pipe* %36, %struct.usbhs_pipe** %11, align 8
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  %38 = icmp ne %struct.usbhs_pipe* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %85

44:                                               ; preds = %3
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %61 [
    i32 130, label %46
    i32 128, label %51
    i32 129, label %56
  ]

46:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %47 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %6, align 8
  %48 = getelementptr inbounds %struct.usbhsg_recip_handle, %struct.usbhsg_recip_handle* %47, i32 0, i32 0
  %49 = load i32 (%struct.usbhs_priv.0*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)*, i32 (%struct.usbhs_priv.0*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)** %48, align 8
  %50 = bitcast i32 (%struct.usbhs_priv.0*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)* %49 to i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*
  store i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)* %50, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  br label %67

51:                                               ; preds = %44
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %52 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %6, align 8
  %53 = getelementptr inbounds %struct.usbhsg_recip_handle, %struct.usbhsg_recip_handle* %52, i32 0, i32 1
  %54 = load i32 (%struct.usbhs_priv.1*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.2*)*, i32 (%struct.usbhs_priv.1*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.2*)** %53, align 8
  %55 = bitcast i32 (%struct.usbhs_priv.1*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.2*)* %54 to i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*
  store i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)* %55, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  br label %67

56:                                               ; preds = %44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  %57 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %6, align 8
  %58 = getelementptr inbounds %struct.usbhsg_recip_handle, %struct.usbhsg_recip_handle* %57, i32 0, i32 2
  %59 = load i32 (%struct.usbhs_priv.3*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.4*)*, i32 (%struct.usbhs_priv.3*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.4*)** %58, align 8
  %60 = bitcast i32 (%struct.usbhs_priv.3*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.4*)* %59 to i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*
  store i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)* %60, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  br label %67

61:                                               ; preds = %44
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)* null, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %61, %56, %51, %46
  %68 = load i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  %69 = icmp ne i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %6, align 8
  %73 = getelementptr inbounds %struct.usbhsg_recip_handle, %struct.usbhsg_recip_handle* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %75, i8* %76)
  %78 = load i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)*, i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest.5*)** %15, align 8
  %79 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %80 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %10, align 8
  %81 = load %struct.usb_ctrlrequest.5*, %struct.usb_ctrlrequest.5** %7, align 8
  %82 = call i32 %78(%struct.usbhs_priv* %79, %struct.usbhsg_uep* %80, %struct.usb_ctrlrequest.5* %81)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %70, %67
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %39
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.usbhsg_uep* @usbhsg_gpriv_to_nth_uep(%struct.usbhsg_gpriv*, i32) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
