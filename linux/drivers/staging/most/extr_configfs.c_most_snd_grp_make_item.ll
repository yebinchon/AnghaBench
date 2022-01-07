; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_snd_grp_make_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_snd_grp_make_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { i32 }
%struct.mdev_link = type { %struct.config_item, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdev_link_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @most_snd_grp_make_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @most_snd_grp_make_item(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mdev_link*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mdev_link* @kzalloc(i32 24, i32 %7)
  store %struct.mdev_link* %8, %struct.mdev_link** %6, align 8
  %9 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %10 = icmp ne %struct.mdev_link* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_item* @ERR_PTR(i32 %13)
  store %struct.config_item* %14, %struct.config_item** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %17 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @config_item_init_type_name(%struct.config_item* %17, i8* %18, i32* @mdev_link_type)
  %20 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %21 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %23 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcpy(i32 %24, i8* %25)
  %27 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %28 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mdev_link*, %struct.mdev_link** %6, align 8
  %32 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %31, i32 0, i32 0
  store %struct.config_item* %32, %struct.config_item** %3, align 8
  br label %33

33:                                               ; preds = %15, %11
  %34 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %34
}

declare dso_local %struct.mdev_link* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
