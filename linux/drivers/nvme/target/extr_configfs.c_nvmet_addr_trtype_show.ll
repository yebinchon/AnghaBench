; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trtype_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_trtype_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.config_item = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@nvmet_transport_names = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @nvmet_addr_trtype_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_addr_trtype_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_port*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %8)
  store %struct.nvmet_port* %9, %struct.nvmet_port** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %17 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %37

28:                                               ; preds = %15
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nvmet_transport_names, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
