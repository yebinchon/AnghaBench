; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_ana_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_ana_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.config_item = type { i32 }
%struct.nvmet_ana_group = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@nvmet_ana_state_names = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid value '%s' for ana_state\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@nvmet_ana_sem = common dso_local global i32 0, align 4
@nvmet_ana_chgcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_ana_group_ana_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_ana_group_ana_state_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_ana_group*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = call %struct.nvmet_ana_group* @to_ana_group(%struct.config_item* %10)
  store %struct.nvmet_ana_group* %11, %struct.nvmet_ana_group** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sysfs_streq(i8* %18, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %37

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %62

37:                                               ; preds = %27
  %38 = call i32 @down_write(i32* @nvmet_ana_sem)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %8, align 8
  %46 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %8, align 8
  %51 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %44, i32* %53, align 4
  %54 = load i32, i32* @nvmet_ana_chgcnt, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @nvmet_ana_chgcnt, align 4
  %56 = call i32 @up_write(i32* @nvmet_ana_sem)
  %57 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %8, align 8
  %58 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @nvmet_port_send_ana_event(%struct.TYPE_4__* %59)
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %37, %32
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local %struct.nvmet_ana_group* @to_ana_group(%struct.config_item*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @sysfs_streq(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nvmet_port_send_ana_event(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
