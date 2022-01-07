; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_alloc_sas_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_alloc_sas_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_sas_port = type { i32, %struct.pqi_scsi_dev*, i32, %struct.sas_port*, %struct.pqi_sas_node*, i32 }
%struct.sas_port = type { i32 }
%struct.pqi_sas_node = type { i32, i32 }
%struct.pqi_scsi_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pqi_sas_port* (%struct.pqi_sas_node*, i32, %struct.pqi_scsi_dev*)* @pqi_alloc_sas_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pqi_sas_port* @pqi_alloc_sas_port(%struct.pqi_sas_node* %0, i32 %1, %struct.pqi_scsi_dev* %2) #0 {
  %4 = alloca %struct.pqi_sas_port*, align 8
  %5 = alloca %struct.pqi_sas_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pqi_scsi_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pqi_sas_port*, align 8
  %10 = alloca %struct.sas_port*, align 8
  store %struct.pqi_sas_node* %0, %struct.pqi_sas_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pqi_scsi_dev* %2, %struct.pqi_scsi_dev** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pqi_sas_port* @kzalloc(i32 48, i32 %11)
  store %struct.pqi_sas_port* %12, %struct.pqi_sas_port** %9, align 8
  %13 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %14 = icmp ne %struct.pqi_sas_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.pqi_sas_port* null, %struct.pqi_sas_port** %4, align 8
  br label %58

16:                                               ; preds = %3
  %17 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %18 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %5, align 8
  %21 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %22 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %21, i32 0, i32 4
  store %struct.pqi_sas_node* %20, %struct.pqi_sas_node** %22, align 8
  %23 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %5, align 8
  %24 = getelementptr inbounds %struct.pqi_sas_node, %struct.pqi_sas_node* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sas_port* @sas_port_alloc_num(i32 %25)
  store %struct.sas_port* %26, %struct.sas_port** %10, align 8
  %27 = load %struct.sas_port*, %struct.sas_port** %10, align 8
  %28 = icmp ne %struct.sas_port* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %55

30:                                               ; preds = %16
  %31 = load %struct.sas_port*, %struct.sas_port** %10, align 8
  %32 = call i32 @sas_port_add(%struct.sas_port* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %52

36:                                               ; preds = %30
  %37 = load %struct.sas_port*, %struct.sas_port** %10, align 8
  %38 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %39 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %38, i32 0, i32 3
  store %struct.sas_port* %37, %struct.sas_port** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %42 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %44 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %45 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %44, i32 0, i32 1
  store %struct.pqi_scsi_dev* %43, %struct.pqi_scsi_dev** %45, align 8
  %46 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %47 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %46, i32 0, i32 0
  %48 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %5, align 8
  %49 = getelementptr inbounds %struct.pqi_sas_node, %struct.pqi_sas_node* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  store %struct.pqi_sas_port* %51, %struct.pqi_sas_port** %4, align 8
  br label %58

52:                                               ; preds = %35
  %53 = load %struct.sas_port*, %struct.sas_port** %10, align 8
  %54 = call i32 @sas_port_free(%struct.sas_port* %53)
  br label %55

55:                                               ; preds = %52, %29
  %56 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %57 = call i32 @kfree(%struct.pqi_sas_port* %56)
  store %struct.pqi_sas_port* null, %struct.pqi_sas_port** %4, align 8
  br label %58

58:                                               ; preds = %55, %36, %15
  %59 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %4, align 8
  ret %struct.pqi_sas_port* %59
}

declare dso_local %struct.pqi_sas_port* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.sas_port* @sas_port_alloc_num(i32) #1

declare dso_local i32 @sas_port_add(%struct.sas_port*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sas_port_free(%struct.sas_port*) #1

declare dso_local i32 @kfree(%struct.pqi_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
