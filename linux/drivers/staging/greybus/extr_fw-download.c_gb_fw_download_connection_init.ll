; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_gb_fw_download_connection_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_gb_fw_download_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_download = type { i32, i32, %struct.gb_connection*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_fw_download_connection_init(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.fw_download*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %6 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %7 = icmp ne %struct.gb_connection* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fw_download* @kzalloc(i32 32, i32 %10)
  store %struct.fw_download* %11, %struct.fw_download** %4, align 8
  %12 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %13 = icmp ne %struct.fw_download* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %9
  %18 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %19 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %23 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  %24 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %25 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %28 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %27, i32 0, i32 0
  %29 = call i32 @ida_init(i32* %28)
  %30 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %31 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %32 = call i32 @gb_connection_set_data(%struct.gb_connection* %30, %struct.fw_download* %31)
  %33 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %34 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %35 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %34, i32 0, i32 2
  store %struct.gb_connection* %33, %struct.gb_connection** %35, align 8
  %36 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %37 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %40 = call i32 @gb_connection_enable(%struct.gb_connection* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %17
  br label %45

44:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %43
  %46 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %47 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %46, i32 0, i32 0
  %48 = call i32 @ida_destroy(i32* %47)
  %49 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %50 = call i32 @kfree(%struct.fw_download* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %44, %14, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.fw_download* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.fw_download*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fw_download*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
