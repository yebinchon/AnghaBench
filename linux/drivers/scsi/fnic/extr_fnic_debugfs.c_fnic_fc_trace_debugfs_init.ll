; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_fc_trace_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_fc_trace_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"fc_trace_enable\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@fnic_trace_debugfs_root = common dso_local global i32 0, align 4
@fc_trc_flag = common dso_local global %struct.TYPE_2__* null, align 8
@fnic_trace_ctrl_fops = common dso_local global i32 0, align 4
@fnic_fc_trace_enable = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fc_trace_clear\00", align 1
@fnic_fc_trace_clear = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fc_trace_rdata\00", align 1
@fnic_trace_debugfs_fops = common dso_local global i32 0, align 4
@fnic_fc_rdata_trace_debugfs_file = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"fc_trace\00", align 1
@fnic_fc_trace_debugfs_file = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_fc_trace_debugfs_init() #0 {
  %1 = load i32, i32* @S_IFREG, align 4
  %2 = load i32, i32* @S_IRUGO, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @S_IWUSR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @fnic_trace_debugfs_root, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc_trc_flag, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32* %8, i32* @fnic_trace_ctrl_fops)
  store i8* %9, i8** @fnic_fc_trace_enable, align 8
  %10 = load i32, i32* @S_IFREG, align 4
  %11 = load i32, i32* @S_IRUGO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IWUSR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @fnic_trace_debugfs_root, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc_trc_flag, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15, i32* %17, i32* @fnic_trace_ctrl_fops)
  store i8* %18, i8** @fnic_fc_trace_clear, align 8
  %19 = load i32, i32* @S_IFREG, align 4
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IWUSR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @fnic_trace_debugfs_root, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc_trc_flag, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24, i32* %26, i32* @fnic_trace_debugfs_fops)
  store i8* %27, i8** @fnic_fc_rdata_trace_debugfs_file, align 8
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = load i32, i32* @S_IRUGO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @fnic_trace_debugfs_root, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc_trc_flag, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33, i32* %35, i32* @fnic_trace_debugfs_fops)
  store i8* %36, i8** @fnic_fc_trace_debugfs_file, align 8
  ret void
}

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
