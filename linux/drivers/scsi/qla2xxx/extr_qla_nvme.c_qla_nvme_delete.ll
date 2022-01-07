; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i64 }

@CONFIG_NVME_FC = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unregister localport=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unregister of localport failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla_nvme_delete(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load i32, i32* @CONFIG_NVME_FC, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = call i32 @init_completion(i32* %15)
  %17 = load i32, i32* @ql_log_info, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %17, %struct.scsi_qla_host* %18, i32 8470, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @nvme_fc_unregister_localport(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load i32, i32* @ql_log_info, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %30, %struct.scsi_qla_host* %31, i32 8469, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

33:                                               ; preds = %13
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = call i32 @wait_for_completion(i32* %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %7, %37, %8
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @nvme_fc_unregister_localport(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
