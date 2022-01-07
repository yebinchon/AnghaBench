; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)* }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring PCI space...\0A\00", align 1
@RESET_ADAPTER = common dso_local global i32 0, align 4
@AF_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"scsi%ld: initialize adapter: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_initialize_adapter(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @QLA_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i32 @ql4_printk(i32 %9, %struct.scsi_qla_host* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %15, align 8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = call i32 %16(%struct.scsi_qla_host* %17)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %22, align 8
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %25 = call i32 %23(%struct.scsi_qla_host* %24)
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %29, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = call i32 %30(%struct.scsi_qla_host* %31)
  %33 = load i32, i32* @QLA_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %86

36:                                               ; preds = %2
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = call i64 @is_qla8032(%struct.scsi_qla_host* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %42 = call i64 @is_qla8042(%struct.scsi_qla_host* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = call i32 @qla4_83xx_enable_mbox_intrs(%struct.scsi_qla_host* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %49 = call i32 @qla4xxx_about_firmware(%struct.scsi_qla_host* %48)
  %50 = load i32, i32* @QLA_ERROR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %86

53:                                               ; preds = %47
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %55 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %57, align 8
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %60 = call i32 %58(%struct.scsi_qla_host* %59)
  %61 = load i32, i32* @QLA_ERROR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %86

64:                                               ; preds = %53
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %66 = call i32 @qla4xxx_init_local_data(%struct.scsi_qla_host* %65)
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %68 = call i32 @qla4xxx_init_firmware(%struct.scsi_qla_host* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @QLA_ERROR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %86

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @RESET_ADAPTER, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @qla4xxx_build_ddb_list(%struct.scsi_qla_host* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @AF_ONLINE, align 4
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %83, i32 0, i32 1
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %81, %72, %63, %52, %35
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @QLA_ERROR, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %95 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89, i8* %94)
  %96 = call i32 @DEBUG2(i32 %95)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_enable_mbox_intrs(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_about_firmware(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_init_local_data(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_init_firmware(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_build_ddb_list(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
