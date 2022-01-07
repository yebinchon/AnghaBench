; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_uevent_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_uevent_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"FW_DUMP=%ld\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32)* @qla4_8xxx_uevent_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_8xxx_uevent_emit(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [40 x i8], align 16
  %6 = alloca [2 x i8*], align 16
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 1
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @snprintf(i8* %12, i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @KOBJ_CHANGE, align 4
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %26 = call i32 @kobject_uevent_env(i32* %23, i32 %24, i8** %25)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
