; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @eem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eem_setup(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_function*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %9 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %10 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  store %struct.usb_composite_dev* %13, %struct.usb_composite_dev** %5, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DBG(%struct.usb_composite_dev* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  ret i32 %38
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
