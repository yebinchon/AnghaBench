; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.lpfc_eq_intr_info*, %struct.TYPE_4__*, i32 }
%struct.lpfc_eq_intr_info = type { i32 }
%struct.TYPE_4__ = type { %struct.lpfc_queue* }
%struct.lpfc_queue = type { i64, i32, i32 }
%struct.lpfc_hba_eq_hdl = type { i32, %struct.lpfc_hba* }

@IRQ_NONE = common dso_local global i32 0, align 4
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_EQD_ISR_TRIGGER = common dso_local global i64 0, align 8
@LPFC_MAX_AUTO_EQ_DELAY = common dso_local global i64 0, align 8
@LPFC_SLI_USE_EQDR = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"0358 MSI-X interrupt with no EQE\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_hba_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_hba_eq_hdl*, align 8
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_eq_intr_info*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.lpfc_hba_eq_hdl*
  store %struct.lpfc_hba_eq_hdl* %15, %struct.lpfc_hba_eq_hdl** %7, align 8
  %16 = load %struct.lpfc_hba_eq_hdl*, %struct.lpfc_hba_eq_hdl** %7, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba_eq_hdl, %struct.lpfc_hba_eq_hdl* %16, i32 0, i32 1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %6, align 8
  %19 = load %struct.lpfc_hba_eq_hdl*, %struct.lpfc_hba_eq_hdl** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba_eq_hdl, %struct.lpfc_hba_eq_hdl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %23 = icmp ne %struct.lpfc_hba* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %158

30:                                               ; preds = %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %158

42:                                               ; preds = %30
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.lpfc_queue*, %struct.lpfc_queue** %50, align 8
  store %struct.lpfc_queue* %51, %struct.lpfc_queue** %8, align 8
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %53 = icmp ne %struct.lpfc_queue* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %158

60:                                               ; preds = %42
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = call i32 @lpfc_intr_state_check(%struct.lpfc_hba* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %60
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 6
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %77 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %78 = call i32 @lpfc_sli4_eq_flush(%struct.lpfc_hba* %76, %struct.lpfc_queue* %77)
  br label %79

79:                                               ; preds = %75, %65
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 6
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* @IRQ_NONE, align 4
  store i32 %84, i32* %3, align 4
  br label %158

85:                                               ; preds = %60
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.lpfc_eq_intr_info*, %struct.lpfc_eq_intr_info** %88, align 8
  store %struct.lpfc_eq_intr_info* %89, %struct.lpfc_eq_intr_info** %12, align 8
  %90 = load %struct.lpfc_eq_intr_info*, %struct.lpfc_eq_intr_info** %12, align 8
  %91 = getelementptr inbounds %struct.lpfc_eq_intr_info, %struct.lpfc_eq_intr_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @this_cpu_inc_return(i32 %92)
  store i64 %93, i64* %13, align 8
  %94 = call i32 (...) @raw_smp_processor_id()
  %95 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @LPFC_EQD_ISR_TRIGGER, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %85
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %129

105:                                              ; preds = %100
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %105
  %111 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %112 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LPFC_MAX_AUTO_EQ_DELAY, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @LPFC_SLI_USE_EQDR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %126 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %127 = load i64, i64* @LPFC_MAX_AUTO_EQ_DELAY, align 8
  %128 = call i32 @lpfc_sli4_mod_hba_eq_delay(%struct.lpfc_hba* %125, %struct.lpfc_queue* %126, i64 %127)
  br label %129

129:                                              ; preds = %124, %116, %110, %105, %100, %85
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %131 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %132 = call i32 @lpfc_sli4_process_eq(%struct.lpfc_hba* %130, %struct.lpfc_queue* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %129
  %139 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %140 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MSIX, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %150 = load i32, i32* @KERN_WARNING, align 4
  %151 = load i32, i32* @LOG_SLI, align 4
  %152 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %155

153:                                              ; preds = %138
  %154 = load i32, i32* @IRQ_NONE, align 4
  store i32 %154, i32* %3, align 4
  br label %158

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %129
  %157 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %153, %79, %58, %40, %28
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_eq_flush(%struct.lpfc_hba*, %struct.lpfc_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @this_cpu_inc_return(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @lpfc_sli4_mod_hba_eq_delay(%struct.lpfc_hba*, %struct.lpfc_queue*, i64) #1

declare dso_local i32 @lpfc_sli4_process_eq(%struct.lpfc_hba*, %struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
