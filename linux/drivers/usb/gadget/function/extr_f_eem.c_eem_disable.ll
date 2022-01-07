; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_eem = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"eem deactivated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_function*)* @eem_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eem_disable(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.f_eem*, align 8
  %4 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %5 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %6 = call %struct.f_eem* @func_to_eem(%struct.usb_function* %5)
  store %struct.f_eem* %6, %struct.f_eem** %3, align 8
  %7 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %8 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %10, align 8
  store %struct.usb_composite_dev* %11, %struct.usb_composite_dev** %4, align 8
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %13 = call i32 @DBG(%struct.usb_composite_dev* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.f_eem*, %struct.f_eem** %3, align 8
  %15 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.f_eem*, %struct.f_eem** %3, align 8
  %23 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %22, i32 0, i32 0
  %24 = call i32 @gether_disconnect(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.f_eem* @func_to_eem(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
