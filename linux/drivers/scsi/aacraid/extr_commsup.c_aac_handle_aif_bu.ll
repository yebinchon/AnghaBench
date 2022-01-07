; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_handle_aif_bu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_handle_aif_bu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aac_aifcmd = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Backup unit had cache data loss - [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Backup Unit had cache data loss\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"DDR cache data recovered successfully - [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"DDR cache data recovered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, %struct.aac_aifcmd*)* @aac_handle_aif_bu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_handle_aif_bu(%struct.aac_dev* %0, %struct.aac_aifcmd* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_aifcmd*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store %struct.aac_aifcmd* %1, %struct.aac_aifcmd** %4, align 8
  %5 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %4, align 8
  %6 = call i32 @aac_aif_data(%struct.aac_aifcmd* %5, i32 1)
  switch i32 %6, label %45 [
    i32 129, label %7
    i32 128, label %26
  ]

7:                                                ; preds = %2
  %8 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %4, align 8
  %9 = call i32 @aac_aif_data(%struct.aac_aifcmd* %8, i32 2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %13 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %4, align 8
  %17 = call i32 @aac_aif_data(%struct.aac_aifcmd* %16, i32 2)
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %25

19:                                               ; preds = %7
  %20 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_info(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %11
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %4, align 8
  %28 = call i32 @aac_aif_data(%struct.aac_aifcmd* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %32 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.aac_aifcmd*, %struct.aac_aifcmd** %4, align 8
  %36 = call i32 @aac_aif_data(%struct.aac_aifcmd* %35, i32 2)
  %37 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %44

38:                                               ; preds = %26
  %39 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_info(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %2, %44, %25
  ret void
}

declare dso_local i32 @aac_aif_data(%struct.aac_aifcmd*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
