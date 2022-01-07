; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_proc.c_dasd_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_proc.c_dasd_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dasd\00", align 1
@dasd_proc_root_entry = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@dasd_devices_seq_ops = common dso_local global i32 0, align 4
@dasd_devices_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dasd_stats_proc_fops = common dso_local global i32 0, align 4
@dasd_statistics_entry = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %2, i32** @dasd_proc_root_entry, align 8
  %3 = load i32*, i32** @dasd_proc_root_entry, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %29

6:                                                ; preds = %0
  %7 = load i32*, i32** @dasd_proc_root_entry, align 8
  %8 = call i32 @proc_create_seq(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 292, i32* %7, i32* @dasd_devices_seq_ops)
  store i32 %8, i32* @dasd_devices_entry, align 4
  %9 = load i32, i32* @dasd_devices_entry, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %27

12:                                               ; preds = %6
  %13 = load i32, i32* @S_IFREG, align 4
  %14 = load i32, i32* @S_IRUGO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IWUSR, align 4
  %17 = or i32 %15, %16
  %18 = load i32*, i32** @dasd_proc_root_entry, align 8
  %19 = call i32 @proc_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32* %18, i32* @dasd_stats_proc_fops)
  store i32 %19, i32* @dasd_statistics_entry, align 4
  %20 = load i32, i32* @dasd_statistics_entry, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %32

24:                                               ; preds = %22
  %25 = load i32*, i32** @dasd_proc_root_entry, align 8
  %26 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  br label %27

27:                                               ; preds = %24, %11
  %28 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32* @proc_mkdir(i8*, i32*) #1

declare dso_local i32 @proc_create_seq(i8*, i32, i32*, i32*) #1

declare dso_local i32 @proc_create(i8*, i32, i32*, i32*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
