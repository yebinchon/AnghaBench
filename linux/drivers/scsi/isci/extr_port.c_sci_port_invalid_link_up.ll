; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_invalid_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_invalid_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { %struct.isci_host* }
%struct.isci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.isci_phy = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid link up!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, %struct.isci_phy*)* @sci_port_invalid_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_invalid_link_up(%struct.isci_port* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca %struct.isci_host*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %4, align 8
  %6 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %7 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %6, i32 0, i32 0
  %8 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  store %struct.isci_host* %8, %struct.isci_host** %5, align 8
  %9 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %10 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %13 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %11, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %20 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %24 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
