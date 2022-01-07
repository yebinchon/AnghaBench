; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac2.c_ac_rq_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac2.c_ac_rq_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.usb_ctrlrequest = type { i64 }

@UAC2_CS_CUR = common dso_local global i64 0, align 8
@UAC2_CS_RANGE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @ac_rq_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac_rq_in(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %6 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UAC2_CS_CUR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %14 = call i32 @in_rq_cur(%struct.usb_function* %12, %struct.usb_ctrlrequest* %13)
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UAC2_CS_RANGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %24 = call i32 @in_rq_range(%struct.usb_function* %22, %struct.usb_ctrlrequest* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @in_rq_cur(%struct.usb_function*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @in_rq_range(%struct.usb_function*, %struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
