; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"OHCI controller state\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hcca frame #%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*)* @ohci_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_dump(%struct.ohci_hcd* %0) #0 {
  %2 = alloca %struct.ohci_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %2, align 8
  %3 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %4 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %6 = call i32 @ohci_dump_status(%struct.ohci_hcd* %5, i32* null, i32* null)
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %14 = call i32 @ohci_frame_no(%struct.ohci_hcd* %13)
  %15 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %18 = call i32 @ohci_dump_roothub(%struct.ohci_hcd* %17, i32 1, i32* null, i32* null)
  ret void
}

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @ohci_dump_status(%struct.ohci_hcd*, i32*, i32*) #1

declare dso_local i32 @ohci_frame_no(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_dump_roothub(%struct.ohci_hcd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
