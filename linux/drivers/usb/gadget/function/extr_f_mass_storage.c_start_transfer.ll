; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bulk-in\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error in submission: %s --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.usb_ep*, %struct.usb_request*)* @start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_transfer(%struct.fsg_dev* %0, %struct.usb_ep* %1, %struct.usb_request* %2) #0 {
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %2, %struct.usb_request** %6, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %9 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %10 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %9, i32 0, i32 0
  %11 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %12 = icmp eq %struct.usb_ep* %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %15 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %16 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dump_msg(%struct.fsg_dev* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20)
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %24 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @usb_ep_queue(%struct.usb_ep* %23, %struct.usb_request* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ESHUTDOWN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %44 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %49 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %50 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WARNING(%struct.fsg_dev* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42, %29
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @dump_msg(%struct.fsg_dev*, i8*, i32, i64) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @WARNING(%struct.fsg_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
