; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32* }
%struct.gb_sdio_host = type { i32, i32, i64, i32, i32, i32, %struct.mmc_host*, %struct.gbphy_device*, %struct.gb_connection* }

@ENOMEM = common dso_local global i32 0, align 4
@gb_sdio_request_handler = common dso_local global i32 0, align 4
@gb_sdio_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mmc-%s\00", align 1
@gb_sdio_mrq_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_sdio_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca %struct.gb_sdio_host*, align 8
  %9 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %11 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %10, i32 0, i32 0
  %12 = call %struct.mmc_host* @mmc_alloc_host(i32 56, i32* %11)
  store %struct.mmc_host* %12, %struct.mmc_host** %7, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %14 = icmp ne %struct.mmc_host* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %154

18:                                               ; preds = %2
  %19 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %20 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %23 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* @gb_sdio_request_handler, align 4
  %29 = call %struct.gb_connection* @gb_connection_create(i32 %21, i32 %27, i32 %28)
  store %struct.gb_connection* %29, %struct.gb_connection** %6, align 8
  %30 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %31 = call i64 @IS_ERR(%struct.gb_connection* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.gb_connection* %34)
  store i32 %35, i32* %9, align 4
  br label %150

36:                                               ; preds = %18
  %37 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %38 = call %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host* %37)
  store %struct.gb_sdio_host* %38, %struct.gb_sdio_host** %8, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %40 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %41 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %40, i32 0, i32 6
  store %struct.mmc_host* %39, %struct.mmc_host** %41, align 8
  %42 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %43 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %45 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %46 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %45, i32 0, i32 8
  store %struct.gb_connection* %44, %struct.gb_connection** %46, align 8
  %47 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %48 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %49 = call i32 @gb_connection_set_data(%struct.gb_connection* %47, %struct.gb_sdio_host* %48)
  %50 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %51 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %52 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %51, i32 0, i32 7
  store %struct.gbphy_device* %50, %struct.gbphy_device** %52, align 8
  %53 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %54 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %55 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %53, %struct.gb_sdio_host* %54)
  %56 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %57 = call i32 @gb_connection_enable_tx(%struct.gb_connection* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %147

61:                                               ; preds = %36
  %62 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %63 = call i32 @gb_sdio_get_caps(%struct.gb_sdio_host* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %144

67:                                               ; preds = %61
  %68 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %69 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %68, i32 0, i32 5
  store i32* @gb_sdio_ops, i32** %69, align 8
  %70 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %71 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %70, i32 0, i32 6
  %72 = load %struct.mmc_host*, %struct.mmc_host** %71, align 8
  %73 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %76 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %92 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %91, i32 0, i32 5
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %95 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %94, i32 0, i32 4
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %98 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %97, i32 0, i32 0
  %99 = call i32 @dev_name(i32* %98)
  %100 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 %99)
  %101 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %102 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %104 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %67
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %144

110:                                              ; preds = %67
  %111 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %112 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %111, i32 0, i32 3
  %113 = load i32, i32* @gb_sdio_mrq_work, align 4
  %114 = call i32 @INIT_WORK(i32* %112, i32 %113)
  %115 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %116 = call i32 @gb_connection_enable(%struct.gb_connection* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %139

120:                                              ; preds = %110
  %121 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %122 = call i32 @mmc_add_host(%struct.mmc_host* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %139

126:                                              ; preds = %120
  %127 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %128 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %130 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %131 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @_gb_sdio_process_events(%struct.gb_sdio_host* %129, i64 %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %135 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %137 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %154

139:                                              ; preds = %125, %119
  %140 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %8, align 8
  %141 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @destroy_workqueue(i32 %142)
  br label %144

144:                                              ; preds = %139, %107, %66
  %145 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %146 = call i32 @gb_connection_disable(%struct.gb_connection* %145)
  br label %147

147:                                              ; preds = %144, %60
  %148 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %149 = call i32 @gb_connection_destroy(%struct.gb_connection* %148)
  br label %150

150:                                              ; preds = %147, %33
  %151 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %152 = call i32 @mmc_free_host(%struct.mmc_host* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %126, %15
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_sdio_host*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_sdio_host*) #1

declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #1

declare dso_local i32 @gb_sdio_get_caps(%struct.gb_sdio_host*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @_gb_sdio_process_events(%struct.gb_sdio_host*, i64) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
