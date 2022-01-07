; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_request_handled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_request_handled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, i64, i32, i64, i32, %struct.cdns3_trb*, %struct.cdns3_device* }
%struct.cdns3_trb = type { i32 }
%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_request = type { i64, i32, %struct.cdns3_trb* }

@EP_CMD_DRDY = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_endpoint*, %struct.cdns3_request*)* @cdns3_request_handled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_request_handled(%struct.cdns3_endpoint* %0, %struct.cdns3_request* %1) #0 {
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca %struct.cdns3_request*, align 8
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.cdns3_trb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %3, align 8
  store %struct.cdns3_request* %1, %struct.cdns3_request** %4, align 8
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 7
  %12 = load %struct.cdns3_device*, %struct.cdns3_device** %11, align 8
  store %struct.cdns3_device* %12, %struct.cdns3_device** %5, align 8
  %13 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %14 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %13, i32 0, i32 2
  %15 = load %struct.cdns3_trb*, %struct.cdns3_trb** %14, align 8
  store %struct.cdns3_trb* %15, %struct.cdns3_trb** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %17 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %18 = call i32 @cdns3_get_dma_pos(%struct.cdns3_device* %16, %struct.cdns3_endpoint* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %20 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @readl(i32* %22)
  %24 = load i32, i32* @EP_CMD_DRDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %31 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %30, i32 0, i32 6
  %32 = load %struct.cdns3_trb*, %struct.cdns3_trb** %31, align 8
  %33 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %34 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %32, i64 %35
  store %struct.cdns3_trb* %36, %struct.cdns3_trb** %6, align 8
  %37 = load %struct.cdns3_trb*, %struct.cdns3_trb** %6, align 8
  %38 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TRB_CYCLE, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %43 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %141

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %53 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %141

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %62 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %141

67:                                               ; preds = %60, %57
  %68 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %69 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %72 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %77 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %8, align 4
  br label %140

81:                                               ; preds = %75, %67
  %82 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %83 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %90 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %96 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %141

100:                                              ; preds = %94, %87
  %101 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %102 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %105 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %110 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %108, %100
  br label %139

116:                                              ; preds = %81
  %117 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %118 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %124 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %122
  %129 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %130 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %133 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %122
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %128
  br label %138

138:                                              ; preds = %137, %116
  br label %139

139:                                              ; preds = %138, %115
  br label %140

140:                                              ; preds = %139, %80
  br label %141

141:                                              ; preds = %140, %99, %66, %56, %46
  %142 = load %struct.cdns3_request*, %struct.cdns3_request** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @trace_cdns3_request_handled(%struct.cdns3_request* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @cdns3_get_dma_pos(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @trace_cdns3_request_handled(%struct.cdns3_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
