; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_setup_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_setup_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pmcraid_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pmcraid_major = common dso_local global i32 0, align 4
@pmcraid_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@PMCRAID_DEVFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_setup_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_setup_chrdev(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %5 = call i32 (...) @pmcraid_get_minor()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %6, i32 0, i32 0
  %8 = call i32 @cdev_init(%struct.TYPE_3__* %7, i32* @pmcraid_fops)
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %14 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %13, i32 0, i32 0
  %15 = load i32, i32* @pmcraid_major, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @MKDEV(i32 %15, i32 %16)
  %18 = call i32 @cdev_add(%struct.TYPE_3__* %14, i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pmcraid_release_minor(i32 %22)
  br label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @pmcraid_class, align 4
  %26 = load i32, i32* @pmcraid_major, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @MKDEV(i32 %26, i32 %27)
  %29 = load i32, i32* @PMCRAID_DEVFILE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_create(i32 %25, i32* null, i32 %28, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @pmcraid_get_minor(...) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @pmcraid_release_minor(i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
