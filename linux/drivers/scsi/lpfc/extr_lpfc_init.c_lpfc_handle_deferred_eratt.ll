; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_deferred_eratt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_deferred_eratt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i8**, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.lpfc_sli }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_sli = type { i32 }

@DEFER_ERATT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"0479 Deferred Adapter Hardware Error Data: x%x x%x x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@HS_FFER1 = common dso_local global i32 0, align 4
@UNPLUG_ERR = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_deferred_eratt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_deferred_eratt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 8
  store %struct.lpfc_sli* %9, %struct.lpfc_sli** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_channel_offline(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load i32, i32* @DEFER_ERATT, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock_irq(i32* %26)
  br label %150

28:                                               ; preds = %1
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_INIT, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %39, i8* %44)
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = call i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba* %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %62 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %60, i32 %61)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = call i32 @lpfc_offline(%struct.lpfc_hba* %63)
  br label %65

65:                                               ; preds = %97, %28
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @HS_FFER1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = call i32 @msleep(i32 100)
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 0
  %79 = call i64 @lpfc_readl(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @UNPLUG_ERR, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %98

85:                                               ; preds = %72
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 5
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FC_UNLOADING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %98

97:                                               ; preds = %85
  br label %65

98:                                               ; preds = %94, %81, %65
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %98
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 5
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FC_UNLOADING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @HS_FFER1, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %112, %103, %98
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 3
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load i32, i32* @DEFER_ERATT, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 3
  %131 = call i32 @spin_unlock_irq(i32* %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 168
  %136 = call i8* @readl(i64 %135)
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  store i8* %136, i8** %140, align 8
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 172
  %145 = call i8* @readl(i64 %144)
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  store i8* %145, i8** %149, align 8
  br label %150

150:                                              ; preds = %119, %15
  ret void
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
