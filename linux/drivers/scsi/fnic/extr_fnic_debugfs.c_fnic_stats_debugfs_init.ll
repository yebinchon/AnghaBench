; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@fnic_stats_debugfs_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@fnic_stats_debugfs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"reset_stats\00", align 1
@fnic_reset_debugfs_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_stats_debugfs_init(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %5 = load %struct.fnic*, %struct.fnic** %2, align 8
  %6 = getelementptr inbounds %struct.fnic, %struct.fnic* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snprintf(i8* %4, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %14 = load i32, i32* @fnic_stats_debugfs_root, align 4
  %15 = call i32 @debugfs_create_dir(i8* %13, i32 %14)
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IWUSR, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.fnic*, %struct.fnic** %2, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fnic*, %struct.fnic** %2, align 8
  %27 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, %struct.fnic* %26, i32* @fnic_stats_debugfs_fops)
  %28 = load %struct.fnic*, %struct.fnic** %2, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @S_IFREG, align 4
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IWUSR, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.fnic*, %struct.fnic** %2, align 8
  %36 = getelementptr inbounds %struct.fnic, %struct.fnic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fnic*, %struct.fnic** %2, align 8
  %39 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37, %struct.fnic* %38, i32* @fnic_reset_debugfs_fops)
  %40 = load %struct.fnic*, %struct.fnic** %2, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.fnic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
