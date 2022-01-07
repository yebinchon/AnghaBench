; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_post_dev_loss_tmo_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_post_dev_loss_tmo_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HBA_FIP_SUPPORT = common dso_local global i32 0, align 4
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@HBA_DEVLOSS_TMO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"2847 Last remote node (x%x) using FCF devloss tmo\0A\00", align 1
@FCF_REDISC_PROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"2868 Devloss tmo to FCF rediscovery in progress\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_RR_INPROG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"2869 Devloss tmo to idle FIP engine, unreg in-use FCF and rescan.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"2870 FCF table scan in progress\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"2871 FLOGI roundrobin FCF failover in progress\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32, i32)* @lpfc_sli4_post_dev_loss_tmo_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_post_dev_loss_tmo_handler(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %120

10:                                               ; preds = %3
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HBA_FIP_SUPPORT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %117

17:                                               ; preds = %10
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = call i32 @lpfc_fcf_inuse(%struct.lpfc_hba* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %117, label %21

21:                                               ; preds = %17
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FCF_DISCOVERY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %21
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HBA_DEVLOSS_TMO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_irq(i32* %41)
  br label %120

43:                                               ; preds = %32
  %44 = load i32, i32* @HBA_DEVLOSS_TMO, align 4
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load i32, i32* @LOG_FIP, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %43, %21
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FCF_REDISC_PROG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load i32, i32* @LOG_FIP, align 4
  %69 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %120

70:                                               ; preds = %54
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FCF_TS_INPROG, align 4
  %75 = load i32, i32* @FCF_RR_INPROG, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %70
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load i32, i32* @LOG_FIP, align 4
  %86 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %88 = call i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba* %87)
  br label %120

89:                                               ; preds = %70
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_irq(i32* %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FCF_TS_INPROG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load i32, i32* @LOG_FIP, align 4
  %103 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %89
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FCF_RR_INPROG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = load i32, i32* @KERN_INFO, align 4
  %114 = load i32, i32* @LOG_FIP, align 4
  %115 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %17, %10
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %119 = call i32 @lpfc_unregister_unused_fcf(%struct.lpfc_hba* %118)
  br label %120

120:                                              ; preds = %117, %79, %62, %39, %9
  ret void
}

declare dso_local i32 @lpfc_fcf_inuse(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unregister_unused_fcf(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
