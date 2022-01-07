; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_quirk_dl_nac_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_quirk_dl_nac_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CONTROLLER_FATAL_ERROR = common dso_local global i32 0, align 4
@SYSTEM_BUS_FATAL_ERROR = common dso_local global i32 0, align 4
@DEVICE_FATAL_ERROR = common dso_local global i32 0, align 4
@UIC_ERROR = common dso_local global i32 0, align 4
@UFSHCD_UIC_DL_TCx_REPLAY_ERROR = common dso_local global i32 0, align 4
@UFSHCD_UIC_DL_NAC_RECEIVED_ERROR = common dso_local global i32 0, align 4
@INT_FATAL_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_quirk_dl_nac_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_quirk_dl_nac_errors(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CONTROLLER_FATAL_ERROR, align 4
  %17 = load i32, i32* @SYSTEM_BUS_FATAL_ERROR, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %143

22:                                               ; preds = %1
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DEVICE_FATAL_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %31 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UIC_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %38 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UFSHCD_UIC_DL_TCx_REPLAY_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %22
  br label %143

44:                                               ; preds = %36, %29
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %46 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UIC_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %142

51:                                               ; preds = %44
  %52 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %53 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UFSHCD_UIC_DL_NAC_RECEIVED_ERROR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %142

58:                                               ; preds = %51
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %60 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  %66 = call i32 @msleep(i32 50)
  %67 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %68 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @spin_lock_irqsave(i32 %71, i64 %72)
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %75 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @INT_FATAL_ERRORS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %58
  %81 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %82 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @UIC_ERROR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %89 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UFSHCD_UIC_DL_NAC_RECEIVED_ERROR, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %58
  br label %143

96:                                               ; preds = %87, %80
  %97 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %98 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32 %101, i64 %102)
  %104 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %105 = call i32 @ufshcd_verify_dev_init(%struct.ufs_hba* %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %107 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @spin_lock_irqsave(i32 %110, i64 %111)
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  br label %143

116:                                              ; preds = %96
  %117 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %118 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @UFSHCD_UIC_DL_NAC_RECEIVED_ERROR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32, i32* @UIC_ERROR, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %126 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i32, i32* @UFSHCD_UIC_DL_NAC_RECEIVED_ERROR, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %133 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %137 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %143

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %51, %44
  br label %143

143:                                              ; preds = %142, %140, %115, %95, %43, %21
  %144 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %145 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %3, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32 %148, i64 %149)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ufshcd_verify_dev_init(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
