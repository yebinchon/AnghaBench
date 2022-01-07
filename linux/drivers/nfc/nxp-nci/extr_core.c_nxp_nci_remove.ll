; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_core.c_nxp_nci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_core.c_nxp_nci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nxp_nci_info = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@NXP_NCI_MODE_FW = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@NXP_NCI_MODE_COLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nxp_nci_remove(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca %struct.nxp_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %4 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %5 = call %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev* %4)
  store %struct.nxp_nci_info* %5, %struct.nxp_nci_info** %3, align 8
  %6 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %7 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NXP_NCI_MODE_FW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %13 = load i32, i32* @ESHUTDOWN, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @nxp_nci_fw_work_complete(%struct.nxp_nci_info* %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %18 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %22 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %25 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %16
  %31 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %32 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %37 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NXP_NCI_MODE_COLD, align 4
  %40 = call i32 %35(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %16
  %42 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %43 = call i32 @nci_unregister_device(%struct.nci_dev* %42)
  %44 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %45 = call i32 @nci_free_device(%struct.nci_dev* %44)
  %46 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %47 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @nxp_nci_fw_work_complete(%struct.nxp_nci_info*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nci_unregister_device(%struct.nci_dev*) #1

declare dso_local i32 @nci_free_device(%struct.nci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
