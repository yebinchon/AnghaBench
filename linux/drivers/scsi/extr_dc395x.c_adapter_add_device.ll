; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32*, %struct.DeviceCtlBlk***, i32, %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i64, i32, i32, %struct.AdapterCtlBlk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*)* @adapter_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_add_device(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %4, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %6 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %7 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %6, i32 0, i32 3
  store %struct.AdapterCtlBlk* %5, %struct.AdapterCtlBlk** %7, align 8
  %8 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %9 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %8, i32 0, i32 2
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %15 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %14, i32 0, i32 3
  store %struct.DeviceCtlBlk* %13, %struct.DeviceCtlBlk** %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %18 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %17, i32 0, i32 2
  %19 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %20 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %19, i32 0, i32 2
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %23 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %27 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %30 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %25
  store i32 %34, i32* %32, align 4
  %35 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %37 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %36, i32 0, i32 1
  %38 = load %struct.DeviceCtlBlk***, %struct.DeviceCtlBlk**** %37, align 8
  %39 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %40 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.DeviceCtlBlk**, %struct.DeviceCtlBlk*** %38, i64 %41
  %43 = load %struct.DeviceCtlBlk**, %struct.DeviceCtlBlk*** %42, align 8
  %44 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %45 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %43, i64 %47
  store %struct.DeviceCtlBlk* %35, %struct.DeviceCtlBlk** %48, align 8
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
