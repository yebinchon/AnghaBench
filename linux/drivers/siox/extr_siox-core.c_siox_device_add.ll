; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { i8*, i64, i64, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i32, %struct.siox_master*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.siox_master = type { i64, i64, i64, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@siox_bus_type = common dso_local global i32 0, align 4
@siox_device_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"siox-%d-%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to realloc buffer to %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"status_errors\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"watchdog_errors\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siox_device* (%struct.siox_master*, i8*, i64, i64, i32)* @siox_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siox_device* @siox_device_add(%struct.siox_master* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.siox_device*, align 8
  %7 = alloca %struct.siox_master*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.siox_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.siox_master* %0, %struct.siox_master** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.siox_device* @kzalloc(i32 112, i32 %16)
  store %struct.siox_device* %17, %struct.siox_device** %12, align 8
  %18 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %19 = icmp ne %struct.siox_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.siox_device* @ERR_PTR(i32 %22)
  store %struct.siox_device* %23, %struct.siox_device** %6, align 8
  br label %180

24:                                               ; preds = %5
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %27 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %30 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %33 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %36 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %38 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %39 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %38, i32 0, i32 9
  store %struct.siox_master* %37, %struct.siox_master** %39, align 8
  %40 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %41 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %40, i32 0, i32 5
  %42 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %43 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32* %41, i32** %44, align 8
  %45 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %46 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32* @siox_bus_type, i32** %47, align 8
  %48 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %49 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* @siox_device_type, i32** %50, align 8
  %51 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %52 = call i32 @siox_master_lock(%struct.siox_master* %51)
  %53 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %54 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %53, i32 0, i32 3
  %55 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %56 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %59 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_set_name(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %63 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %68 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %14, align 8
  %73 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %74 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %24
  %79 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %80 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32* @krealloc(i32* %81, i64 %82, i32 %83)
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %78
  %88 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %89 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %88, i32 0, i32 5
  %90 = load i64, i64* %14, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %13, align 4
  br label %173

95:                                               ; preds = %78
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %98 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %101 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %100, i32 0, i32 6
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %24
  %103 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %104 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %103, i32 0, i32 3
  %105 = call i32 @device_register(%struct.TYPE_5__* %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %110 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %109, i32 0, i32 5
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %172

113:                                              ; preds = %102
  %114 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %115 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %119 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %118, i32 0, i32 8
  %120 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %121 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %120, i32 0, i32 3
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  %123 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %124 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %127 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %131 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %134 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %138 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @sysfs_get_dirent(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %144 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  %145 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %146 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @sysfs_get_dirent(i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %152 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %154 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @sysfs_get_dirent(i32 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %160 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %162 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @sysfs_get_dirent(i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %167 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %168 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  %169 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %170 = call i32 @siox_master_unlock(%struct.siox_master* %169)
  %171 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  store %struct.siox_device* %171, %struct.siox_device** %6, align 8
  br label %180

172:                                              ; preds = %108
  br label %173

173:                                              ; preds = %172, %87
  %174 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %175 = call i32 @siox_master_unlock(%struct.siox_master* %174)
  %176 = load %struct.siox_device*, %struct.siox_device** %12, align 8
  %177 = call i32 @kfree(%struct.siox_device* %176)
  %178 = load i32, i32* %13, align 4
  %179 = call %struct.siox_device* @ERR_PTR(i32 %178)
  store %struct.siox_device* %179, %struct.siox_device** %6, align 8
  br label %180

180:                                              ; preds = %173, %113, %20
  %181 = load %struct.siox_device*, %struct.siox_device** %6, align 8
  ret %struct.siox_device* %181
}

declare dso_local %struct.siox_device* @kzalloc(i32, i32) #1

declare dso_local %struct.siox_device* @ERR_PTR(i32) #1

declare dso_local i32 @siox_master_lock(%struct.siox_master*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32* @krealloc(i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @sysfs_get_dirent(i32, i8*) #1

declare dso_local i32 @siox_master_unlock(%struct.siox_master*) #1

declare dso_local i32 @kfree(%struct.siox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
