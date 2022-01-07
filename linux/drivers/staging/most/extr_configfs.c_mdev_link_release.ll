; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.mdev_link = type { i32, i32, i32, i32 }

@mdev_link_list = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Removing link failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @mdev_link_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdev_link_release(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.mdev_link*, align 8
  %4 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %5 = load %struct.config_item*, %struct.config_item** %2, align 8
  %6 = call %struct.mdev_link* @to_mdev_link(%struct.config_item* %5)
  store %struct.mdev_link* %6, %struct.mdev_link** %3, align 8
  %7 = call i32 @list_empty(i32* @mdev_link_list)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = load %struct.mdev_link*, %struct.mdev_link** %3, align 8
  %11 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mdev_link*, %struct.mdev_link** %3, align 8
  %14 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mdev_link*, %struct.mdev_link** %3, align 8
  %17 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @most_remove_link(i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22, %9
  %30 = load %struct.mdev_link*, %struct.mdev_link** %3, align 8
  %31 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %30, i32 0, i32 0
  %32 = call i32 @list_del(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.config_item*, %struct.config_item** %2, align 8
  %35 = call %struct.mdev_link* @to_mdev_link(%struct.config_item* %34)
  %36 = call i32 @kfree(%struct.mdev_link* %35)
  ret void
}

declare dso_local %struct.mdev_link* @to_mdev_link(%struct.config_item*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @most_remove_link(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mdev_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
