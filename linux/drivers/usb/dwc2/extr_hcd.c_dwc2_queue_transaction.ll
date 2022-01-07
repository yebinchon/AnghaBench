; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_queue_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_queue_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dwc2_host_chan = type { i64, i64, i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@DWC2_HC_PID_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32)* @dwc2_queue_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_queue_transaction(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %9 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %14 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %13, i32 0, i32 10
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 1
  %17 = call i32 @list_move_tail(i32* %14, i32* %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %32 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %37 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %30
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %43 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %44 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %43, i32 0, i32 9
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @dwc2_hcd_start_xfer_ddma(%struct.dwc2_hsotg* %42, %struct.TYPE_4__* %45)
  %47 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %48 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %47, i32 0, i32 9
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %35
  br label %66

52:                                               ; preds = %24
  %53 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %54 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %59 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %60 = call i32 @dwc2_hc_start_transfer(%struct.dwc2_hsotg* %58, %struct.dwc2_host_chan* %59)
  %61 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %62 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %61, i32 0, i32 9
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %51
  br label %152

67:                                               ; preds = %18
  %68 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %69 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %151

73:                                               ; preds = %67
  %74 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %75 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %80 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %81 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %82 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dwc2_hc_halt(%struct.dwc2_hsotg* %79, %struct.dwc2_host_chan* %80, i32 %83)
  br label %150

85:                                               ; preds = %73
  %86 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %87 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %92 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %97 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %98 = call i32 @dwc2_hc_start_transfer(%struct.dwc2_hsotg* %96, %struct.dwc2_host_chan* %97)
  br label %99

99:                                               ; preds = %95, %90
  br label %149

100:                                              ; preds = %85
  %101 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %102 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %107 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DWC2_HC_PID_SETUP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 %112, 4
  %114 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %115 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %113, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %120 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %125 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %126 = call i32 @dwc2_hc_start_transfer(%struct.dwc2_hsotg* %124, %struct.dwc2_host_chan* %125)
  store i32 1, i32* %7, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %129 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %130 = call i32 @dwc2_hc_continue_transfer(%struct.dwc2_hsotg* %128, %struct.dwc2_host_chan* %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %133

132:                                              ; preds = %111
  store i32 -1, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %148

134:                                              ; preds = %105
  %135 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %136 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %141 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %142 = call i32 @dwc2_hc_start_transfer(%struct.dwc2_hsotg* %140, %struct.dwc2_host_chan* %141)
  store i32 1, i32* %7, align 4
  br label %147

143:                                              ; preds = %134
  %144 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %145 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %146 = call i32 @dwc2_hc_continue_transfer(%struct.dwc2_hsotg* %144, %struct.dwc2_host_chan* %145)
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %133
  br label %149

149:                                              ; preds = %148, %99
  br label %150

150:                                              ; preds = %149, %78
  br label %151

151:                                              ; preds = %150, %72
  br label %152

152:                                              ; preds = %151, %66
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @dwc2_hcd_start_xfer_ddma(%struct.dwc2_hsotg*, %struct.TYPE_4__*) #1

declare dso_local i32 @dwc2_hc_start_transfer(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @dwc2_hc_halt(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32) #1

declare dso_local i32 @dwc2_hc_continue_transfer(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
