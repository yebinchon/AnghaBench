; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_add_sas_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_add_sas_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_sas_node = type { i32 }
%struct.hpsa_scsi_dev_t = type { %struct.hpsa_sas_port*, i32 }
%struct.hpsa_sas_port = type { %struct.sas_rphy*, i32 }
%struct.sas_rphy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsa_sas_node*, %struct.hpsa_scsi_dev_t*)* @hpsa_add_sas_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_add_sas_device(%struct.hpsa_sas_node* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsa_sas_node*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsa_sas_port*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.hpsa_sas_node* %0, %struct.hpsa_sas_node** %4, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %5, align 8
  %9 = load %struct.hpsa_sas_node*, %struct.hpsa_sas_node** %4, align 8
  %10 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %11 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hpsa_sas_port* @hpsa_alloc_sas_port(%struct.hpsa_sas_node* %9, i32 %12)
  store %struct.hpsa_sas_port* %13, %struct.hpsa_sas_port** %7, align 8
  %14 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %15 = icmp ne %struct.hpsa_sas_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %21 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.sas_rphy* @sas_end_device_alloc(i32 %22)
  store %struct.sas_rphy* %23, %struct.sas_rphy** %8, align 8
  %24 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %25 = icmp ne %struct.sas_rphy* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %19
  %30 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %31 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %32 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %31, i32 0, i32 0
  store %struct.sas_rphy* %30, %struct.sas_rphy** %32, align 8
  %33 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 0
  store %struct.hpsa_sas_port* %33, %struct.hpsa_sas_port** %35, align 8
  %36 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %37 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %38 = call i32 @hpsa_sas_port_add_rphy(%struct.hpsa_sas_port* %36, %struct.sas_rphy* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %49

43:                                               ; preds = %41, %26
  %44 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %7, align 8
  %45 = call i32 @hpsa_free_sas_port(%struct.hpsa_sas_port* %44)
  %46 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %5, align 8
  %47 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %46, i32 0, i32 0
  store %struct.hpsa_sas_port* null, %struct.hpsa_sas_port** %47, align 8
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %42, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.hpsa_sas_port* @hpsa_alloc_sas_port(%struct.hpsa_sas_node*, i32) #1

declare dso_local %struct.sas_rphy* @sas_end_device_alloc(i32) #1

declare dso_local i32 @hpsa_sas_port_add_rphy(%struct.hpsa_sas_port*, %struct.sas_rphy*) #1

declare dso_local i32 @hpsa_free_sas_port(%struct.hpsa_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
