; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_flushtxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_flushtxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, i32, i32, i32, %struct.qe_udc* }
%struct.qe_udc = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@USB_CMD_FLUSH_FIFO = common dso_local global i32 0, align 4
@USB_CMD_EP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @qe_ep_flushtxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_flushtxfifo(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %5 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %6 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %5, i32 0, i32 4
  %7 = load %struct.qe_udc*, %struct.qe_udc** %6, align 8
  store %struct.qe_udc* %7, %struct.qe_udc** %3, align 8
  %8 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %9 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %12 = call i32 @qe_ep_cmd_stoptx(%struct.qe_ep* %11)
  %13 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* @USB_CMD_FLUSH_FIFO, align 4
  %18 = load i32, i32* @USB_CMD_EP_MASK, align 4
  %19 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %20 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = or i32 %17, %22
  %24 = call i32 @out_8(i32* %16, i32 %23)
  %25 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %26 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %34 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = call i32 @in_be16(i32* %40)
  %42 = call i32 @out_be16(i32* %32, i32 %41)
  %43 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %44 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @out_be32(i32* %50, i32 0)
  %52 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %53 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @out_be16(i32* %59, i32 0)
  %61 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %62 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %65 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %67 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %70 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %72 = call i32 @qe_ep_cmd_restarttx(%struct.qe_ep* %71)
  ret i32 0
}

declare dso_local i32 @qe_ep_cmd_stoptx(%struct.qe_ep*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @qe_ep_cmd_restarttx(%struct.qe_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
