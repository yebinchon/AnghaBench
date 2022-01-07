; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_bootstrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}*, {}*, {}* }

@QLA_ERROR = common dso_local global i32 0, align 4
@AF_FW_RECOVERY = common dso_local global i32 0, align 4
@QLA8XXX_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"HW State: INITIALIZING\0A\00", align 1
@QLA8XXX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_INITIALIZING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HW State: FAILED\0A\00", align 1
@QLA8XXX_DEV_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"HW State: READY\0A\00", align 1
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_device_bootstrap(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %9 = load i32, i32* @QLA_ERROR, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.scsi_qla_host*)**
  %15 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %14, align 8
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = call i32 %15(%struct.scsi_qla_host* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @AF_FW_RECOVERY, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = bitcast {}** %30 to i32 (%struct.scsi_qla_host*)**
  %32 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %31, align 8
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %34 = call i32 %32(%struct.scsi_qla_host* %33)
  br label %35

35:                                               ; preds = %26, %20
  br label %66

36:                                               ; preds = %1
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = load i32, i32* @QLA8XXX_PEG_ALIVE_COUNTER, align 4
  %39 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %54, %36
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = call i32 @msleep(i32 200)
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = load i32, i32* @QLA8XXX_PEG_ALIVE_COUNTER, align 4
  %47 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %45, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = bitcast {}** %61 to i32 (%struct.scsi_qla_host*)**
  %63 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %62, align 8
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %65 = call i32 %63(%struct.scsi_qla_host* %64)
  br label %66

66:                                               ; preds = %57, %35
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %69 = call i32 @ql4_printk(i32 %67, %struct.scsi_qla_host* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %71 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %72 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %73 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %70, i32 %71, i32 %72)
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = bitcast {}** %77 to i32 (%struct.scsi_qla_host*)**
  %79 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %78, align 8
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %81 = call i32 %79(%struct.scsi_qla_host* %80)
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %83 = call i64 @is_qla8022(%struct.scsi_qla_host* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %66
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %87 = call i32 @qla4_8xxx_get_minidump(%struct.scsi_qla_host* %86)
  br label %88

88:                                               ; preds = %85, %66
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = bitcast {}** %92 to i32 (%struct.scsi_qla_host*)**
  %94 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %93, align 8
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %96 = call i32 %94(%struct.scsi_qla_host* %95)
  store i32 %96, i32* %4, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = bitcast {}** %100 to i32 (%struct.scsi_qla_host*)**
  %102 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %101, align 8
  %103 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %104 = call i32 %102(%struct.scsi_qla_host* %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @QLA_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %88
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %111 = call i32 @ql4_printk(i32 %109, %struct.scsi_qla_host* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %113 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %112)
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %115 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %116 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %117 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %129

119:                                              ; preds = %88
  br label %120

120:                                              ; preds = %119, %51
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %123 = call i32 @ql4_printk(i32 %121, %struct.scsi_qla_host* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %125 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %126 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %127 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %124, i32 %125, i32 %126)
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %120, %108
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_get_minidump(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
