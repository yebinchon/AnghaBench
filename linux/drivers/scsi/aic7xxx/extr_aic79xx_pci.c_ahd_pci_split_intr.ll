; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@PCIXR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: PCI Split Interrupt - PCI-X status = 0x%x\0A\00", align 1
@DCHSPLTSTAT0 = common dso_local global i32 0, align 4
@DCHSPLTSTAT1 = common dso_local global i32 0, align 4
@SGSPLTSTAT0 = common dso_local global i32 0, align 4
@SGSPLTSTAT1 = common dso_local global i32 0, align 4
@split_status_strings = common dso_local global i8** null, align 8
@split_status_source = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSPLTINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_pci_split_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_pci_split_intr(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCIXR_STATUS, align 4
  %17 = call i8* @ahd_pci_read_config(i32 %15, i32 %16, i32 2)
  store i8* %17, i8** %11, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = call i32 @ahd_name(%struct.ahd_softc* %18)
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = call i32 @ahd_save_modes(%struct.ahd_softc* %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %88, %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ahd_set_modes(%struct.ahd_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = load i32, i32* @DCHSPLTSTAT0, align 4
  %34 = call i32 @ahd_inb(%struct.ahd_softc* %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = load i32, i32* @DCHSPLTSTAT1, align 4
  %40 = call i32 @ahd_inb(%struct.ahd_softc* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %45 = load i32, i32* @DCHSPLTSTAT0, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ahd_outb(%struct.ahd_softc* %44, i32 %45, i32 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = load i32, i32* @DCHSPLTSTAT1, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ahd_outb(%struct.ahd_softc* %51, i32 %52, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %27
  br label %88

61:                                               ; preds = %27
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = load i32, i32* @SGSPLTSTAT0, align 4
  %64 = call i32 @ahd_inb(%struct.ahd_softc* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = load i32, i32* @SGSPLTSTAT1, align 4
  %70 = call i32 @ahd_inb(%struct.ahd_softc* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %75 = load i32, i32* @SGSPLTSTAT0, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ahd_outb(%struct.ahd_softc* %74, i32 %75, i32 %79)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = load i32, i32* @SGSPLTSTAT1, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ahd_outb(%struct.ahd_softc* %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %61, %60
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %24

91:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %149, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %152

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %145, %95
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %148

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load i8**, i8*** @split_status_strings, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = call i32 @ahd_name(%struct.ahd_softc* %114)
  %116 = load i8**, i8*** @split_status_source, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @printk(i8* %113, i32 %115, i8* %120)
  br label %122

122:                                              ; preds = %108, %99
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %145

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load i8**, i8*** @split_status_strings, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %142 = call i32 @ahd_name(%struct.ahd_softc* %141)
  %143 = call i32 @printk(i8* %140, i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %135, %126
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %96

148:                                              ; preds = %96
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %92

152:                                              ; preds = %92
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PCIXR_STATUS, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @ahd_pci_write_config(i32 %155, i32 %156, i8* %157, i32 2)
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = load i32, i32* @CLRINT, align 4
  %161 = load i32, i32* @CLRSPLTINT, align 4
  %162 = call i32 @ahd_outb(%struct.ahd_softc* %159, i32 %160, i32 %161)
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @ahd_restore_modes(%struct.ahd_softc* %163, i32 %164)
  ret void
}

declare dso_local i8* @ahd_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i32, i8*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
