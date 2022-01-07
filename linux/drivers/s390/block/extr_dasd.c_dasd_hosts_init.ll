; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_hosts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_hosts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.dasd_device = type { %struct.dentry* }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"host_access_list\00", align 1
@dasd_hosts_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.dasd_device*)* @dasd_hosts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_hosts_init(%struct.dentry* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = icmp ne %struct.dentry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IFREG, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %17 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.dentry* %15, %struct.dasd_device* %16, i32* @dasd_hosts_fops)
  store %struct.dentry* %17, %struct.dentry** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @IS_ERR(%struct.dentry* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  store %struct.dentry* %25, %struct.dentry** %27, align 8
  br label %28

28:                                               ; preds = %9, %24, %20, %10
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.dasd_device*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
