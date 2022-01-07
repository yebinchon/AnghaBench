; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_eisa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_eisa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eisa_scsi_data = type { %struct.Scsi_Host** }
%struct.Scsi_Host = type { i32 }

@ASC_IOADR_GAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @advansys_eisa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_eisa_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.eisa_scsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.eisa_scsi_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.eisa_scsi_data* %8, %struct.eisa_scsi_data** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.eisa_scsi_data*, %struct.eisa_scsi_data** %4, align 8
  %14 = getelementptr inbounds %struct.eisa_scsi_data, %struct.eisa_scsi_data* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host**, %struct.Scsi_Host*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %15, i64 %17
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %6, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = icmp ne %struct.Scsi_Host* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %32

23:                                               ; preds = %12
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = call i32 @advansys_release(%struct.Scsi_Host* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ASC_IOADR_GAP, align 4
  %31 = call i32 @release_region(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.eisa_scsi_data*, %struct.eisa_scsi_data** %4, align 8
  %37 = call i32 @kfree(%struct.eisa_scsi_data* %36)
  ret i32 0
}

declare dso_local %struct.eisa_scsi_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @advansys_release(%struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.eisa_scsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
