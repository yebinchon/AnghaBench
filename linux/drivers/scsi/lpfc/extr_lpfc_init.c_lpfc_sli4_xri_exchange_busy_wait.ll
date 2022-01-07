; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_xri_exchange_busy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_xri_exchange_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.lpfc_sli4_hdw_queue* }
%struct.lpfc_sli4_hdw_queue = type { i32 }

@LPFC_XRI_EXCH_BUSY_WAIT_T1 = common dso_local global i32 0, align 4
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@LPFC_XRI_EXCH_BUSY_WAIT_TMO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"6424 NVMET XRI exchange busy wait time: %d seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"6100 IO XRI exchange busy wait time: %d seconds.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"2878 ELS XRI exchange busy wait time: %d seconds.\0A\00", align 1
@LPFC_XRI_EXCH_BUSY_WAIT_T2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_xri_exchange_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 4
  %15 = mul nsw i32 %14, 5
  %16 = call i32 @msleep(i32 %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = call i32 @lpfc_nvme_wait_for_io_drain(%struct.lpfc_hba* %24)
  br label %26

26:                                               ; preds = %23, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %37, i64 %39
  store %struct.lpfc_sli4_hdw_queue* %40, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %41 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @list_empty(i32* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %171, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %73, %70
  %81 = phi i1 [ true, %73 ], [ true, %70 ], [ %79, %76 ]
  br i1 %81, label %82, label %176

82:                                               ; preds = %80
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_TMO, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* @LOG_INIT, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %93, 1000
  %95 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_INIT, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sdiv i32 %103, 1000
  %105 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %99, %96
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = load i32, i32* @KERN_ERR, align 4
  %112 = load i32, i32* @LOG_INIT, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sdiv i32 %113, 1000
  %115 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T2, align 4
  %118 = call i32 @msleep(i32 %117)
  %119 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T2, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %128

122:                                              ; preds = %82
  %123 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 4
  %124 = call i32 @msleep(i32 %123)
  %125 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %122, %116
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %152, %128
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %139, i64 %141
  store %struct.lpfc_sli4_hdw_queue* %142, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %143 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %144 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %143, i32 0, i32 0
  %145 = call i32 @list_empty(i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %135
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %135
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %129

155:                                              ; preds = %129
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = call i32 @list_empty(i32* %169)
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %159
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = call i32 @list_empty(i32* %174)
  store i32 %175, i32* %9, align 4
  br label %70

176:                                              ; preds = %80
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_nvme_wait_for_io_drain(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
