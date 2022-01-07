; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_class_hub_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_class_hub_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"GetHubStatus\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GetPortStatus(%d)\0A\00", align 1
@USB_DT_HUB = common dso_local global i32 0, align 4
@std_req_stall = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"GetHubDescriptor(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Get/SetHubFeature(%d)\0A\00", align 1
@C_HUB_LOCAL_POWER = common dso_local global i32 0, align 4
@C_HUB_OVER_CURRENT = common dso_local global i32 0, align 4
@std_req_complete = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"SetPortFeature(%d,%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ClearPortFeature(%d,%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown class request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_vhub_class_hub_request(%struct.ast_vhub_ep* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_vhub_ep*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  switch i32 %28, label %101 [
    i32 134, label %29
    i32 133, label %34
    i32 135, label %43
    i32 130, label %59
    i32 138, label %59
    i32 129, label %74
    i32 137, label %85
    i32 136, label %96
    i32 131, label %96
    i32 128, label %96
    i32 132, label %98
  ]

29:                                               ; preds = %2
  %30 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %31 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %33 = call i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep* %32, i32 0, i32 0, i32 0, i32 0)
  store i32 %33, i32* %3, align 4
  br label %106

34:                                               ; preds = %2
  %35 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 255
  %38 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 15
  %42 = call i32 @ast_vhub_get_port_stat(%struct.ast_vhub_ep* %39, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %106

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @USB_DT_HUB, align 4
  %46 = shl i32 %45, 8
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @std_req_stall, align 4
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %43
  %51 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 255
  %54 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %56 = load i32, i32* @USB_DT_HUB, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ast_vhub_rep_desc(%struct.ast_vhub_ep* %55, i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %2, %2
  %60 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @C_HUB_LOCAL_POWER, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @C_HUB_OVER_CURRENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %59
  %71 = load i32, i32* @std_req_complete, align 4
  store i32 %71, i32* %3, align 4
  br label %106

72:                                               ; preds = %66
  %73 = load i32, i32* @std_req_stall, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %2
  %75 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 15
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 15
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ast_vhub_set_port_feature(%struct.ast_vhub_ep* %80, i32 %82, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %106

85:                                               ; preds = %2
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 15
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 15
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ast_vhub_clr_port_feature(%struct.ast_vhub_ep* %91, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %2, %2, %2
  %97 = load i32, i32* @std_req_complete, align 4
  store i32 %97, i32* %3, align 4
  br label %106

98:                                               ; preds = %2
  %99 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %100 = call i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep* %99, i32 0, i32 0, i32 0, i32 0)
  store i32 %100, i32* %3, align 4
  br label %106

101:                                              ; preds = %2
  %102 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %103 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @std_req_stall, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %98, %96, %85, %74, %72, %70, %50, %48, %34, %29
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, ...) #1

declare dso_local i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_vhub_get_port_stat(%struct.ast_vhub_ep*, i32) #1

declare dso_local i32 @ast_vhub_rep_desc(%struct.ast_vhub_ep*, i32, i32) #1

declare dso_local i32 @ast_vhub_set_port_feature(%struct.ast_vhub_ep*, i32, i32) #1

declare dso_local i32 @ast_vhub_clr_port_feature(%struct.ast_vhub_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
