; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.db2k_private* }
%struct.db2k_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @db2k_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db2k_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.db2k_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.db2k_private*, %struct.db2k_private** %5, align 8
  store %struct.db2k_private* %6, %struct.db2k_private** %3, align 8
  %7 = load %struct.db2k_private*, %struct.db2k_private** %3, align 8
  %8 = icmp ne %struct.db2k_private* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.db2k_private*, %struct.db2k_private** %3, align 8
  %11 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.db2k_private*, %struct.db2k_private** %3, align 8
  %16 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @iounmap(i64 %17)
  br label %19

19:                                               ; preds = %14, %9, %1
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = call i32 @comedi_pci_detach(%struct.comedi_device* %20)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
