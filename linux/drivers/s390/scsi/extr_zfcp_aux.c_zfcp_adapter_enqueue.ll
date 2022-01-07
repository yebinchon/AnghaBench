; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32, %struct.ccw_device*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.zfcp_adapter* }
%struct.ccw_device = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_zfcp_status_read_scheduler = common dso_local global i32 0, align 4
@zfcp_fc_scan_ports = common dso_local global i32 0, align 4
@zfcp_fc_sym_name_update = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@zfcp_fc_post_event = common dso_local global i32 0, align 4
@zfcp_print_sl = common dso_local global i32 0, align 4
@zfcp_sysfs_adapter_attrs = common dso_local global i32 0, align 4
@FSF_STATUS_READS_RECOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_adapter* @zfcp_adapter_enqueue(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = call i32 @get_device(%struct.TYPE_10__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.zfcp_adapter* @ERR_PTR(i32 %11)
  store %struct.zfcp_adapter* %12, %struct.zfcp_adapter** %2, align 8
  br label %166

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.zfcp_adapter* @kzalloc(i32 104, i32 %14)
  store %struct.zfcp_adapter* %15, %struct.zfcp_adapter** %4, align 8
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %17 = icmp ne %struct.zfcp_adapter* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  %21 = call i32 @put_device(%struct.TYPE_10__* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.zfcp_adapter* @ERR_PTR(i32 %23)
  store %struct.zfcp_adapter* %24, %struct.zfcp_adapter** %2, align 8
  br label %166

25:                                               ; preds = %13
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 19
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %32 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %32, i32 0, i32 2
  store %struct.ccw_device* %31, %struct.ccw_device** %33, align 8
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 18
  %36 = load i32, i32* @_zfcp_status_read_scheduler, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %38, i32 0, i32 17
  %40 = load i32, i32* @zfcp_fc_scan_ports, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %42, i32 0, i32 16
  %44 = load i32, i32* @zfcp_fc_sym_name_update, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 15
  store i32 %46, i32* %48, align 8
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 14
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store %struct.zfcp_adapter* %49, %struct.zfcp_adapter** %52, align 8
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %54 = call i64 @zfcp_qdio_setup(%struct.zfcp_adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  br label %160

57:                                               ; preds = %25
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %59 = call i64 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %160

62:                                               ; preds = %57
  %63 = call i32 (...) @zfcp_reqlist_alloc()
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 8
  %66 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %160

71:                                               ; preds = %62
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %73 = call i64 @zfcp_dbf_adapter_register(%struct.zfcp_adapter* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %160

76:                                               ; preds = %71
  %77 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %78 = call i64 @zfcp_setup_adapter_work_queue(%struct.zfcp_adapter* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %160

81:                                               ; preds = %76
  %82 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %83 = call i64 @zfcp_fc_gs_setup(%struct.zfcp_adapter* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %160

86:                                               ; preds = %81
  %87 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %87, i32 0, i32 12
  %89 = call i32 @rwlock_init(i32* %88)
  %90 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %90, i32 0, i32 11
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %97, i32 0, i32 10
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* @zfcp_fc_post_event, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %102, i32 0, i32 10
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %106, i32 0, i32 9
  %108 = call i32 @init_waitqueue_head(i32* %107)
  %109 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %109, i32 0, i32 8
  %111 = call i32 @init_waitqueue_head(i32* %110)
  %112 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %112, i32 0, i32 7
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %116 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %115, i32 0, i32 6
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %118, i32 0, i32 5
  %120 = call i32 @rwlock_init(i32* %119)
  %121 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %121, i32 0, i32 4
  %123 = call i32 @rwlock_init(i32* %122)
  %124 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %125 = call i64 @zfcp_erp_thread_setup(%struct.zfcp_adapter* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %86
  br label %160

128:                                              ; preds = %86
  %129 = load i32, i32* @zfcp_print_sl, align 4
  %130 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %134 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %133, i32 0, i32 0
  %135 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %136 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %134, %struct.zfcp_adapter* %135)
  %137 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %138 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = call i64 @sysfs_create_group(i32* %139, i32* @zfcp_sysfs_adapter_attrs)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %160

143:                                              ; preds = %128
  %144 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %145 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %144, i32 0, i32 1
  %146 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %146, i32 0, i32 2
  %148 = load %struct.ccw_device*, %struct.ccw_device** %147, align 8
  %149 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  store i32* %145, i32** %150, align 8
  %151 = load i32, i32* @FSF_STATUS_READS_RECOM, align 4
  %152 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %153 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %155 = call i32 @zfcp_scsi_adapter_register(%struct.zfcp_adapter* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %143
  %158 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  store %struct.zfcp_adapter* %158, %struct.zfcp_adapter** %2, align 8
  br label %166

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %142, %127, %85, %80, %75, %70, %61, %56
  %161 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %162 = call i32 @zfcp_adapter_unregister(%struct.zfcp_adapter* %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  %165 = call %struct.zfcp_adapter* @ERR_PTR(i32 %164)
  store %struct.zfcp_adapter* %165, %struct.zfcp_adapter** %2, align 8
  br label %166

166:                                              ; preds = %160, %157, %18, %9
  %167 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  ret %struct.zfcp_adapter* %167
}

declare dso_local i32 @get_device(%struct.TYPE_10__*) #1

declare dso_local %struct.zfcp_adapter* @ERR_PTR(i32) #1

declare dso_local %struct.zfcp_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @zfcp_qdio_setup(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_reqlist_alloc(...) #1

declare dso_local i64 @zfcp_dbf_adapter_register(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_setup_adapter_work_queue(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_fc_gs_setup(%struct.zfcp_adapter*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @zfcp_erp_thread_setup(%struct.zfcp_adapter*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.zfcp_adapter*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @zfcp_scsi_adapter_register(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_adapter_unregister(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
