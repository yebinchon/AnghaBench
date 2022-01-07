; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_shost_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_shost_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.csio_hw = type { %struct.TYPE_7__*, %struct.csio_lnode*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.csio_lnode = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@csio_lun_qdepth = common dso_local global i8* null, align 8
@csio_fcoe_shost_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@csio_fcoe_shost_vport_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CSIO_MAX_QUEUE = common dso_local global i32 0, align 4
@uint32_t = common dso_local global i32 0, align 4
@csio_fcoe_rnodes = common dso_local global i32 0, align 4
@CSIO_MAX_LUN = common dso_local global i32 0, align 4
@csio_fcoe_transport = common dso_local global i32 0, align 4
@csio_fcoe_transport_vport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csio_lnode* @csio_shost_init(%struct.csio_hw* %0, %struct.device* %1, i32 %2, %struct.csio_lnode* %3) #0 {
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_lnode*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.csio_lnode*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.csio_lnode* %3, %struct.csio_lnode** %9, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %10, align 8
  %12 = load i8*, i8** @csio_lun_qdepth, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @csio_fcoe_shost_template, i32 0, i32 0), align 8
  %13 = load i8*, i8** @csio_lun_qdepth, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @csio_fcoe_shost_vport_template, i32 0, i32 0), align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = icmp eq %struct.device* %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.TYPE_8__* @csio_fcoe_shost_template, i32 4)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %10, align 8
  br label %24

22:                                               ; preds = %4
  %23 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.TYPE_8__* @csio_fcoe_shost_vport_template, i32 4)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %10, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %26 = icmp ne %struct.Scsi_Host* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %111

28:                                               ; preds = %24
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %30 = call %struct.csio_lnode* @shost_priv(%struct.Scsi_Host* %29)
  store %struct.csio_lnode* %30, %struct.csio_lnode** %11, align 8
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  %32 = call i32 @memset(%struct.csio_lnode* %31, i32 0, i32 4)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  %38 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @CSIO_MAX_QUEUE, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 3
  store i32 16, i32* %50, align 4
  %51 = load i32, i32* @uint32_t, align 4
  %52 = load i32, i32* @csio_fcoe_rnodes, align 4
  %53 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %54 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @min_t(i32 %51, i32 %52, i32 %56)
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CSIO_MAX_LUN, align 4
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = icmp eq %struct.device* %63, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %28
  %70 = load i32, i32* @csio_fcoe_transport, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %28
  %74 = load i32, i32* @csio_fcoe_transport_vport, align 4
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %79 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %78, i32 0, i32 1
  %80 = load %struct.csio_lnode*, %struct.csio_lnode** %79, align 8
  %81 = icmp ne %struct.csio_lnode* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  %84 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %85 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %84, i32 0, i32 1
  store %struct.csio_lnode* %83, %struct.csio_lnode** %85, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  %88 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %89 = load %struct.csio_lnode*, %struct.csio_lnode** %9, align 8
  %90 = call i64 @csio_lnode_init(%struct.csio_lnode* %87, %struct.csio_hw* %88, %struct.csio_lnode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %108

93:                                               ; preds = %86
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %97 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i64 @scsi_add_host_with_dma(%struct.Scsi_Host* %94, %struct.device* %95, %struct.device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %105

103:                                              ; preds = %93
  %104 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  store %struct.csio_lnode* %104, %struct.csio_lnode** %5, align 8
  br label %112

105:                                              ; preds = %102
  %106 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  %107 = call i32 @csio_lnode_exit(%struct.csio_lnode* %106)
  br label %108

108:                                              ; preds = %105, %92
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %110 = call i32 @scsi_host_put(%struct.Scsi_Host* %109)
  br label %111

111:                                              ; preds = %108, %27
  store %struct.csio_lnode* null, %struct.csio_lnode** %5, align 8
  br label %112

112:                                              ; preds = %111, %103
  %113 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  ret %struct.csio_lnode* %113
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.csio_lnode* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.csio_lnode*, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i64 @csio_lnode_init(%struct.csio_lnode*, %struct.csio_hw*, %struct.csio_lnode*) #1

declare dso_local i64 @scsi_add_host_with_dma(%struct.Scsi_Host*, %struct.device*, %struct.device*) #1

declare dso_local i32 @csio_lnode_exit(%struct.csio_lnode*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
