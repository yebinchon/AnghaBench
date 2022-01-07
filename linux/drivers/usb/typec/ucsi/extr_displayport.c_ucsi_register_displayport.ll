; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_register_displayport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_register_displayport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32*, i32 }
%struct.ucsi_connector = type { i32 }
%struct.typec_altmode_desc = type { i32 }
%struct.ucsi_dp = type { i32, i32, %struct.typec_altmode*, %struct.ucsi_connector*, i32 }

@DP_PIN_ASSIGN_C = common dso_local global i32 0, align 4
@DP_PIN_ASSIGN_D = common dso_local global i32 0, align 4
@DP_PIN_ASSIGN_E = common dso_local global i32 0, align 4
@DP_CAP_DP_SIGNALING = common dso_local global i32 0, align 4
@DP_CAP_RECEPTACLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ucsi_displayport_work = common dso_local global i32 0, align 4
@ucsi_displayport_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @ucsi_register_displayport(%struct.ucsi_connector* %0, i32 %1, i32 %2, %struct.typec_altmode_desc* %3) #0 {
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca %struct.ucsi_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.typec_altmode_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.typec_altmode*, align 8
  %12 = alloca %struct.ucsi_dp*, align 8
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.typec_altmode_desc* %3, %struct.typec_altmode_desc** %9, align 8
  %13 = load i32, i32* @DP_PIN_ASSIGN_C, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* @DP_PIN_ASSIGN_D, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @DP_PIN_ASSIGN_E, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @DP_CAP_DP_SIGNALING, align 4
  %22 = load i32, i32* @DP_CAP_RECEPTACLE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %25 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 8
  %30 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %31 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %37 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %41 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %44 = call %struct.typec_altmode* @typec_port_register_altmode(i32 %42, %struct.typec_altmode_desc* %43)
  store %struct.typec_altmode* %44, %struct.typec_altmode** %11, align 8
  %45 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %46 = call i64 @IS_ERR(%struct.typec_altmode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  store %struct.typec_altmode* %49, %struct.typec_altmode** %5, align 8
  br label %86

50:                                               ; preds = %4
  %51 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %52 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %51, i32 0, i32 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.ucsi_dp* @devm_kzalloc(i32* %52, i32 32, i32 %53)
  store %struct.ucsi_dp* %54, %struct.ucsi_dp** %12, align 8
  %55 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %56 = icmp ne %struct.ucsi_dp* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %59 = call i32 @typec_unregister_altmode(%struct.typec_altmode* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.typec_altmode* @ERR_PTR(i32 %61)
  store %struct.typec_altmode* %62, %struct.typec_altmode** %5, align 8
  br label %86

63:                                               ; preds = %50
  %64 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %65 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %64, i32 0, i32 4
  %66 = load i32, i32* @ucsi_displayport_work, align 4
  %67 = call i32 @INIT_WORK(i32* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %70 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %73 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ucsi_connector*, %struct.ucsi_connector** %6, align 8
  %75 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %76 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %75, i32 0, i32 3
  store %struct.ucsi_connector* %74, %struct.ucsi_connector** %76, align 8
  %77 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %78 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %79 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %78, i32 0, i32 2
  store %struct.typec_altmode* %77, %struct.typec_altmode** %79, align 8
  %80 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %81 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %80, i32 0, i32 0
  store i32* @ucsi_displayport_ops, i32** %81, align 8
  %82 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %83 = load %struct.ucsi_dp*, %struct.ucsi_dp** %12, align 8
  %84 = call i32 @typec_altmode_set_drvdata(%struct.typec_altmode* %82, %struct.ucsi_dp* %83)
  %85 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  store %struct.typec_altmode* %85, %struct.typec_altmode** %5, align 8
  br label %86

86:                                               ; preds = %63, %57, %48
  %87 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  ret %struct.typec_altmode* %87
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.typec_altmode* @typec_port_register_altmode(i32, %struct.typec_altmode_desc*) #1

declare dso_local i64 @IS_ERR(%struct.typec_altmode*) #1

declare dso_local %struct.ucsi_dp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @typec_unregister_altmode(%struct.typec_altmode*) #1

declare dso_local %struct.typec_altmode* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @typec_altmode_set_drvdata(%struct.typec_altmode*, %struct.ucsi_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
