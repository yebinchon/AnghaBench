; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_respond_chipset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_respond_chipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.controlvm_message_header = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@chipset_dev = common dso_local global %struct.TYPE_6__* null, align 8
@CONTROLVM_QUEUE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message_header*, i32, i32)* @controlvm_respond_chipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlvm_respond_chipset_init(%struct.controlvm_message_header* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.controlvm_message_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.controlvm_message, align 4
  store %struct.controlvm_message_header* %0, %struct.controlvm_message_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @controlvm_init_response(%struct.controlvm_message* %7, %struct.controlvm_message_header* %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @chipset_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CONTROLVM_QUEUE_REQUEST, align 4
  %19 = call i32 @visorchannel_signalinsert(i32 %17, i32 %18, %struct.controlvm_message* %7)
  ret i32 %19
}

declare dso_local i32 @controlvm_init_response(%struct.controlvm_message*, %struct.controlvm_message_header*, i32) #1

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.controlvm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
