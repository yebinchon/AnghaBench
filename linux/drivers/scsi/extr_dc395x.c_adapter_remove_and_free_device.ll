; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_remove_and_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_remove_and_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32, i32, i32 }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"adapter_remove_and_free_device: <%02i-%i> Won't remove because of %i active requests.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*)* @adapter_remove_and_free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_remove_and_free_device(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %4, align 8
  %5 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %6 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %5, i32 0, i32 0
  %7 = call i32 @list_size(i32* %6)
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @DBG_1, align 4
  %11 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %12 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %15 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %18 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %17, i32 0, i32 0
  %19 = call i32 @list_size(i32* %18)
  %20 = call i32 @dprintkdbg(i32 %10, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %23 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %24 = call i32 @adapter_remove_device(%struct.AdapterCtlBlk* %22, %struct.DeviceCtlBlk* %23)
  %25 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %26 = call i32 @kfree(%struct.DeviceCtlBlk* %25)
  br label %27

27:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @list_size(i32*) #1

declare dso_local i32 @dprintkdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @adapter_remove_device(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

declare dso_local i32 @kfree(%struct.DeviceCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
