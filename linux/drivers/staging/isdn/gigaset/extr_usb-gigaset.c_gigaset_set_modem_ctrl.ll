; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_set_modem_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_set_modem_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@DEBUG_USBREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"set flags 0x%02x with mask 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32, i32)* @gigaset_set_modem_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_set_modem_ctrl(%struct.cardstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %18, %19
  %21 = call i32 @tiocm_to_gigaset(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @tiocm_to_gigaset(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @DEBUG_USBREQ, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @gig_dbg(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %30 = call i32 @usb_sndctrlpipe(%struct.usb_device* %29, i32 0)
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  %36 = or i32 %32, %35
  %37 = call i32 @usb_control_msg(%struct.usb_device* %28, i32 %30, i32 7, i32 65, i32 %36, i32 0, i32* null, i32 0, i32 2000)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @tiocm_to_gigaset(i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
