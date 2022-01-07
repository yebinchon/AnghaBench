; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_piix4_mem_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_piix4_mem_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s MMIO at %04x-%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i8*, i32, i32)* @piix4_mem_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix4_mem_quirk(%struct.pci_dev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 %15, i32* %9)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %53

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, -65536
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 63
  %28 = shl i32 %27, 16
  store i32 %28, i32* %10, align 4
  store i32 8388608, i32* %11, align 4
  br label %29

29:                                               ; preds = %38, %23
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %11, align 4
  br label %29

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = sub i32 0, %41
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %48, %49
  %51 = sub i32 %50, 1
  %52 = call i32 @pci_info(%struct.pci_dev* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
