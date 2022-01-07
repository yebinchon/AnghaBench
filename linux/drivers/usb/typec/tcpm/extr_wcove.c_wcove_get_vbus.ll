; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_get_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_get_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.wcove_typec = type { i32, i32 }

@USBC_CC1_CTRL = common dso_local global i32 0, align 4
@USBC_CC_CTRL_VBUSOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*)* @wcove_get_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_get_vbus(%struct.tcpc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpc_dev*, align 8
  %4 = alloca %struct.wcove_typec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %3, align 8
  %7 = load %struct.tcpc_dev*, %struct.tcpc_dev** %3, align 8
  %8 = call %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev* %7)
  store %struct.wcove_typec* %8, %struct.wcove_typec** %4, align 8
  %9 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %10 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USBC_CC1_CTRL, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @USBC_CC_CTRL_VBUSOK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %27 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %29 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
