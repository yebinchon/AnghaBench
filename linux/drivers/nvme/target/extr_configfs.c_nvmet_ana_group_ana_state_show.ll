; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_ana_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_group_ana_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.config_item = type { i32 }
%struct.nvmet_ana_group = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@nvmet_ana_state_names = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @nvmet_ana_group_ana_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_ana_group_ana_state_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_ana_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.config_item*, %struct.config_item** %4, align 8
  %10 = call %struct.nvmet_ana_group* @to_ana_group(%struct.config_item* %9)
  store %struct.nvmet_ana_group* %10, %struct.nvmet_ana_group** %6, align 8
  %11 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %6, align 8
  %12 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %6, align 8
  %17 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %45, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %45

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_ana_state_names, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.nvmet_ana_group* @to_ana_group(%struct.config_item*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
