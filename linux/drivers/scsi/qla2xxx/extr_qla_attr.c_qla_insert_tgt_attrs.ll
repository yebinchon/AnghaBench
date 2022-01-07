; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla_insert_tgt_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla_insert_tgt_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { i32 }

@qla2x00_host_attrs = common dso_local global %struct.device_attribute** null, align 8
@dev_attr_qlini_mode = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_ql2xiniexchg = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_ql2xexchoffld = common dso_local global %struct.device_attribute zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla_insert_tgt_attrs() #0 {
  %1 = alloca %struct.device_attribute**, align 8
  %2 = load %struct.device_attribute**, %struct.device_attribute*** @qla2x00_host_attrs, align 8
  %3 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %2, i64 0
  store %struct.device_attribute** %3, %struct.device_attribute*** %1, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  %6 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %7 = icmp ne %struct.device_attribute* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  %11 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %10, i32 1
  store %struct.device_attribute** %11, %struct.device_attribute*** %1, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  store %struct.device_attribute* @dev_attr_qlini_mode, %struct.device_attribute** %13, align 8
  %14 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  %15 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %14, i32 1
  store %struct.device_attribute** %15, %struct.device_attribute*** %1, align 8
  %16 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  store %struct.device_attribute* @dev_attr_ql2xiniexchg, %struct.device_attribute** %16, align 8
  %17 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  %18 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %17, i32 1
  store %struct.device_attribute** %18, %struct.device_attribute*** %1, align 8
  %19 = load %struct.device_attribute**, %struct.device_attribute*** %1, align 8
  store %struct.device_attribute* @dev_attr_ql2xexchoffld, %struct.device_attribute** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
