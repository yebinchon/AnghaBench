; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_command_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_command_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i64, %struct.f_rndis* }
%struct.f_rndis = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"RNDIS command error %d, %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @rndis_command_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_command_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_rndis*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %7 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %8 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %7, i32 0, i32 3
  %9 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  store %struct.f_rndis* %9, %struct.f_rndis** %5, align 8
  %10 = load %struct.f_rndis*, %struct.f_rndis** %5, align 8
  %11 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %14 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @rndis_msg_parser(i32 %12, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @rndis_msg_parser(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
