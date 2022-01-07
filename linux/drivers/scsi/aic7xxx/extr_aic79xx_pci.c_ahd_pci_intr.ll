; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@INTSTAT = common dso_local global i32 0, align 4
@SPLTINT = common dso_local global i32 0, align 4
@PCIINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: PCI error Interrupt\0A\00", align 1
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@DF0PCISTAT = common dso_local global i32 0, align 4
@pci_status_strings = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Signaled Target Abort\0A\00", align 1
@pci_status_source = common dso_local global i32* null, align 8
@PCIR_STATUS = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRPCIINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_pci_intr(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %12 = load i32, i32* @INTSTAT, align 4
  %13 = call i32 @ahd_inb(%struct.ahd_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SPLTINT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ahd_pci_split_intr(%struct.ahd_softc* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCIINT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %141

28:                                               ; preds = %22
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %30 = call i32 @ahd_name(%struct.ahd_softc* %29)
  %31 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %33 = call i32 @ahd_save_modes(%struct.ahd_softc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = load i32, i32* @AHD_MODE_CFG, align 4
  %38 = load i32, i32* @AHD_MODE_CFG, align 4
  %39 = call i32 @ahd_set_modes(%struct.ahd_softc* %36, i32 %37, i32 %38)
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* @DF0PCISTAT, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %62, %28
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %62

48:                                               ; preds = %44
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ahd_inb(%struct.ahd_softc* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ahd_outb(%struct.ahd_softc* %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %48, %47
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %41

67:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %115, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %118

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 5
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %115

75:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %114

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %79
  %89 = load i8**, i8*** @pci_status_strings, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %10, align 8
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 7
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %100

100:                                              ; preds = %99, %96, %88
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %103 = call i32 @ahd_name(%struct.ahd_softc* %102)
  %104 = load i32*, i32** @pci_status_source, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, ...) @printk(i8* %101, i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %100, %79
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %76

114:                                              ; preds = %76
  br label %115

115:                                              ; preds = %114, %74
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %68

118:                                              ; preds = %68
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %120 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @PCIR_STATUS, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i32 @ahd_pci_read_config(i32 %121, i64 %123, i32 1)
  store i32 %124, i32* %5, align 4
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @PCIR_STATUS, align 8
  %129 = add nsw i64 %128, 1
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @ahd_pci_write_config(i32 %127, i64 %129, i32 %130, i32 1)
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @ahd_restore_modes(%struct.ahd_softc* %132, i32 %133)
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %136 = load i32, i32* @CLRINT, align 4
  %137 = load i32, i32* @CLRPCIINT, align 4
  %138 = call i32 @ahd_outb(%struct.ahd_softc* %135, i32 %136, i32 %137)
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %140 = call i32 @ahd_unpause(%struct.ahd_softc* %139)
  br label %141

141:                                              ; preds = %118, %27
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_pci_split_intr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
