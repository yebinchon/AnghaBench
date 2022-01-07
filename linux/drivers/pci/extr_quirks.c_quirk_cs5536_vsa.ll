; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_cs5536_vsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_cs5536_vsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@quirk_cs5536_vsa.name = internal global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [18 x i8] c"CS5536 ISA bridge\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s bug detected (incorrect header); workaround applied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_cs5536_vsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_cs5536_vsa(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = call i32 @pci_resource_len(%struct.pci_dev* %3, i32 0)
  %5 = icmp ne i32 %4, 8
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i8*, i8** @quirk_cs5536_vsa.name, align 8
  %9 = call i32 @quirk_io(%struct.pci_dev* %7, i32 0, i32 8, i8* %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i8*, i8** @quirk_cs5536_vsa.name, align 8
  %12 = call i32 @quirk_io(%struct.pci_dev* %10, i32 1, i32 256, i8* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i8*, i8** @quirk_cs5536_vsa.name, align 8
  %15 = call i32 @quirk_io(%struct.pci_dev* %13, i32 2, i32 64, i8* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i8*, i8** @quirk_cs5536_vsa.name, align 8
  %18 = call i32 @pci_info(%struct.pci_dev* %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @quirk_io(%struct.pci_dev*, i32, i32, i8*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
