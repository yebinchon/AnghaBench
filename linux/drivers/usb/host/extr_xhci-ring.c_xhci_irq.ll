; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %union.xhci_trb*, i32 }
%union.xhci_trb = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STS_EINT = common dso_local global i32 0, align 4
@STS_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WARNING: Host System Error\0A\00", align 1
@IMAN_IP = common dso_local global i32 0, align 4
@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"xHCI dying, ignoring interrupt. Shouldn't IRQs be disabled?\0A\00", align 1
@ERST_EHB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"WARN something wrong with SW event ring dequeue ptr.\0A\00", align 1
@ERST_PTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_irq(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %union.xhci_trb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %12 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %11)
  store %struct.xhci_hcd* %12, %struct.xhci_hcd** %3, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @readl(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %27 = call i32 @xhci_hc_died(%struct.xhci_hcd* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %5, align 4
  br label %173

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @STS_EINT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %173

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @STS_FATAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %42 = call i32 @xhci_warn(%struct.xhci_hcd* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %44 = call i32 @xhci_halt(%struct.xhci_hcd* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %5, align 4
  br label %173

46:                                               ; preds = %35
  %47 = load i32, i32* @STS_EINT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @writel(i32 %50, i32* %54)
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %46
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %62 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @readl(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @IMAN_IP, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %71 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = call i32 @writel(i32 %69, i32* %73)
  br label %75

75:                                               ; preds = %60, %46
  %76 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %77 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @XHCI_STATE_DYING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %84 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %82, %75
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %91 = call i32 @xhci_dbg(%struct.xhci_hcd* %90, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %94 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @xhci_read_64(%struct.xhci_hcd* %92, i32* %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ERST_EHB, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %103 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @xhci_write_64(%struct.xhci_hcd* %98, i32 %101, i32* %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %5, align 4
  br label %173

108:                                              ; preds = %82
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %110 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %union.xhci_trb*, %union.xhci_trb** %112, align 8
  store %union.xhci_trb* %113, %union.xhci_trb** %4, align 8
  br label %114

114:                                              ; preds = %118, %108
  %115 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %116 = call i64 @xhci_handle_event(%struct.xhci_hcd* %115)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %114

119:                                              ; preds = %114
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %121 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %122 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = call i32 @xhci_read_64(%struct.xhci_hcd* %120, i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load %union.xhci_trb*, %union.xhci_trb** %4, align 8
  %127 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %128 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %union.xhci_trb*, %union.xhci_trb** %130, align 8
  %132 = icmp ne %union.xhci_trb* %126, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %119
  %134 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %135 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %134, i32 0, i32 3
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %140 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load %union.xhci_trb*, %union.xhci_trb** %142, align 8
  %144 = call i64 @xhci_trb_virt_to_dma(i32 %138, %union.xhci_trb* %143)
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %133
  %148 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %149 = call i32 @xhci_warn(%struct.xhci_hcd* %148, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %133
  %151 = load i32, i32* @ERST_PTR_MASK, align 4
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load i64, i64* %7, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @ERST_PTR_MASK, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %150, %119
  %162 = load i32, i32* @ERST_EHB, align 4
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %168 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = call i32 @xhci_write_64(%struct.xhci_hcd* %165, i32 %166, i32* %170)
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %161, %89, %40, %34, %25
  %174 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %175 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %174, i32 0, i32 1
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @xhci_hc_died(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_write_64(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i64 @xhci_handle_event(%struct.xhci_hcd*) #1

declare dso_local i64 @xhci_trb_virt_to_dma(i32, %union.xhci_trb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
