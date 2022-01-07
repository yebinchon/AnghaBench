; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.rdac_dh_data* }
%struct.rdac_dh_data = type { i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@RDAC_LUN_UNOWNED = common dso_local global i32 0, align 4
@RDAC_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32 (i8*, i32)*, i8*)* @rdac_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_activate(%struct.scsi_device* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rdac_dh_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %12, align 8
  store %struct.rdac_dh_data* %13, %struct.rdac_dh_data** %8, align 8
  %14 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %16 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %17 = call i32 @check_ownership(%struct.scsi_device* %15, %struct.rdac_dh_data* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SCSI_DH_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %24 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %48 [
    i32 129, label %26
    i32 128, label %34
  ]

26:                                               ; preds = %22
  %27 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %28 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RDAC_LUN_UNOWNED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %49

34:                                               ; preds = %22
  %35 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %36 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RDAC_LUN_UNOWNED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %42 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RDAC_PREFERRED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %40, %34
  br label %49

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %47, %33
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %54 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @queue_mode_select(%struct.scsi_device* %53, i32 (i8*, i32)* %54, i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SCSI_DH_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %72

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %65 = icmp ne i32 (i8*, i32)* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %67(i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @check_ownership(%struct.scsi_device*, %struct.rdac_dh_data*) #1

declare dso_local i32 @queue_mode_select(%struct.scsi_device*, i32 (i8*, i32)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
