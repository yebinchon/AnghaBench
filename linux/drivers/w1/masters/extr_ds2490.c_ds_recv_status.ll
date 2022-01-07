; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_recv_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_recv_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32, i32*, i32 }
%struct.ds_status = type { i32 }

@EP_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to read 1-wire data from 0x%x: err=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, %struct.ds_status*, i32)* @ds_recv_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_recv_status(%struct.ds_device* %0, %struct.ds_status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_device*, align 8
  %6 = alloca %struct.ds_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %5, align 8
  store %struct.ds_status* %1, %struct.ds_status** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ds_status*, %struct.ds_status** %6, align 8
  %11 = icmp ne %struct.ds_status* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.ds_status*, %struct.ds_status** %6, align 8
  %14 = call i32 @memset(%struct.ds_status* %13, i32 0, i32 4)
  br label %15

15:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  %16 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %17 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %20 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %23 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @EP_STATUS, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvintpipe(i32 %21, i32 %27)
  %29 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %30 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_interrupt_msg(i32 %18, i32 %28, i32 %31, i32 4, i32* %8, i32 1000)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %15
  %36 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %37 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @EP_STATUS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %15
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %50 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %51 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ds_dump_status(%struct.ds_device* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.ds_status*, %struct.ds_status** %6, align 8
  %57 = icmp ne %struct.ds_status* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.ds_status*, %struct.ds_status** %6, align 8
  %64 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %65 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(%struct.ds_status* %63, i32 %66, i32 4)
  br label %68

68:                                               ; preds = %62, %58, %55
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %35
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.ds_status*, i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ds_dump_status(%struct.ds_device*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ds_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
