; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.me_private_data* }
%struct.me_private_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @me_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @me_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.me_private_data*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.me_private_data*, %struct.me_private_data** %5, align 8
  store %struct.me_private_data* %6, %struct.me_private_data** %3, align 8
  %7 = load %struct.me_private_data*, %struct.me_private_data** %3, align 8
  %8 = icmp ne %struct.me_private_data* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call i32 @me_reset(%struct.comedi_device* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.me_private_data*, %struct.me_private_data** %3, align 8
  %19 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.me_private_data*, %struct.me_private_data** %3, align 8
  %24 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @iounmap(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = call i32 @comedi_pci_detach(%struct.comedi_device* %29)
  ret void
}

declare dso_local i32 @me_reset(%struct.comedi_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
