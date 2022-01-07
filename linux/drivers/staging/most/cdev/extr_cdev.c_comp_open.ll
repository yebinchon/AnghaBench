; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.comp_channel* }
%struct.comp_channel = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MOST_CH_RX = common dso_local global i64 0, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@MOST_CH_TX = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WARN: Access flags mismatch\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"WARN: Device is destroyed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"WARN: Device is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@comp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @comp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.comp_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.comp_channel* @to_channel(i32 %10)
  store %struct.comp_channel* %11, %struct.comp_channel** %6, align 8
  %12 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  store %struct.comp_channel* %12, %struct.comp_channel** %14, align 8
  %15 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %16 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MOST_CH_RX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_ACCMODE, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %32 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %31, i32 0, i32 6
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MOST_CH_TX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @O_ACCMODE, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38, %22
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %97

50:                                               ; preds = %38, %30
  %51 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %52 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %55 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %61 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %97

65:                                               ; preds = %50
  %66 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %67 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %73 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %65
  %78 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %79 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %81 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %84 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @most_start_channel(i32 %82, i32 %85, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @comp, i32 0, i32 0))
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %91 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %77
  %93 = load %struct.comp_channel*, %struct.comp_channel** %6, align 8
  %94 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %70, %58, %46
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.comp_channel* @to_channel(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @most_start_channel(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
