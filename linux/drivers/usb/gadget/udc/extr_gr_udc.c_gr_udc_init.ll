; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_udc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_udc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_udc = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@GR_EP0_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"epobufsizes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"epibufsizes\00", align 1
@MAX_CTRL_PL_SIZE = common dso_local global i32 0, align 4
@GR_EPCTRL_MAXPL_POS = common dso_local global i32 0, align 4
@GR_EPCTRL_EV = common dso_local global i32 0, align 4
@GR_DMACTRL_IE = common dso_local global i32 0, align 4
@GR_DMACTRL_AI = common dso_local global i32 0, align 4
@GR_EPCTRL_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gr_udc*)* @gr_udc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr_udc_init(%struct.gr_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gr_udc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gr_udc* %0, %struct.gr_udc** %3, align 8
  %10 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %11 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %10, i32 0, i32 7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %16 = call i32 @gr_set_address(%struct.gr_udc* %15, i32 0)
  %17 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %18 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %22 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %23 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %26 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %31 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %34 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %37 = load i32, i32* @GR_EP0_DISCONNECT, align 4
  %38 = call i32 @gr_set_ep0state(%struct.gr_udc* %36, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %61, %1
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %42 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @of_property_read_u32_index(%struct.device_node* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1024, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @gr_ep_init(%struct.gr_udc* %52, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %139

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %39

64:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %68 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @of_property_read_u32_index(%struct.device_node* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32* %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1024, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @gr_ep_init(%struct.gr_udc* %78, i32 %79, i32 1, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %139

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %92 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @MAX_CTRL_PL_SIZE, align 4
  %94 = load i32, i32* @GR_EPCTRL_MAXPL_POS, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @GR_EPCTRL_EV, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* @GR_DMACTRL_IE, align 4
  %99 = load i32, i32* @GR_DMACTRL_AI, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %102 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @gr_write32(i32* %107, i32 %108)
  %110 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %111 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @GR_EPCTRL_PI, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @gr_write32(i32* %116, i32 %119)
  %121 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %122 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @gr_write32(i32* %127, i32 %128)
  %130 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %131 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @gr_write32(i32* %136, i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %90, %84, %58
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @gr_set_address(%struct.gr_udc*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @gr_set_ep0state(%struct.gr_udc*, i32) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @gr_ep_init(%struct.gr_udc*, i32, i32, i32) #1

declare dso_local i32 @gr_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
