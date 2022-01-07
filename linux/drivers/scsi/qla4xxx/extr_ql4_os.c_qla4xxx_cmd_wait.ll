; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 }

@WAIT_CMD_TOV = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Wait up to %u seconds for cmds to complete\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4xxx_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_cmd_wait(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = call i64 @is_qla40XX(%struct.scsi_qla_host* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @WAIT_CMD_TOV, align 8
  store i64 %13, i64* %8, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @HZ, align 8
  %24 = mul nsw i64 %22, %23
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = call i32 @DEBUG2(i32 %29)
  br label %31

31:                                               ; preds = %81, %20
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @time_after_eq(i64 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 2
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  store i64 0, i64* %4, align 8
  br label %42

42:                                               ; preds = %64, %37
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %43, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__* %53, i64 %54)
  store %struct.scsi_cmnd* %55, %struct.scsi_cmnd** %6, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = icmp ne %struct.scsi_cmnd* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %60 = call i64 @CMD_SP(%struct.scsi_cmnd* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %67

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %42

67:                                               ; preds = %62, %42
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 2
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %67
  %82 = call i32 @msleep(i32 1000)
  br label %31

83:                                               ; preds = %31
  %84 = load i32, i32* @QLA_ERROR, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
