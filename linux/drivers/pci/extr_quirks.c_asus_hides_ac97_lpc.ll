; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_ac97_lpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_ac97_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64 }

@PCI_VENDOR_ID_ASUSTEK = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_VIA_8237 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Onboard AC97/MC97 devices continue to play 'hide and seek'! 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Enabled onboard AC97/MC97 devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @asus_hides_ac97_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hides_ac97_lpc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_VENDOR_ID_ASUSTEK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_DEVICE_ID_VIA_8237, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %49

25:                                               ; preds = %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_read_config_byte(%struct.pci_dev* %26, i32 80, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 192
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -193
  %35 = call i32 @pci_write_config_byte(%struct.pci_dev* %32, i32 80, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %36, i32 80, i32* %3)
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 192
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %42, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %48

45:                                               ; preds = %31
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %24, %48, %25
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
