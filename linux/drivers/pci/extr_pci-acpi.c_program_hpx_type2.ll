; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hpx_type2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"PCIe settings rev %d not supported\0A\00", align 1
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_RCB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_SEVER = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@PCI_ERR_CAP_ECRC_GENC = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_GENE = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_CHKC = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_CHKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hpx_type2*)* @program_hpx_type2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hpx_type2(%struct.pci_dev* %0, %struct.hpx_type2* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpx_type2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hpx_type2* %1, %struct.hpx_type2** %4, align 8
  %7 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %8 = icmp ne %struct.hpx_type2* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %203

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pci_is_pcie(%struct.pci_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %203

15:                                               ; preds = %10
  %16 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %17 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %23 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_warn(%struct.pci_dev* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %203

26:                                               ; preds = %15
  %27 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %28 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %31 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %35 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %39 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %44 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %45 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %49 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %42, i32 %43, i32 %47, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = call i64 @pcie_cap_has_lnkctl(%struct.pci_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %26
  %56 = load i32, i32* @PCI_EXP_LNKCTL_RCB, align 4
  %57 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %58 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @PCI_EXP_LNKCTL_RCB, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %64 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = call i64 @pcie_root_rcb_set(%struct.pci_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load i32, i32* @PCI_EXP_LNKCTL_RCB, align 4
  %72 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %73 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %55
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %79 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %80 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %84 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %77, i32 %78, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %76, %26
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %90 = call i32 @pci_find_ext_capability(%struct.pci_dev* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %203

94:                                               ; preds = %87
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @pci_read_config_dword(%struct.pci_dev* %95, i64 %99, i32* %6)
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %103 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %101, %104
  %106 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %107 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @pci_write_config_dword(%struct.pci_dev* %110, i64 %114, i32 %115)
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @pci_read_config_dword(%struct.pci_dev* %117, i64 %121, i32* %6)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %125 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %129 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  store i32 %131, i32* %6, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @pci_write_config_dword(%struct.pci_dev* %132, i64 %136, i32 %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @pci_read_config_dword(%struct.pci_dev* %139, i64 %143, i32* %6)
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %147 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %145, %148
  %150 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %151 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %149, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @pci_write_config_dword(%struct.pci_dev* %154, i64 %158, i32 %159)
  %161 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @PCI_ERR_CAP, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @pci_read_config_dword(%struct.pci_dev* %161, i64 %165, i32* %6)
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %169 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %167, %170
  %172 = load %struct.hpx_type2*, %struct.hpx_type2** %4, align 8
  %173 = getelementptr inbounds %struct.hpx_type2, %struct.hpx_type2* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %171, %174
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @PCI_ERR_CAP_ECRC_GENC, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %94
  %181 = load i32, i32* @PCI_ERR_CAP_ECRC_GENE, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %6, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %180, %94
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @PCI_ERR_CAP_ECRC_CHKC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @PCI_ERR_CAP_ECRC_CHKE, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %190, %185
  %196 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @PCI_ERR_CAP, align 8
  %200 = add nsw i64 %198, %199
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @pci_write_config_dword(%struct.pci_dev* %196, i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %93, %20, %14, %9
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pcie_cap_has_lnkctl(%struct.pci_dev*) #1

declare dso_local i64 @pcie_root_rcb_set(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
