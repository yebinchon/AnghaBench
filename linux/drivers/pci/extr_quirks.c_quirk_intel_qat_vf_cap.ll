; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_intel_qat_vf_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_intel_qat_vf_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.pci_cap_saved_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP_PAYLOAD = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_SAVE_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_intel_qat_vf_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_intel_qat_vf_cap(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_cap_saved_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %18 = call i32 @pci_find_capability(%struct.pci_dev* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %175

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %24 = call i32 @pci_find_capability(%struct.pci_dev* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %175

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i32 %31, i64* %5)
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %175

36:                                               ; preds = %28
  store i32 80, i32* %3, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pci_read_config_word(%struct.pci_dev* %37, i32 %38, i32* %6)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %42 = or i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %175

44:                                               ; preds = %36
  store i32 28, i32* %10, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PCI_EXP_FLAGS, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @pci_read_config_word(%struct.pci_dev* %48, i32 %51, i32* %6)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @pci_read_config_word(%struct.pci_dev* %56, i32 %59, i32* %6)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCI_EXP_DEVCAP_PAYLOAD, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %71 = call i64 @pci_read_config_dword(%struct.pci_dev* %69, i32 %70, i32* %9)
  %72 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %44
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %44
  %78 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %83 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %84 = call i64 @pci_find_saved_cap(%struct.pci_dev* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %175

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 32, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.pci_cap_saved_state* @kzalloc(i32 %91, i32 %92)
  store %struct.pci_cap_saved_state* %93, %struct.pci_cap_saved_state** %8, align 8
  %94 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %95 = icmp ne %struct.pci_cap_saved_state* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  br label %175

97:                                               ; preds = %87
  %98 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %99 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %100 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %103 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %107 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %110 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32* %113, i32** %7, align 8
  %114 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %115 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = call i32 @pcie_capability_read_word(%struct.pci_dev* %114, i32 %115, i32* %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %123 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = call i32 @pcie_capability_read_word(%struct.pci_dev* %122, i32 %123, i32* %128)
  %130 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %131 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = call i32 @pcie_capability_read_word(%struct.pci_dev* %130, i32 %131, i32* %136)
  %138 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %139 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = call i32 @pcie_capability_read_word(%struct.pci_dev* %138, i32 %139, i32* %144)
  %146 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %147 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = call i32 @pcie_capability_read_word(%struct.pci_dev* %146, i32 %147, i32* %152)
  %154 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %155 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = call i32 @pcie_capability_read_word(%struct.pci_dev* %154, i32 %155, i32* %160)
  %162 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %163 = load i32, i32* @PCI_EXP_SLTCTL2, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %4, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = call i32 @pcie_capability_read_word(%struct.pci_dev* %162, i32 %163, i32* %168)
  %170 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %8, align 8
  %171 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %170, i32 0, i32 0
  %172 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 3
  %174 = call i32 @hlist_add_head(i32* %171, i32* %173)
  br label %175

175:                                              ; preds = %20, %27, %35, %86, %96, %97, %36
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_find_saved_cap(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_cap_saved_state* @kzalloc(i32, i32) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
