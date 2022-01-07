; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_config_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_config_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_5__*, %struct.nvram }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.nvram = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@MBC_SET_INITIATOR_ID = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@MAX_TARGETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32)* @qla1280_config_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_config_bus(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvram*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  store %struct.nvram* %11, %struct.nvram** %5, align 8
  %12 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.nvram*, %struct.nvram** %5, align 8
  %17 = getelementptr inbounds %struct.nvram, %struct.nvram* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32 %24, i32* %31, align 4
  %32 = load %struct.nvram*, %struct.nvram** %5, align 8
  %33 = getelementptr inbounds %struct.nvram, %struct.nvram* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 8
  %48 = load i32, i32* @MBC_SET_INITIATOR_ID, align 4
  %49 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %2
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BIT_7, align 4
  %62 = or i32 %60, %61
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  br label %72

72:                                               ; preds = %63, %52
  %73 = phi i32 [ %62, %52 ], [ %71, %63 ]
  %74 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %76 = load i32, i32* @BIT_1, align 4
  %77 = load i32, i32* @BIT_0, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds i32, i32* %15, i64 0
  %80 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %75, i32 %78, i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.nvram*, %struct.nvram** %5, align 8
  %82 = getelementptr inbounds %struct.nvram, %struct.nvram* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i32 %88, i32* %95, align 8
  %96 = load %struct.nvram*, %struct.nvram** %5, align 8
  %97 = getelementptr inbounds %struct.nvram, %struct.nvram* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 1
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i64 %104, i64* %111, align 8
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %123, %72
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @MAX_TARGETS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @qla1280_config_target(%struct.scsi_qla_host* %117, i32 %118, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %112

126:                                              ; preds = %112
  %127 = load i32, i32* %9, align 4
  %128 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qla1280_mailbox_command(%struct.scsi_qla_host*, i32, i32*) #2

declare dso_local i32 @qla1280_config_target(%struct.scsi_qla_host*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
