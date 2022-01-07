; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_eprom_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_eprom_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.w1_eprom_data* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.w1_eprom_data = type { i32, i32, i8* }
%struct.nvmem_device = type { i32 }
%struct.nvmem_config = type { i32, i32, i32, i32, i32, %struct.w1_slave*, i32, i32, i32* }

@NVMEM_TYPE_OTP = common dso_local global i32 0, align 4
@w1_nvmem_read = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W1_DS2501_SIZE = common dso_local global i32 0, align 4
@w1_ds2502_read_page = common dso_local global i8* null, align 8
@W1_DS2502_SIZE = common dso_local global i32 0, align 4
@W1_DS2505_SIZE = common dso_local global i32 0, align 4
@w1_ds2505_read_page = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s-%02x-%012llx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%02x-%012llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_eprom_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_eprom_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.w1_eprom_data*, align 8
  %5 = alloca %struct.nvmem_device*, align 8
  %6 = alloca %struct.nvmem_config, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %7 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 2
  store i32 -1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 4
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 5
  %13 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  store %struct.w1_slave* %13, %struct.w1_slave** %12, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 6
  %15 = load i32, i32* @NVMEM_TYPE_OTP, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 7
  %17 = load i32, i32* @w1_nvmem_read, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 8
  %19 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %20 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %19, i32 0, i32 0
  store i32* %20, i32** %18, align 8
  %21 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.w1_eprom_data* @devm_kzalloc(i32* %22, i32 16, i32 %23)
  store %struct.w1_eprom_data* %24, %struct.w1_eprom_data** %4, align 8
  %25 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %26 = icmp ne %struct.w1_eprom_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %1
  %31 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %32 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %33 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %32, i32 0, i32 4
  store %struct.w1_eprom_data* %31, %struct.w1_eprom_data** %33, align 8
  %34 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %35 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %60 [
    i32 131, label %39
    i32 130, label %46
    i32 129, label %46
    i32 128, label %53
  ]

39:                                               ; preds = %30
  %40 = load i32, i32* @W1_DS2501_SIZE, align 4
  %41 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %42 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @w1_ds2502_read_page, align 8
  %44 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %45 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %60

46:                                               ; preds = %30, %30
  %47 = load i32, i32* @W1_DS2502_SIZE, align 4
  %48 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %49 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @w1_ds2502_read_page, align 8
  %51 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %52 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %60

53:                                               ; preds = %30
  %54 = load i32, i32* @W1_DS2505_SIZE, align 4
  %55 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %56 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @w1_ds2505_read_page, align 8
  %58 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %59 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %30, %53, %46, %39
  %61 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %62 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %60
  %70 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %71 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %74 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %81 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %85 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %83, i64 %87)
  br label %102

89:                                               ; preds = %60
  %90 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %91 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %94 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %98 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %92, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %100)
  br label %102

102:                                              ; preds = %89, %69
  %103 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %104 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %4, align 8
  %108 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %112 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %111, i32 0, i32 0
  %113 = call %struct.nvmem_device* @devm_nvmem_register(i32* %112, %struct.nvmem_config* %6)
  store %struct.nvmem_device* %113, %struct.nvmem_device** %5, align 8
  %114 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %115 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %102, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.w1_eprom_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(i32*, %struct.nvmem_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
