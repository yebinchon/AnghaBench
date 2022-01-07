; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.bfa_pcidev_s }
%struct.bfa_pcidev_s = type { i32, i32 }

@BFI_PORT_MODE_FC = common dso_local global i8* null, align 8
@BFI_ASIC_MODE_FC = common dso_local global i8* null, align 8
@BFI_ASIC_GEN_CB = common dso_local global i64 0, align 8
@BFA_TRUE = common dso_local global i8* null, align 8
@BFA_MODE_HBA = common dso_local global i8* null, align 8
@BFA_CM_HBA = common dso_local global i8* null, align 8
@BFI_ASIC_GEN_CT = common dso_local global i64 0, align 8
@BFI_PORT_MODE_ETH = common dso_local global i8* null, align 8
@BFI_ASIC_MODE_ETH = common dso_local global i8* null, align 8
@BFA_MODE_CNA = common dso_local global i8* null, align 8
@BFA_CM_CNA = common dso_local global i8* null, align 8
@BFI_ASIC_GEN_CT2 = common dso_local global i64 0, align 8
@BFI_PCIFN_CLASS_FC = common dso_local global i32 0, align 4
@BFA_PCI_CT2_SSID_FC = common dso_local global i32 0, align 4
@BFI_ASIC_MODE_FC16 = common dso_local global i8* null, align 8
@BFA_PCI_CT2_SSID_FCoE = common dso_local global i32 0, align 4
@BFA_MODE_NIC = common dso_local global i8* null, align 8
@BFA_CM_NIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_pci_init(%struct.bfa_ioc_s* %0, %struct.bfa_pcidev_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca %struct.bfa_pcidev_s*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %4, align 8
  store %struct.bfa_pcidev_s* %1, %struct.bfa_pcidev_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %10, i32 0, i32 9
  %12 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %5, align 8
  %13 = bitcast %struct.bfa_pcidev_s* %11 to i8*
  %14 = bitcast %struct.bfa_pcidev_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i8*, i8** @BFI_PORT_MODE_FC, align 8
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %18, i32 0, i32 7
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** @BFI_ASIC_MODE_FC, align 8
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_pcidev_s, %struct.bfa_pcidev_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %138 [
    i32 129, label %26
    i32 128, label %26
    i32 133, label %41
    i32 130, label %61
    i32 132, label %76
    i32 131, label %76
  ]

26:                                               ; preds = %3, %3
  %27 = load i64, i64* @BFI_ASIC_GEN_CB, align 8
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** @BFA_TRUE, align 8
  %31 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @BFA_MODE_HBA, align 8
  %34 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %36, i32 0, i32 4
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** @BFA_CM_HBA, align 8
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %140

41:                                               ; preds = %3
  %42 = load i64, i64* @BFI_ASIC_GEN_CT, align 8
  %43 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** @BFI_PORT_MODE_ETH, align 8
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %48, i32 0, i32 7
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** @BFI_ASIC_MODE_ETH, align 8
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @BFA_MODE_CNA, align 8
  %54 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %55 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %57 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %56, i32 0, i32 4
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** @BFA_CM_CNA, align 8
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %60 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %140

61:                                               ; preds = %3
  %62 = load i64, i64* @BFI_ASIC_GEN_CT, align 8
  %63 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %64 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i8*, i8** @BFA_TRUE, align 8
  %66 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %67 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @BFA_MODE_HBA, align 8
  %69 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %70 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %71, i32 0, i32 4
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** @BFA_CM_HBA, align 8
  %74 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %75 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %140

76:                                               ; preds = %3, %3
  %77 = load i64, i64* @BFI_ASIC_GEN_CT2, align 8
  %78 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %79 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @BFI_PCIFN_CLASS_FC, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_pcidev_s, %struct.bfa_pcidev_s* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BFA_PCI_CT2_SSID_FC, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i8*, i8** @BFI_ASIC_MODE_FC16, align 8
  %91 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %92 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @BFA_TRUE, align 8
  %94 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @BFA_MODE_HBA, align 8
  %97 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %98 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %100 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %99, i32 0, i32 4
  store i8* %96, i8** %100, align 8
  %101 = load i8*, i8** @BFA_CM_HBA, align 8
  %102 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %103 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %137

104:                                              ; preds = %83, %76
  %105 = load i8*, i8** @BFI_PORT_MODE_ETH, align 8
  %106 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %107 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %109 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %108, i32 0, i32 7
  store i8* %105, i8** %109, align 8
  %110 = load i8*, i8** @BFI_ASIC_MODE_ETH, align 8
  %111 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %112 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %5, align 8
  %114 = getelementptr inbounds %struct.bfa_pcidev_s, %struct.bfa_pcidev_s* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BFA_PCI_CT2_SSID_FCoE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %104
  %119 = load i8*, i8** @BFA_MODE_CNA, align 8
  %120 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %121 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %123 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %122, i32 0, i32 4
  store i8* %119, i8** %123, align 8
  %124 = load i8*, i8** @BFA_CM_CNA, align 8
  %125 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %126 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  br label %136

127:                                              ; preds = %104
  %128 = load i8*, i8** @BFA_MODE_NIC, align 8
  %129 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %130 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %132 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %131, i32 0, i32 4
  store i8* %128, i8** %132, align 8
  %133 = load i8*, i8** @BFA_CM_NIC, align 8
  %134 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %135 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  br label %137

137:                                              ; preds = %136, %89
  br label %140

138:                                              ; preds = %3
  %139 = call i32 @WARN_ON(i32 1)
  br label %140

140:                                              ; preds = %138, %137, %61, %41, %26
  %141 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %142 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BFI_ASIC_GEN_CB, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %148 = call i32 @bfa_ioc_set_cb_hwif(%struct.bfa_ioc_s* %147)
  br label %171

149:                                              ; preds = %140
  %150 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %151 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BFI_ASIC_GEN_CT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %157 = call i32 @bfa_ioc_set_ct_hwif(%struct.bfa_ioc_s* %156)
  br label %170

158:                                              ; preds = %149
  %159 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %160 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @BFI_ASIC_GEN_CT2, align 8
  %163 = icmp ne i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @WARN_ON(i32 %164)
  %166 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %167 = call i32 @bfa_ioc_set_ct2_hwif(%struct.bfa_ioc_s* %166)
  %168 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %169 = call i32 @bfa_ioc_ct2_poweron(%struct.bfa_ioc_s* %168)
  br label %170

170:                                              ; preds = %158, %155
  br label %171

171:                                              ; preds = %170, %146
  %172 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %173 = call i32 @bfa_ioc_map_port(%struct.bfa_ioc_s* %172)
  %174 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %175 = call i32 @bfa_ioc_reg_init(%struct.bfa_ioc_s* %174)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @bfa_ioc_set_cb_hwif(%struct.bfa_ioc_s*) #2

declare dso_local i32 @bfa_ioc_set_ct_hwif(%struct.bfa_ioc_s*) #2

declare dso_local i32 @bfa_ioc_set_ct2_hwif(%struct.bfa_ioc_s*) #2

declare dso_local i32 @bfa_ioc_ct2_poweron(%struct.bfa_ioc_s*) #2

declare dso_local i32 @bfa_ioc_map_port(%struct.bfa_ioc_s*) #2

declare dso_local i32 @bfa_ioc_reg_init(%struct.bfa_ioc_s*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
