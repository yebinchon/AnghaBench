; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.reserved_mem = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to acquire memory region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@cmd_db_header = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid Command DB Magic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cmd_db_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_db_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.reserved_mem*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.reserved_mem* @of_reserved_mem_lookup(i32 %9)
  store %struct.reserved_mem* %10, %struct.reserved_mem** %4, align 8
  %11 = load %struct.reserved_mem*, %struct.reserved_mem** %4, align 8
  %12 = icmp ne %struct.reserved_mem* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_2__* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.reserved_mem*, %struct.reserved_mem** %4, align 8
  %21 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.reserved_mem*, %struct.reserved_mem** %4, align 8
  %24 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MEMREMAP_WB, align 4
  %27 = call i32* @memremap(i32 %22, i32 %25, i32 %26)
  store i32* %27, i32** @cmd_db_header, align 8
  %28 = load i32*, i32** @cmd_db_header, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  store i32* null, i32** @cmd_db_header, align 8
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %19
  %35 = load i32*, i32** @cmd_db_header, align 8
  %36 = call i32 @cmd_db_magic_matches(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38, %30, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.reserved_mem* @of_reserved_mem_lookup(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32* @memremap(i32, i32, i32) #1

declare dso_local i32 @cmd_db_magic_matches(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
