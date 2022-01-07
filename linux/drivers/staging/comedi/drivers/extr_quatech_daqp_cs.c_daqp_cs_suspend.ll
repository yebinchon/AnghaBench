; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_cs_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_cs_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.comedi_device* }
%struct.comedi_device = type { %struct.daqp_private* }
%struct.daqp_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @daqp_cs_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_cs_suspend(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.daqp_private*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  store %struct.comedi_device* %7, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = icmp ne %struct.comedi_device* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.daqp_private*, %struct.daqp_private** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi %struct.daqp_private* [ %13, %10 ], [ null, %14 ]
  store %struct.daqp_private* %16, %struct.daqp_private** %4, align 8
  %17 = load %struct.daqp_private*, %struct.daqp_private** %4, align 8
  %18 = icmp ne %struct.daqp_private* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.daqp_private*, %struct.daqp_private** %4, align 8
  %21 = getelementptr inbounds %struct.daqp_private, %struct.daqp_private* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
