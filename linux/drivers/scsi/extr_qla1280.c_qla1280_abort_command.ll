; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_abort_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_abort_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.srb = type { i32, i32 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"qla1280_abort_command\00", align 1
@SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@MBC_ABORT_COMMAND = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"qla1280_abort_command: **** FAILED ****\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.srb*, i32)* @qla1280_abort_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_abort_command(%struct.scsi_qla_host* %0, %struct.srb* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.srb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.srb* %1, %struct.srb** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = call i32 @ENTER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.srb*, %struct.srb** %5, align 8
  %19 = getelementptr inbounds %struct.srb, %struct.srb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SCSI_BUS_32(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.srb*, %struct.srb** %5, align 8
  %23 = getelementptr inbounds %struct.srb, %struct.srb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SCSI_TCN_32(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.srb*, %struct.srb** %5, align 8
  %27 = getelementptr inbounds %struct.srb, %struct.srb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SCSI_LUN_32(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @SRB_ABORT_PENDING, align 4
  %31 = load %struct.srb*, %struct.srb** %5, align 8
  %32 = getelementptr inbounds %struct.srb, %struct.srb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @MBC_ABORT_COMMAND, align 4
  %36 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @BIT_7, align 4
  %42 = or i32 %40, %41
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 16
  %53 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 65535
  %56 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %58 = getelementptr inbounds i32, i32* %16, i64 0
  %59 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %57, i32 15, i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %45
  %63 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @SRB_ABORT_PENDING, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.srb*, %struct.srb** %5, align 8
  %67 = getelementptr inbounds %struct.srb, %struct.srb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %45
  %71 = call i32 @LEAVE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %12, align 4
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ENTER(i8*) #2

declare dso_local i32 @SCSI_BUS_32(i32) #2

declare dso_local i32 @SCSI_TCN_32(i32) #2

declare dso_local i32 @SCSI_LUN_32(i32) #2

declare dso_local i32 @qla1280_mailbox_command(%struct.scsi_qla_host*, i32, i32*) #2

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
