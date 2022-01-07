; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i32, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.srp_rport_identifiers = type { i32, i32 }
%struct.srp_internal = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32*, i32*, i64 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srp_rport_release = common dso_local global i32 0, align 4
@srp_reconnect_work = common dso_local global i32 0, align 4
@rport_fast_io_fail_timedout = common dso_local global i32 0, align 4
@rport_dev_loss_timedout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"port-%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host* %0, %struct.srp_rport_identifiers* %1) #0 {
  %3 = alloca %struct.srp_rport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.srp_rport_identifiers*, align 8
  %6 = alloca %struct.srp_rport*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.srp_internal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.srp_rport_identifiers* %1, %struct.srp_rport_identifiers** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.srp_internal* @to_srp_internal(i32 %15)
  store %struct.srp_internal* %16, %struct.srp_internal** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.srp_rport* @kzalloc(i32 44, i32 %17)
  store %struct.srp_rport* %18, %struct.srp_rport** %6, align 8
  %19 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %20 = icmp ne %struct.srp_rport* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.srp_rport* @ERR_PTR(i32 %23)
  store %struct.srp_rport* %24, %struct.srp_rport** %3, align 8
  br label %163

25:                                               ; preds = %2
  %26 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %27 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %26, i32 0, i32 9
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %30 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %29, i32 0, i32 3
  %31 = call i32 @device_initialize(%struct.TYPE_12__* %30)
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @get_device(%struct.device* %32)
  %34 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %35 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @srp_rport_release, align 4
  %38 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %39 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %42 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.srp_rport_identifiers*, %struct.srp_rport_identifiers** %5, align 8
  %45 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %46, i32 4)
  %48 = load %struct.srp_rport_identifiers*, %struct.srp_rport_identifiers** %5, align 8
  %49 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %52 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %54 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %25
  %60 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %61 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %68 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %66
  %75 = phi i32 [ %72, %66 ], [ 10, %73 ]
  %76 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %77 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %25
  %79 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %80 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %79, i32 0, i32 6
  %81 = load i32, i32* @srp_reconnect_work, align 4
  %82 = call i32 @INIT_DELAYED_WORK(i32* %80, i32 %81)
  %83 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %84 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %91 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %89
  %98 = phi i32 [ %95, %89 ], [ 15, %96 ]
  %99 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %100 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %102 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.srp_internal*, %struct.srp_internal** %8, align 8
  %109 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %112, align 4
  br label %115

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %107
  %116 = phi i32 [ %113, %107 ], [ 60, %114 ]
  %117 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %118 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %120 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %119, i32 0, i32 5
  %121 = load i32, i32* @rport_fast_io_fail_timedout, align 4
  %122 = call i32 @INIT_DELAYED_WORK(i32* %120, i32 %121)
  %123 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %124 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %123, i32 0, i32 4
  %125 = load i32, i32* @rport_dev_loss_timedout, align 4
  %126 = call i32 @INIT_DELAYED_WORK(i32* %124, i32 %125)
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %128 = call %struct.TYPE_13__* @to_srp_host_attrs(%struct.Scsi_Host* %127)
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = call i32 @atomic_inc_return(i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %132 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %131, i32 0, i32 3
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @dev_set_name(%struct.TYPE_12__* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %139 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %138, i32 0, i32 3
  %140 = call i32 @transport_setup_device(%struct.TYPE_12__* %139)
  %141 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %142 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %141, i32 0, i32 3
  %143 = call i32 @device_add(%struct.TYPE_12__* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %115
  %147 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %148 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %147, i32 0, i32 3
  %149 = call i32 @transport_destroy_device(%struct.TYPE_12__* %148)
  %150 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %151 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %150, i32 0, i32 3
  %152 = call i32 @put_device(%struct.TYPE_12__* %151)
  %153 = load i32, i32* %10, align 4
  %154 = call %struct.srp_rport* @ERR_PTR(i32 %153)
  store %struct.srp_rport* %154, %struct.srp_rport** %3, align 8
  br label %163

155:                                              ; preds = %115
  %156 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %157 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %156, i32 0, i32 3
  %158 = call i32 @transport_add_device(%struct.TYPE_12__* %157)
  %159 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %160 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %159, i32 0, i32 3
  %161 = call i32 @transport_configure_device(%struct.TYPE_12__* %160)
  %162 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  store %struct.srp_rport* %162, %struct.srp_rport** %3, align 8
  br label %163

163:                                              ; preds = %155, %146, %21
  %164 = load %struct.srp_rport*, %struct.srp_rport** %3, align 8
  ret %struct.srp_rport* %164
}

declare dso_local %struct.srp_internal* @to_srp_internal(i32) #1

declare dso_local %struct.srp_rport* @kzalloc(i32, i32) #1

declare dso_local %struct.srp_rport* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.TYPE_13__* @to_srp_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_12__*) #1

declare dso_local i32 @device_add(%struct.TYPE_12__*) #1

declare dso_local i32 @transport_destroy_device(%struct.TYPE_12__*) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

declare dso_local i32 @transport_add_device(%struct.TYPE_12__*) #1

declare dso_local i32 @transport_configure_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
