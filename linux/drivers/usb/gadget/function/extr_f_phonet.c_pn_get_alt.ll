; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_get_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_get_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_phonet = type { i32 }
%struct.phonet_port = type { i32, i32* }

@pn_control_intf_desc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@pn_data_intf_desc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32)* @pn_get_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_get_alt(%struct.usb_function* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f_phonet*, align 8
  %7 = alloca %struct.phonet_port*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %10 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %9)
  store %struct.f_phonet* %10, %struct.f_phonet** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pn_control_intf_desc, i32 0, i32 0), align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pn_data_intf_desc, i32 0, i32 0), align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.f_phonet*, %struct.f_phonet** %6, align 8
  %21 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.phonet_port* @netdev_priv(i32 %22)
  store %struct.phonet_port* %23, %struct.phonet_port** %7, align 8
  %24 = load %struct.phonet_port*, %struct.phonet_port** %7, align 8
  %25 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.phonet_port*, %struct.phonet_port** %7, align 8
  %28 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.phonet_port*, %struct.phonet_port** %7, align 8
  %33 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %15
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %19, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local %struct.phonet_port* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
