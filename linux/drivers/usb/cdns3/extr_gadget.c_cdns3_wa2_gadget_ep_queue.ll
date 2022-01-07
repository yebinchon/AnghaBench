; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_gadget_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_gadget_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cdns3_endpoint = type { i32, i32, i32, i32, i32 }
%struct.cdns3_request = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EP_QUIRK_EXTRA_BUF_DET = common dso_local global i32 0, align 4
@EP_STS_EN_DESCMISEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"workaround disabled\0A\00", align 1
@EP_QUIRK_EXTRA_BUF_EN = common dso_local global i32 0, align 4
@REQUEST_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"get internal stored data\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"wait for pending transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_wa2_gadget_ep_queue(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1, %struct.cdns3_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca %struct.cdns3_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %5, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %6, align 8
  store %struct.cdns3_request* %2, %struct.cdns3_request** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EP_QUIRK_EXTRA_BUF_DET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %24 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = call i32 @cdns3_select_ep(%struct.cdns3_device* %19, i32 %26)
  %28 = load i32, i32* @EP_QUIRK_EXTRA_BUF_DET, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %31 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %35 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @readl(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @EP_STS_EN_DESCMISEN, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %44 = call i32 @trace_cdns3_wa2(%struct.cdns3_endpoint* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %47 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @writel(i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %18, %3
  %52 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %53 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EP_QUIRK_EXTRA_BUF_EN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %121

58:                                               ; preds = %51
  %59 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %60 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %59, i32 0, i32 4
  %61 = call i64 @list_empty(i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %63 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %62, i32 0, i32 3
  %64 = call i64 @list_empty(i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %58
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %67
  %71 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %72 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @REQUEST_INTERNAL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %70
  %78 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %79 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %80 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %79, i32 0, i32 2
  %81 = call i32 @cdns3_wa2_descmiss_copy_data(%struct.cdns3_endpoint* %78, %struct.TYPE_4__* %80)
  %82 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %83 = call i32 @trace_cdns3_wa2(%struct.cdns3_endpoint* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %85 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %88 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %87, i32 0, i32 4
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  %90 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %91 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %92 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %93 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %90, %struct.cdns3_request* %91, i32 %95)
  %97 = load i32, i32* @EINPROGRESS, align 4
  store i32 %97, i32* %4, align 4
  br label %123

98:                                               ; preds = %70, %67, %58
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %106 = call i32 @trace_cdns3_wa2(%struct.cdns3_endpoint* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %101, %98
  %108 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %109 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @REQUEST_INTERNAL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %116 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %115, i32 0, i32 1
  %117 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %118 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %117, i32 0, i32 3
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  br label %120

120:                                              ; preds = %114, %107
  br label %121

121:                                              ; preds = %120, %51
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %77
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @trace_cdns3_wa2(%struct.cdns3_endpoint*, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cdns3_wa2_descmiss_copy_data(%struct.cdns3_endpoint*, %struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint*, %struct.cdns3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
