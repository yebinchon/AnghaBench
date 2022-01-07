; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*)* @hpsa_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_add_device(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %8 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %14 = call i64 @is_logical_device(%struct.hpsa_scsi_dev_t* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %18 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %21 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %27 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @scsi_add_device(i32 %19, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %12
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %35 = call i32 @hpsa_add_sas_device(i32 %33, %struct.hpsa_scsi_dev_t* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %16
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @scsi_add_device(i32, i32, i32, i32) #1

declare dso_local i32 @hpsa_add_sas_device(i32, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
