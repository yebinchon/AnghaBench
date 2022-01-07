; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_els_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_els_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@CMD_ABORT_XRI_CX = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_ABORT_REQUESTED = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"0327 Cannot abort els iocb x%px with tag %x context %x, abort status %x, abort code %x\0A\00", align 1
@IOERR_SLI_ABORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_sli_abort_els_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_abort_els_cmpl(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %3
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LPFC_SLI_REV4, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %17
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CMD_ABORT_XRI_CX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IOERR_ABORT_REQUESTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_irq(i32* %61)
  br label %132

63:                                               ; preds = %50, %44, %38
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ule i64 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %77, i64 %78
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %79, align 8
  store %struct.lpfc_iocbq* %80, %struct.lpfc_iocbq** %10, align 8
  br label %81

81:                                               ; preds = %73, %66, %63
  br label %90

82:                                               ; preds = %17
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %86, i64 %87
  %89 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %88, align 8
  store %struct.lpfc_iocbq* %89, %struct.lpfc_iocbq** %10, align 8
  br label %90

90:                                               ; preds = %82, %81
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = load i32, i32* @KERN_WARNING, align 4
  %93 = load i32, i32* @LOG_ELS, align 4
  %94 = load i32, i32* @LOG_SLI, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), %struct.lpfc_iocbq* %96, i64 %97, i64 %98, i64 %101, i64 %107)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock_irq(i32* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %90
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IOERR_SLI_ABORTED, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %129 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %127, %struct.lpfc_iocbq* %128)
  br label %130

130:                                              ; preds = %126, %117, %90
  br label %131

131:                                              ; preds = %130, %3
  br label %132

132:                                              ; preds = %131, %59
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %135 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %133, %struct.lpfc_iocbq* %134)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, %struct.lpfc_iocbq*, i64, i64, i64, i64) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
