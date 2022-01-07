; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"qla1280_device_reset\00", align 1
@MBC_ABORT_TARGET = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@MK_SYNC_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"qla1280_device_reset: **** FAILED ****\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32)* @qla1280_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_device_reset(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @ENTER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @MBC_ABORT_TARGET, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BIT_7, align 4
  %22 = or i32 %20, %21
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %22, %19 ], [ %24, %23 ]
  %27 = shl i32 %26, 8
  %28 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %31 = load i32, i32* @BIT_2, align 4
  %32 = load i32, i32* @BIT_1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BIT_0, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds i32, i32* %13, i64 0
  %37 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %30, i32 %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MK_SYNC_ID, align 4
  %42 = call i32 @qla1280_marker(%struct.scsi_qla_host* %38, i32 %39, i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %25
  %48 = call i32 @LEAVE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ENTER(i8*) #2

declare dso_local i32 @qla1280_mailbox_command(%struct.scsi_qla_host*, i32, i32*) #2

declare dso_local i32 @qla1280_marker(%struct.scsi_qla_host*, i32, i32, i32, i32) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @LEAVE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
