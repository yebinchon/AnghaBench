; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.switchtec_dev = type { i32, %struct.switchtec_ntb*, %struct.TYPE_2__* }
%struct.switchtec_ntb = type { i32, %struct.switchtec_dev* }
%struct.TYPE_2__ = type { i32 }

@PCI_CLASS_BRIDGE_OTHER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LINK_MESSAGE = common dso_local global i32 0, align 4
@MSG_LINK_FORCE_DOWN = common dso_local global i32 0, align 4
@switchtec_ntb_link_notification = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NTB device registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register ntb device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.class_interface*)* @switchtec_ntb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_add(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.class_interface*, align 8
  %6 = alloca %struct.switchtec_dev*, align 8
  %7 = alloca %struct.switchtec_ntb*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.class_interface* %1, %struct.class_interface** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.switchtec_dev* @to_stdev(%struct.device* %9)
  store %struct.switchtec_dev* %10, %struct.switchtec_dev** %6, align 8
  %11 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %12 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %11, i32 0, i32 1
  store %struct.switchtec_ntb* null, %struct.switchtec_ntb** %12, align 8
  %13 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %14 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCI_CLASS_BRIDGE_OTHER, align 4
  %19 = shl i32 %18, 8
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_to_node(%struct.device* %26)
  %28 = call %struct.switchtec_ntb* @kzalloc_node(i32 16, i32 %25, i32 %27)
  store %struct.switchtec_ntb* %28, %struct.switchtec_ntb** %7, align 8
  %29 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %30 = icmp ne %struct.switchtec_ntb* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %109

34:                                               ; preds = %24
  %35 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %36 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %37 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %36, i32 0, i32 1
  store %struct.switchtec_dev* %35, %struct.switchtec_dev** %37, align 8
  %38 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %39 = call i32 @switchtec_ntb_init_sndev(%struct.switchtec_ntb* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %102

43:                                               ; preds = %34
  %44 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %45 = call i32 @switchtec_ntb_init_mw(%struct.switchtec_ntb* %44)
  %46 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %47 = call i32 @switchtec_ntb_init_req_id_table(%struct.switchtec_ntb* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %102

51:                                               ; preds = %43
  %52 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %53 = call i32 @switchtec_ntb_init_crosslink(%struct.switchtec_ntb* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %102

57:                                               ; preds = %51
  %58 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %59 = call i32 @switchtec_ntb_init_db(%struct.switchtec_ntb* %58)
  %60 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %61 = call i32 @switchtec_ntb_init_msgs(%struct.switchtec_ntb* %60)
  %62 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %63 = call i32 @switchtec_ntb_init_shared_mw(%struct.switchtec_ntb* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %99

67:                                               ; preds = %57
  %68 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %69 = call i32 @switchtec_ntb_init_db_msg_irq(%struct.switchtec_ntb* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %96

73:                                               ; preds = %67
  %74 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %75 = load i32, i32* @LINK_MESSAGE, align 4
  %76 = load i32, i32* @MSG_LINK_FORCE_DOWN, align 4
  %77 = call i32 @switchtec_ntb_send_msg(%struct.switchtec_ntb* %74, i32 %75, i32 %76)
  %78 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %79 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %78, i32 0, i32 0
  %80 = call i32 @ntb_register_device(i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %93

84:                                               ; preds = %73
  %85 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %86 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %87 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %86, i32 0, i32 1
  store %struct.switchtec_ntb* %85, %struct.switchtec_ntb** %87, align 8
  %88 = load i32, i32* @switchtec_ntb_link_notification, align 4
  %89 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %90 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @dev_info(%struct.device* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

93:                                               ; preds = %83
  %94 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %95 = call i32 @switchtec_ntb_deinit_db_msg_irq(%struct.switchtec_ntb* %94)
  br label %96

96:                                               ; preds = %93, %72
  %97 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %98 = call i32 @switchtec_ntb_deinit_shared_mw(%struct.switchtec_ntb* %97)
  br label %99

99:                                               ; preds = %96, %66
  %100 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %101 = call i32 @switchtec_ntb_deinit_crosslink(%struct.switchtec_ntb* %100)
  br label %102

102:                                              ; preds = %99, %56, %50, %42
  %103 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %7, align 8
  %104 = call i32 @kfree(%struct.switchtec_ntb* %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %84, %31, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.switchtec_dev* @to_stdev(%struct.device*) #1

declare dso_local %struct.switchtec_ntb* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @switchtec_ntb_init_sndev(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_mw(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_req_id_table(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_crosslink(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_db(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_msgs(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_shared_mw(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_init_db_msg_irq(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_send_msg(%struct.switchtec_ntb*, i32, i32) #1

declare dso_local i32 @ntb_register_device(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @switchtec_ntb_deinit_db_msg_irq(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_deinit_shared_mw(%struct.switchtec_ntb*) #1

declare dso_local i32 @switchtec_ntb_deinit_crosslink(%struct.switchtec_ntb*) #1

declare dso_local i32 @kfree(%struct.switchtec_ntb*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
