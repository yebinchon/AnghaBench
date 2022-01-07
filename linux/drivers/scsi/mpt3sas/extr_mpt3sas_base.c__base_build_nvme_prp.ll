; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_nvme_prp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_nvme_prp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mpt3sas_nvme_cmd = type { i32, i32 }

@NVME_PRP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32, %struct.TYPE_3__*, i32, i64, i32, i64)* @_base_build_nvme_prp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_build_nvme_prp(%struct.MPT3SAS_ADAPTER* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.mpt3sas_nvme_cmd*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %29 = load i32, i32* @NVME_PRP_SIZE, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.mpt3sas_nvme_cmd*
  store %struct.mpt3sas_nvme_cmd* %34, %struct.mpt3sas_nvme_cmd** %28, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %7
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %171

41:                                               ; preds = %37, %7
  %42 = load %struct.mpt3sas_nvme_cmd*, %struct.mpt3sas_nvme_cmd** %28, align 8
  %43 = getelementptr inbounds %struct.mpt3sas_nvme_cmd, %struct.mpt3sas_nvme_cmd* %42, i32 0, i32 1
  store i32* %43, i32** %17, align 8
  %44 = load %struct.mpt3sas_nvme_cmd*, %struct.mpt3sas_nvme_cmd** %28, align 8
  %45 = getelementptr inbounds %struct.mpt3sas_nvme_cmd, %struct.mpt3sas_nvme_cmd* %44, i32 0, i32 0
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %17, align 8
  store i32* %46, i32** %16, align 8
  %47 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @mpt3sas_base_get_pcie_sgl(%struct.MPT3SAS_ADAPTER* %47, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %19, align 8
  %51 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mpt3sas_base_get_pcie_sgl_dma(%struct.MPT3SAS_ADAPTER* %51, i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %8, align 8
  %55 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %26, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = ptrtoint i32* %62 to i64
  %64 = load i64, i64* %26, align 8
  %65 = and i64 %63, %64
  store i64 %65, i64* %25, align 8
  %66 = load i64, i64* %25, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %41
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %19, align 8
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %21, align 4
  br label %76

76:                                               ; preds = %68, %41
  %77 = load i32, i32* %21, align 4
  store i32 %77, i32* %20, align 4
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %22, align 4
  %82 = load i64, i64* %14, align 8
  store i64 %82, i64* %27, align 8
  br label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %22, align 4
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %27, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %170, %86
  %88 = load i64, i64* %27, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %171

90:                                               ; preds = %87
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %26, align 8
  %96 = and i64 %94, %95
  store i64 %96, i64* %25, align 8
  %97 = load i64, i64* %25, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @cpu_to_le64(i32 %102)
  %104 = load i32*, i32** %16, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %16, align 8
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %26, align 8
  %111 = and i64 %109, %110
  store i64 %111, i64* %23, align 8
  %112 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %8, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %23, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %24, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = icmp eq i32* %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load i32, i32* %22, align 4
  %123 = call i32 @cpu_to_le64(i32 %122)
  %124 = load i32*, i32** %17, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %18, align 8
  store i32* %125, i32** %16, align 8
  br label %156

126:                                              ; preds = %107
  %127 = load i32*, i32** %16, align 8
  %128 = load i32*, i32** %18, align 8
  %129 = icmp eq i32* %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i64, i64* %27, align 8
  %132 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %8, align 8
  %133 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ugt i64 %131, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @cpu_to_le64(i32 %138)
  %140 = load i32*, i32** %18, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %19, align 8
  store i32* %141, i32** %16, align 8
  br label %146

142:                                              ; preds = %130
  %143 = load i32, i32* %22, align 4
  %144 = call i32 @cpu_to_le64(i32 %143)
  %145 = load i32*, i32** %18, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %137
  br label %155

147:                                              ; preds = %126
  %148 = load i32, i32* %22, align 4
  %149 = call i32 @cpu_to_le64(i32 %148)
  %150 = load i32*, i32** %16, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %16, align 8
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %147, %146
  br label %156

156:                                              ; preds = %155, %121
  %157 = load i64, i64* %24, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %22, align 4
  %162 = load i64, i64* %24, align 8
  %163 = load i64, i64* %27, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i64 0, i64* %27, align 8
  br label %170

166:                                              ; preds = %156
  %167 = load i64, i64* %24, align 8
  %168 = load i64, i64* %27, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %27, align 8
  br label %170

170:                                              ; preds = %166, %165
  br label %87

171:                                              ; preds = %40, %87
  ret void
}

declare dso_local i64 @mpt3sas_base_get_pcie_sgl(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @mpt3sas_base_get_pcie_sgl_dma(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
