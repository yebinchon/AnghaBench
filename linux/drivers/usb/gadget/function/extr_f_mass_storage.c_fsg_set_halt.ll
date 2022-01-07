; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"bulk-in\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bulk-out\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s set halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.usb_ep*)* @fsg_set_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_set_halt(%struct.fsg_dev* %0, %struct.usb_ep* %1) #0 {
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i8*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %4, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %7 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %7, i32 0, i32 1
  %9 = load %struct.usb_ep*, %struct.usb_ep** %8, align 8
  %10 = icmp eq %struct.usb_ep* %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %15 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %14, i32 0, i32 0
  %16 = load %struct.usb_ep*, %struct.usb_ep** %15, align 8
  %17 = icmp eq %struct.usb_ep* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %19, %18
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @DBG(%struct.fsg_dev* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %29 = call i32 @usb_ep_set_halt(%struct.usb_ep* %28)
  ret i32 %29
}

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*, i8*) #1

declare dso_local i32 @usb_ep_set_halt(%struct.usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
