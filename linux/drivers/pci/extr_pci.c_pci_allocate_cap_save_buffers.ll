; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_allocate_cap_save_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_allocate_cap_save_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_SAVE_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unable to preallocate PCI Express save buffer\0A\00", align 1
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to preallocate PCI-X save buffer\0A\00", align 1
@PCI_EXT_CAP_ID_LTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unable to allocate suspend buffer for LTR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_allocate_cap_save_buffers(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %6 = load i32, i32* @PCI_EXP_SAVE_REGS, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @pci_add_cap_save_buffer(%struct.pci_dev* %4, i32 %5, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_err(%struct.pci_dev* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %19 = call i32 @pci_add_cap_save_buffer(%struct.pci_dev* %17, i32 %18, i32 4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_err(%struct.pci_dev* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %28 = call i32 @pci_add_ext_cap_save_buffer(%struct.pci_dev* %26, i32 %27, i32 8)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @pci_err(%struct.pci_dev* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_allocate_vc_save_buffers(%struct.pci_dev* %35)
  ret void
}

declare dso_local i32 @pci_add_cap_save_buffer(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_add_ext_cap_save_buffer(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_allocate_vc_save_buffers(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
