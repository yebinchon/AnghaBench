; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_debugfs.c_snic_stats_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_debugfs.c_snic_stats_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snic = type { i32, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@snic_glob = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@snic_stats_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"reset_stats\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@snic_reset_stats_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_stats_debugfs_init(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.snic* %0, %struct.snic** %2, align 8
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %5 = load %struct.snic*, %struct.snic** %2, align 8
  %6 = getelementptr inbounds %struct.snic, %struct.snic* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snprintf(i8* %4, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @debugfs_create_dir(i8* %11, i32 %14)
  %16 = load %struct.snic*, %struct.snic** %2, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.snic*, %struct.snic** %2, align 8
  %22 = getelementptr inbounds %struct.snic, %struct.snic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snic*, %struct.snic** %2, align 8
  %25 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, %struct.snic* %24, i32* @snic_stats_fops)
  %26 = load %struct.snic*, %struct.snic** %2, align 8
  %27 = getelementptr inbounds %struct.snic, %struct.snic* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = load i32, i32* @S_IRUGO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.snic*, %struct.snic** %2, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snic*, %struct.snic** %2, align 8
  %37 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35, %struct.snic* %36, i32* @snic_reset_stats_fops)
  %38 = load %struct.snic*, %struct.snic** %2, align 8
  %39 = getelementptr inbounds %struct.snic, %struct.snic* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.snic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
