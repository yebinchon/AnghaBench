; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_diag_cmd_data_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_diag_cmd_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabufext = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@BUF_SZ_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64I = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabufext* (%struct.lpfc_hba*, %struct.ulp_bde64*, i32, i32)* @diag_cmd_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabufext* @diag_cmd_data_alloc(%struct.lpfc_hba* %0, %struct.ulp_bde64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_dmabufext*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.ulp_bde64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_dmabufext*, align 8
  %11 = alloca %struct.lpfc_dmabufext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.ulp_bde64* %1, %struct.ulp_bde64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.lpfc_dmabufext* null, %struct.lpfc_dmabufext** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %15, align 8
  br label %19

19:                                               ; preds = %95, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %136

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BUF_SZ_4K, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @BUF_SZ_4K, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.lpfc_dmabufext* @kmalloc(i32 32, i32 %31)
  store %struct.lpfc_dmabufext* %32, %struct.lpfc_dmabufext** %11, align 8
  %33 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %34 = icmp ne %struct.lpfc_dmabufext* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %145

36:                                               ; preds = %30
  %37 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %38 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %42 = icmp ne %struct.lpfc_dmabufext* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %45 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %48 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %46, i32* %49)
  br label %53

51:                                               ; preds = %36
  %52 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  store %struct.lpfc_dmabufext* %52, %struct.lpfc_dmabufext** %10, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %58 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i64 @dma_alloc_coherent(i32* %55, i32 %56, i32* %59, i32 %60)
  %62 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %66 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  br label %145

71:                                               ; preds = %53
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %74 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %79 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %95

82:                                               ; preds = %71
  %83 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %84 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @memset(i32* %87, i32 0, i32 %88)
  %90 = load i64, i64* @BUFF_TYPE_BDE_64I, align 8
  %91 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %92 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 %90, i64* %94, align 8
  br label %95

95:                                               ; preds = %82, %77
  %96 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %97 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @putPaddrLow(i32 %99)
  %101 = call i8* @le32_to_cpu(i8* %100)
  %102 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %103 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %105 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @putPaddrHigh(i32 %107)
  %109 = call i8* @le32_to_cpu(i8* %108)
  %110 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %111 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %115 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i64 %113, i64* %117, align 8
  %118 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %119 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @le32_to_cpu(i8* %121)
  %123 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %124 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %127 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %126, i32 1
  store %struct.ulp_bde64* %127, %struct.ulp_bde64** %7, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %19

136:                                              ; preds = %19
  %137 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %138 = icmp ne %struct.lpfc_dmabufext* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %142 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  store %struct.lpfc_dmabufext* %143, %struct.lpfc_dmabufext** %5, align 8
  br label %149

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %70, %35
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %147 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %148 = call i32 @diag_cmd_data_free(%struct.lpfc_hba* %146, %struct.lpfc_dmabufext* %147)
  store %struct.lpfc_dmabufext* null, %struct.lpfc_dmabufext** %5, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %5, align 8
  ret %struct.lpfc_dmabufext* %150
}

declare dso_local %struct.lpfc_dmabufext* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i32 @diag_cmd_data_free(%struct.lpfc_hba*, %struct.lpfc_dmabufext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
