; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_dbg.c_qedf_uevent_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_dbg.c_qedf_uevent_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"GRCDUMP=%u\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_uevent_emit(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca [2 x i8*], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 40)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %29 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strscpy(i8* %19, i8* %20, i32 40)
  br label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @KOBJ_CHANGE, align 4
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %36 = call i32 @kobject_uevent_env(i32* %33, i32 %34, i8** %35)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
