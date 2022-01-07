; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.switchtec_dev = type { %struct.switchtec_ntb*, i32* }
%struct.switchtec_ntb = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ntb device unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.class_interface*)* @switchtec_ntb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_remove(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.class_interface*, align 8
  %5 = alloca %struct.switchtec_dev*, align 8
  %6 = alloca %struct.switchtec_ntb*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.class_interface* %1, %struct.class_interface** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.switchtec_dev* @to_stdev(%struct.device* %7)
  store %struct.switchtec_dev* %8, %struct.switchtec_dev** %5, align 8
  %9 = load %struct.switchtec_dev*, %struct.switchtec_dev** %5, align 8
  %10 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %9, i32 0, i32 0
  %11 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %10, align 8
  store %struct.switchtec_ntb* %11, %struct.switchtec_ntb** %6, align 8
  %12 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %13 = icmp ne %struct.switchtec_ntb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.switchtec_dev*, %struct.switchtec_dev** %5, align 8
  %17 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.switchtec_dev*, %struct.switchtec_dev** %5, align 8
  %19 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %18, i32 0, i32 0
  store %struct.switchtec_ntb* null, %struct.switchtec_ntb** %19, align 8
  %20 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %21 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %20, i32 0, i32 0
  %22 = call i32 @ntb_unregister_device(i32* %21)
  %23 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %24 = call i32 @switchtec_ntb_deinit_db_msg_irq(%struct.switchtec_ntb* %23)
  %25 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %26 = call i32 @switchtec_ntb_deinit_shared_mw(%struct.switchtec_ntb* %25)
  %27 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %28 = call i32 @switchtec_ntb_deinit_crosslink(%struct.switchtec_ntb* %27)
  %29 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %30 = call i32 @kfree(%struct.switchtec_ntb* %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @dev_info(%struct.device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.switchtec_dev* @to_stdev(%struct.device*) #1

declare dso_local i32 @ntb_unregister_device(i32*) #1

declare dso_local i32 @switchtec_ntb_deinit_db_msg_irq(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_deinit_shared_mw(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_deinit_crosslink(%struct.switchtec_ntb*) #1

declare dso_local i32 @kfree(%struct.switchtec_ntb*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
