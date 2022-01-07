; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_9__*, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ipr_trace_attr = common dso_local global i32 0, align 4
@ipr_ioa_async_err_log = common dso_local global i32 0, align 4
@ipr_dump_attr = common dso_local global i32 0, align 4
@ipr_iopoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ipr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = call i32 @ipr_probe_ioa(%struct.pci_dev* %10, %struct.pci_device_id* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %186

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev* %18)
  store %struct.ipr_ioa_cfg* %19, %struct.ipr_ioa_cfg** %6, align 8
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %21 = call i32 @ipr_probe_ioa_part2(%struct.ipr_ioa_cfg* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @__ipr_remove(%struct.pci_dev* %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %186

28:                                               ; preds = %17
  %29 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %30 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @scsi_add_host(%struct.TYPE_10__* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @__ipr_remove(%struct.pci_dev* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %186

41:                                               ; preds = %28
  %42 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @ipr_create_trace_file(i32* %46, i32* @ipr_trace_attr)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i32 @scsi_remove_host(%struct.TYPE_10__* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @__ipr_remove(%struct.pci_dev* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %186

58:                                               ; preds = %41
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 3
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @sysfs_create_bin_file(i32* %63, i32* @ipr_ioa_async_err_log)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %69 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @ipr_remove_dump_file(i32* %72, i32* @ipr_dump_attr)
  %74 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %75 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %74, i32 0, i32 3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @ipr_remove_trace_file(i32* %78, i32* @ipr_trace_attr)
  %80 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %81 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %80, i32 0, i32 3
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @scsi_remove_host(%struct.TYPE_10__* %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i32 @__ipr_remove(%struct.pci_dev* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %186

87:                                               ; preds = %58
  %88 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %89 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @ipr_create_dump_file(i32* %92, i32* @ipr_dump_attr)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %98 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %97, i32 0, i32 3
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = call i32 @sysfs_remove_bin_file(i32* %101, i32* @ipr_ioa_async_err_log)
  %103 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %104 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %103, i32 0, i32 3
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = call i32 @ipr_remove_trace_file(i32* %107, i32* @ipr_trace_attr)
  %109 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %110 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @scsi_remove_host(%struct.TYPE_10__* %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @__ipr_remove(%struct.pci_dev* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %186

116:                                              ; preds = %87
  %117 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %118 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_lock_irqsave(i32 %121, i64 %122)
  %124 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %125 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %127 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %126, i32 0, i32 8
  %128 = call i32 @schedule_work(i32* %127)
  %129 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %130 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %129, i32 0, i32 3
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32 %133, i64 %134)
  %136 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %137 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %136, i32 0, i32 7
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %142 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %141, i32 0, i32 4
  store i64 %140, i64* %142, align 8
  %143 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %144 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %181

147:                                              ; preds = %116
  %148 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %149 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %147
  %153 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %154 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %181

157:                                              ; preds = %152
  store i32 1, i32* %9, align 4
  br label %158

158:                                              ; preds = %177, %157
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %161 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %166 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %165, i32 0, i32 5
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %173 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @ipr_iopoll, align 4
  %176 = call i32 @irq_poll_init(i32* %171, i64 %174, i32 %175)
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %158

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180, %152, %147, %116
  %182 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %183 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %182, i32 0, i32 3
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = call i32 @scsi_scan_host(%struct.TYPE_10__* %184)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %96, %67, %50, %37, %24, %15
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ipr_probe_ioa(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ipr_probe_ioa_part2(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @__ipr_remove(%struct.pci_dev*) #1

declare dso_local i32 @scsi_add_host(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ipr_create_trace_file(i32*, i32*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_10__*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @ipr_remove_dump_file(i32*, i32*) #1

declare dso_local i32 @ipr_remove_trace_file(i32*, i32*) #1

declare dso_local i32 @ipr_create_dump_file(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @irq_poll_init(i32*, i64, i32) #1

declare dso_local i32 @scsi_scan_host(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
