; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.wcove_typec = type { i32 }

@USBC_CONTROL1 = common dso_local global i32 0, align 4
@USBC_IRQMASK1 = common dso_local global i32 0, align 4
@USBC_IRQMASK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*)* @wcove_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_init(%struct.tcpc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpc_dev*, align 8
  %4 = alloca %struct.wcove_typec*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %3, align 8
  %6 = load %struct.tcpc_dev*, %struct.tcpc_dev** %3, align 8
  %7 = call %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev* %6)
  store %struct.wcove_typec* %7, %struct.wcove_typec** %4, align 8
  %8 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %9 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @USBC_CONTROL1, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %19 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USBC_IRQMASK1, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %29 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USBC_IRQMASK2, align 4
  %32 = call i32 @regmap_write(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %25, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
