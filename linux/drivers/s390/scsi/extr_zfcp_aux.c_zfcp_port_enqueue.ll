; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, %struct.zfcp_adapter*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@zfcp_fc_port_did_lookup = common dso_local global i32 0, align 4
@zfcp_fc_link_test_work = common dso_local global i32 0, align 4
@zfcp_scsi_rport_work = common dso_local global i32 0, align 4
@RPORT_NONE = common dso_local global i32 0, align 4
@zfcp_port_attr_groups = common dso_local global i32 0, align 4
@zfcp_port_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_port* @zfcp_port_enqueue(%struct.zfcp_adapter* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zfcp_port*, align 8
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %14, i32 0, i32 3
  %16 = call i32 @kref_get(i32* %15)
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %17, i64 %18)
  store %struct.zfcp_port* %19, %struct.zfcp_port** %10, align 8
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %21 = icmp ne %struct.zfcp_port* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %24 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %23, i32 0, i32 3
  %25 = call i32 @put_device(%struct.TYPE_8__* %24)
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %129

28:                                               ; preds = %4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.zfcp_port* @kzalloc(i32 96, i32 %29)
  store %struct.zfcp_port* %30, %struct.zfcp_port** %10, align 8
  %31 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %32 = icmp ne %struct.zfcp_port* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %129

34:                                               ; preds = %28
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 13
  %37 = call i32 @rwlock_init(i32* %36)
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %39 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %38, i32 0, i32 12
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %42 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %41, i32 0, i32 11
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %45 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %44, i32 0, i32 10
  %46 = load i32, i32* @zfcp_fc_port_did_lookup, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %49 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %48, i32 0, i32 9
  %50 = load i32, i32* @zfcp_fc_link_test_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %53 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %52, i32 0, i32 8
  %54 = load i32, i32* @zfcp_scsi_rport_work, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %57 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %58 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %57, i32 0, i32 7
  store %struct.zfcp_adapter* %56, %struct.zfcp_adapter** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %61 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %64 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %63, i32 0, i32 6
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @RPORT_NONE, align 4
  %66 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %67 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %73 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32* %71, i32** %74, align 8
  %75 = load i32, i32* @zfcp_port_attr_groups, align 4
  %76 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %77 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @zfcp_port_release, align 4
  %80 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %81 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %84 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %85 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.zfcp_adapter* %83, %struct.zfcp_adapter** %86, align 8
  %87 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %88 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %89 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store %struct.zfcp_port* %87, %struct.zfcp_port** %90, align 8
  %91 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %92 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %91, i32 0, i32 3
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @dev_set_name(%struct.TYPE_8__* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %34
  %97 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %98 = call i32 @kfree(%struct.zfcp_port* %97)
  br label %129

99:                                               ; preds = %34
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %103 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %102, i32 0, i32 3
  %104 = call i64 @device_register(%struct.TYPE_8__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %108 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %107, i32 0, i32 3
  %109 = call i32 @put_device(%struct.TYPE_8__* %108)
  br label %129

110:                                              ; preds = %99
  %111 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %111, i32 0, i32 0
  %113 = call i32 @write_lock_irq(i32* %112)
  %114 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %115 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %114, i32 0, i32 2
  %116 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %116, i32 0, i32 1
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %119, i32 0, i32 0
  %121 = call i32 @write_unlock_irq(i32* %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %126 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %125, i32 0, i32 1
  %127 = call i32 @atomic_or(i32 %124, i32* %126)
  %128 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %128, %struct.zfcp_port** %5, align 8
  br label %134

129:                                              ; preds = %106, %96, %33, %22
  %130 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %131 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %130)
  %132 = load i32, i32* %11, align 4
  %133 = call %struct.zfcp_port* @ERR_PTR(i32 %132)
  store %struct.zfcp_port* %133, %struct.zfcp_port** %5, align 8
  br label %134

134:                                              ; preds = %129, %110
  %135 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  ret %struct.zfcp_port* %135
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i64) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local %struct.zfcp_port* @kzalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @dev_set_name(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.zfcp_port*) #1

declare dso_local i64 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

declare dso_local %struct.zfcp_port* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
