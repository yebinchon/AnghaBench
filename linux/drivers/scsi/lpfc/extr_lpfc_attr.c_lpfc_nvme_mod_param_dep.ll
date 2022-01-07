; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_nvme_mod_param_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_nvme_mod_param_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@LPFC_ENABLE_FCP = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"6013 %s x%x fb_size x%x, fb_max x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"NVME Target PRLI ACC enable_fb \00", align 1
@LPFC_NVMET_FB_SZ_MAX = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"6018 Adjust lpfc_nvmet_mrq to %d\0A\00", align 1
@LPFC_NVMET_MRQ_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nvme_mod_param_dep(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %5, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %18
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %139

55:                                               ; preds = %48
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %139

60:                                               ; preds = %55
  %61 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load i32, i32* @LOG_NVME_DISC, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPFC_NVMET_FB_SZ_MAX, align 8
  %77 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 ptrtoint ([32 x i8]* @.str.1 to i64), i64 %72, i64 %75, i64 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %60
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  br label %96

85:                                               ; preds = %60
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LPFC_NVMET_FB_SZ_MAX, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @LPFC_NVMET_FB_SZ_MAX, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %82
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %96
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 5
  store i64 %118, i64* %120, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %122 = load i32, i32* @KERN_ERR, align 4
  %123 = load i32, i32* @LOG_NVME_DISC, align 4
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %115, %107
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @LPFC_NVMET_MRQ_MAX, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, i64* @LPFC_NVMET_MRQ_MAX, align 8
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %128
  br label %146

139:                                              ; preds = %55, %48
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 6
  store i64 0, i64* %141, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %139, %138
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
