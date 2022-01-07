; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_handle_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_handle_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, %struct.lpfc_queue*, %struct.lpfc_queue**, %struct.lpfc_queue** }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_queue = type { i64, i64, i32, i32, i64 }
%struct.lpfc_eqe = type { i32 }

@lpfc_eqe_major_code = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"0366 Not a valid completion event: majorcode=x%x, minorcode=x%x\0A\00", align 1
@lpfc_eqe_minor_code = common dso_local global i32 0, align 4
@lpfc_eqe_resource_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"0368 Miss-matched fast-path completion queue identifier: eqcqid=%d, fcpcqid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"0363 Cannot schedule soft IRQ for CQ eqcqid=%d, cqid=%d on CPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_eqe*)* @lpfc_sli4_hba_handle_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_eqe* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_eqe*, align 8
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_eqe* %2, %struct.lpfc_eqe** %6, align 8
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %7, align 8
  %11 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @lpfc_eqe_major_code, align 4
  %15 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %16 = call i64 @bf_get_le32(i32 %14, %struct.lpfc_eqe* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @LOG_SLI, align 4
  %25 = load i32, i32* @lpfc_eqe_major_code, align 4
  %26 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %27 = call i64 @bf_get_le32(i32 %25, %struct.lpfc_eqe* %26)
  %28 = load i32, i32* @lpfc_eqe_minor_code, align 4
  %29 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %30 = call i64 @bf_get_le32(i32 %28, %struct.lpfc_eqe* %29)
  %31 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  br label %172

32:                                               ; preds = %3
  %33 = load i32, i32* @lpfc_eqe_resource_id, align 4
  %34 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %35 = call i64 @bf_get_le32(i32 %33, %struct.lpfc_eqe* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %36, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %46, i64 %47
  %49 = load %struct.lpfc_queue*, %struct.lpfc_queue** %48, align 8
  store %struct.lpfc_queue* %49, %struct.lpfc_queue** %7, align 8
  %50 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %51 = icmp ne %struct.lpfc_queue* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %151

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %54
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %62, align 8
  %64 = icmp ne %struct.lpfc_queue** %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %68, align 8
  %70 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %69, i64 0
  %71 = load %struct.lpfc_queue*, %struct.lpfc_queue** %70, align 8
  %72 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %65
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = icmp ult i64 %78, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = sub i64 %90, %91
  %93 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %89, i64 %92
  %94 = load %struct.lpfc_queue*, %struct.lpfc_queue** %93, align 8
  store %struct.lpfc_queue* %94, %struct.lpfc_queue** %7, align 8
  br label %132

95:                                               ; preds = %77, %65
  br label %96

96:                                               ; preds = %95, %59, %54
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.lpfc_queue*, %struct.lpfc_queue** %99, align 8
  %101 = icmp ne %struct.lpfc_queue* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load %struct.lpfc_queue*, %struct.lpfc_queue** %106, align 8
  %108 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %103, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %114, align 8
  store %struct.lpfc_queue* %115, %struct.lpfc_queue** %7, align 8
  br label %116

116:                                              ; preds = %111, %102, %96
  %117 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %118 = icmp eq %struct.lpfc_queue* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @lpfc_sli4_sp_handle_eqe(%struct.lpfc_hba* %120, %struct.lpfc_eqe* %121, i32 %129)
  br label %172

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %85
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %135 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %132
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %143 = load i32, i32* @KERN_ERR, align 4
  %144 = load i32, i32* @LOG_SLI, align 4
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %147 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i64 %145, i64 %148)
  br label %172

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %150, %52
  %152 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %153 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %158, i32 0, i32 2
  %160 = call i32 @queue_work_on(i32 %154, i32 %157, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %151
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %164 = load i32, i32* @KERN_ERR, align 4
  %165 = load i32, i32* @LOG_SLI, align 4
  %166 = load i64, i64* %9, align 8
  %167 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %168 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (...) @raw_smp_processor_id()
  %171 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %166, i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %21, %119, %141, %162, %151
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get_le32(i32, %struct.lpfc_eqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @lpfc_sli4_sp_handle_eqe(%struct.lpfc_hba*, %struct.lpfc_eqe*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
