; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_fcf_rescan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_fcf_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"2748 Failed to prepare for unregistering HBA's FCF record: rc=%d\0A\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@FCF_INIT_DISC = common dso_local global i32 0, align 4
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"2553 lpfc_unregister_unused_fcf failed to read FCF record HBA state x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_unregister_fcf_rescan(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = call i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = load i32, i32* @KERN_ERR, align 4
  %11 = load i32, i32* @LOG_DISCOVERY, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %88

14:                                               ; preds = %1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = call i32 @lpfc_sli4_unregister_fcf(%struct.lpfc_hba* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %88

20:                                               ; preds = %14
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FC_UNLOADING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %20
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LPFC_LINK_UP, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %20
  br label %88

43:                                               ; preds = %36
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 2
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load i32, i32* @FCF_INIT_DISC, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %60 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %43
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 2
  %66 = call i32 @spin_lock_irq(i32* %65)
  %67 = load i32, i32* @FCF_INIT_DISC, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* @LOG_DISCOVERY, align 4
  %80 = load i32, i32* @LOG_MBOX, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %8, %19, %42, %63, %43
  ret void
}

declare dso_local i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @lpfc_sli4_unregister_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
