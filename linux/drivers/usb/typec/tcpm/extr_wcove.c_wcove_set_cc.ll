; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.wcove_typec = type { i32 }

@USBC_CONTROL1_MODE_SNK = common dso_local global i32 0, align 4
@USBC_CONTROL1_CURSRC_UA_80 = common dso_local global i32 0, align 4
@USBC_CONTROL1_MODE_SRC = common dso_local global i32 0, align 4
@USBC_CONTROL1_CURSRC_UA_180 = common dso_local global i32 0, align 4
@USBC_CONTROL1_CURSRC_UA_330 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USBC_CONTROL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32)* @wcove_set_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_set_cc(%struct.tcpc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcove_typec*, align 8
  %7 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tcpc_dev*, %struct.tcpc_dev** %4, align 8
  %9 = call %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev* %8)
  store %struct.wcove_typec* %9, %struct.wcove_typec** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %26 [
    i32 131, label %11
    i32 128, label %13
    i32 130, label %17
    i32 129, label %21
    i32 132, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @USBC_CONTROL1_MODE_SNK, align 4
  store i32 %12, i32* %7, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @USBC_CONTROL1_CURSRC_UA_80, align 4
  %15 = load i32, i32* @USBC_CONTROL1_MODE_SRC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @USBC_CONTROL1_CURSRC_UA_180, align 4
  %19 = load i32, i32* @USBC_CONTROL1_MODE_SRC, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @USBC_CONTROL1_CURSRC_UA_330, align 4
  %23 = load i32, i32* @USBC_CONTROL1_MODE_SRC, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %25, %21, %17, %13, %11
  %30 = load %struct.wcove_typec*, %struct.wcove_typec** %6, align 8
  %31 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USBC_CONTROL1, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
