; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_handle_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_irq_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.pxa_ep* }
%struct.pxa_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UDCISR0 = common dso_local global i32 0, align 4
@UDCCISR0_EP_MASK = common dso_local global i32 0, align 4
@UDCISR1 = common dso_local global i32 0, align 4
@UDCCISR1_EP_MASK = common dso_local global i32 0, align 4
@UDCISR_INT_MASK = common dso_local global i32 0, align 4
@UDCICR_FIFOERR = common dso_local global i32 0, align 4
@UDCICR_PKTCOMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pxa_udc*)* @irq_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_handle_data(i32 %0, %struct.pxa_udc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pxa_udc* %1, %struct.pxa_udc** %4, align 8
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %10 = load i32, i32* @UDCISR0, align 4
  %11 = call i32 @udc_readl(%struct.pxa_udc* %9, i32 %10)
  %12 = load i32, i32* @UDCCISR0_EP_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %15 = load i32, i32* @UDCISR1, align 4
  %16 = call i32 @udc_readl(%struct.pxa_udc* %14, i32 %15)
  %17 = load i32, i32* @UDCCISR1_EP_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @UDCISR_INT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %25 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %24, i32 0, i32 0
  %26 = load %struct.pxa_ep*, %struct.pxa_ep** %25, align 8
  %27 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %26, i64 0
  %28 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %33 = load i32, i32* @UDCISR0, align 4
  %34 = load i32, i32* @UDCISR_INT_MASK, align 4
  %35 = call i32 @UDCISR_INT(i32 0, i32 %34)
  %36 = call i32 @udc_writel(%struct.pxa_udc* %32, i32 %33, i32 %35)
  %37 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @UDCICR_FIFOERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @UDCICR_PKTCOMPL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @handle_ep0(%struct.pxa_udc* %37, i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %23, %2
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %106, %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 16
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %111

64:                                               ; preds = %62
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @UDCISR_INT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %106

70:                                               ; preds = %64
  %71 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %72 = load i32, i32* @UDCISR0, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @UDCISR_INT_MASK, align 4
  %75 = call i32 @UDCISR_INT(i32 %73, i32 %74)
  %76 = call i32 @udc_writel(%struct.pxa_udc* %71, i32 %72, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %79 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %78, i32 0, i32 0
  %80 = load %struct.pxa_ep*, %struct.pxa_ep** %79, align 8
  %81 = call i32 @ARRAY_SIZE(%struct.pxa_ep* %80)
  %82 = icmp sge i32 %77, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %87 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %86, i32 0, i32 0
  %88 = load %struct.pxa_ep*, %struct.pxa_ep** %87, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.pxa_ep* %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %70
  %92 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %93 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %92, i32 0, i32 0
  %94 = load %struct.pxa_ep*, %struct.pxa_ep** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %94, i64 %96
  store %struct.pxa_ep* %97, %struct.pxa_ep** %6, align 8
  %98 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %99 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %104 = call i32 @handle_ep(%struct.pxa_ep* %103)
  br label %105

105:                                              ; preds = %91, %70
  br label %106

106:                                              ; preds = %105, %69
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %107, 2
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %56

111:                                              ; preds = %62
  store i32 16, i32* %5, align 4
  br label %112

112:                                              ; preds = %163, %111
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 24
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i1 [ false, %112 ], [ %117, %115 ]
  br i1 %119, label %120, label %168

120:                                              ; preds = %118
  %121 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %122 = load i32, i32* @UDCISR1, align 4
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 16
  %125 = load i32, i32* @UDCISR_INT_MASK, align 4
  %126 = call i32 @UDCISR_INT(i32 %124, i32 %125)
  %127 = call i32 @udc_writel(%struct.pxa_udc* %121, i32 %122, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @UDCISR_INT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %163

133:                                              ; preds = %120
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %136 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %135, i32 0, i32 0
  %137 = load %struct.pxa_ep*, %struct.pxa_ep** %136, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.pxa_ep* %137)
  %139 = icmp sge i32 %134, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @WARN_ON(i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %144 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %143, i32 0, i32 0
  %145 = load %struct.pxa_ep*, %struct.pxa_ep** %144, align 8
  %146 = call i32 @ARRAY_SIZE(%struct.pxa_ep* %145)
  %147 = icmp slt i32 %142, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %133
  %149 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %150 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %149, i32 0, i32 0
  %151 = load %struct.pxa_ep*, %struct.pxa_ep** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %151, i64 %153
  store %struct.pxa_ep* %154, %struct.pxa_ep** %6, align 8
  %155 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %156 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %161 = call i32 @handle_ep(%struct.pxa_ep* %160)
  br label %162

162:                                              ; preds = %148, %133
  br label %163

163:                                              ; preds = %162, %132
  %164 = load i32, i32* %8, align 4
  %165 = ashr i32 %164, 2
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %112

168:                                              ; preds = %118
  ret void
}

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @UDCISR_INT(i32, i32) #1

declare dso_local i32 @handle_ep0(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pxa_ep*) #1

declare dso_local i32 @handle_ep(%struct.pxa_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
