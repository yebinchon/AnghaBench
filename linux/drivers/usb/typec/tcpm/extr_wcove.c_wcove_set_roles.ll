; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_roles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.wcove_typec = type { i32 }

@WCOVE_FUNC_ROLE = common dso_local global i32 0, align 4
@TYPEC_HOST = common dso_local global i32 0, align 4
@WCOVE_ROLE_HOST = common dso_local global i32 0, align 4
@WCOVE_ROLE_DEVICE = common dso_local global i32 0, align 4
@USBC_PDCFG3_DATAROLE_SHIFT = common dso_local global i32 0, align 4
@PD_REV20 = common dso_local global i32 0, align 4
@USBC_PDCFG3_SOP_SHIFT = common dso_local global i32 0, align 4
@USBC_PDCFG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32, i32, i32)* @wcove_set_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_set_roles(%struct.tcpc_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wcove_typec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tcpc_dev*, %struct.tcpc_dev** %6, align 8
  %14 = call %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev* %13)
  store %struct.wcove_typec* %14, %struct.wcove_typec** %10, align 8
  %15 = load %struct.wcove_typec*, %struct.wcove_typec** %10, align 8
  %16 = load i32, i32* @WCOVE_FUNC_ROLE, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TYPEC_HOST, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @WCOVE_ROLE_HOST, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @WCOVE_ROLE_DEVICE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @wcove_typec_func(%struct.wcove_typec* %15, i32 %16, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @USBC_PDCFG3_DATAROLE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @PD_REV20, align 4
  %39 = load i32, i32* @USBC_PDCFG3_SOP_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.wcove_typec*, %struct.wcove_typec** %10, align 8
  %44 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USBC_PDCFG3, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %31, %29
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev*) #1

declare dso_local i32 @wcove_typec_func(%struct.wcove_typec*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
