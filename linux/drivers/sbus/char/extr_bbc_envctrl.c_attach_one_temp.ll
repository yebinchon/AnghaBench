; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bbc_i2c_bus = type { i32 }
%struct.platform_device = type { i32 }
%struct.bbc_cpu_temperature = type { i32, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@all_temps = common dso_local global i32 0, align 4
@MAX1617_WR_CFG_BYTE = common dso_local global i32 0, align 4
@MAX1617_WR_CVRATE_BYTE = common dso_local global i32 0, align 4
@amb_temp_limits = common dso_local global %struct.TYPE_4__* null, align 8
@MAX1617_WR_AMB_HIGHLIM = common dso_local global i32 0, align 4
@MAX1617_WR_AMB_LOWLIM = common dso_local global i32 0, align 4
@cpu_temp_limits = common dso_local global %struct.TYPE_3__* null, align 8
@MAX1617_WR_CPU_HIGHLIM = common dso_local global i32 0, align 4
@MAX1617_WR_CPU_LOWLIM = common dso_local global i32 0, align 4
@FAN_SAME = common dso_local global i8* null, align 8
@FAN_AMBIENT = common dso_local global i64 0, align 8
@FAN_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_i2c_bus*, %struct.platform_device*, i32)* @attach_one_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_one_temp(%struct.bbc_i2c_bus* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_cpu_temperature*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bbc_cpu_temperature* @kzalloc(i32 56, i32 %8)
  store %struct.bbc_cpu_temperature* %9, %struct.bbc_cpu_temperature** %7, align 8
  %10 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %11 = icmp ne %struct.bbc_cpu_temperature* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %134

13:                                               ; preds = %3
  %14 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %15 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %14, i32 0, i32 9
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %17, i32 0, i32 10
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = call i32 @bbc_i2c_attach(%struct.bbc_i2c_bus* %20, %struct.platform_device* %21)
  %23 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %24 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %26 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %31 = call i32 @kfree(%struct.bbc_cpu_temperature* %30)
  br label %134

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %35 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %37 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %36, i32 0, i32 10
  %38 = call i32 @list_add(i32* %37, i32* @all_temps)
  %39 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %40 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %39, i32 0, i32 9
  %41 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %42 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %45 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MAX1617_WR_CFG_BYTE, align 4
  %48 = call i32 @bbc_i2c_writeb(i32 %46, i32 0, i32 %47)
  %49 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %50 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAX1617_WR_CVRATE_BYTE, align 4
  %53 = call i32 @bbc_i2c_writeb(i32 %51, i32 2, i32 %52)
  %54 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %55 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amb_temp_limits, align 8
  %58 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %59 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAX1617_WR_AMB_HIGHLIM, align 4
  %66 = call i32 @bbc_i2c_writeb(i32 %56, i32 %64, i32 %65)
  %67 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %68 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amb_temp_limits, align 8
  %71 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %72 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MAX1617_WR_AMB_LOWLIM, align 4
  %79 = call i32 @bbc_i2c_writeb(i32 %69, i32 %77, i32 %78)
  %80 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %81 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_temp_limits, align 8
  %84 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %85 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MAX1617_WR_CPU_HIGHLIM, align 4
  %92 = call i32 @bbc_i2c_writeb(i32 %82, i32 %90, i32 %91)
  %93 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %94 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_temp_limits, align 8
  %97 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %98 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MAX1617_WR_CPU_LOWLIM, align 4
  %105 = call i32 @bbc_i2c_writeb(i32 %95, i32 %103, i32 %104)
  %106 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %107 = call i32 @get_current_temps(%struct.bbc_cpu_temperature* %106)
  %108 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %109 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %112 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %114 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %113, i32 0, i32 7
  store i32 %110, i32* %114, align 4
  %115 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %116 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %119 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %121 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %120, i32 0, i32 4
  store i32 %117, i32* %121, align 8
  %122 = load i8*, i8** @FAN_SAME, align 8
  %123 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %124 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* @FAN_AMBIENT, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8* %122, i8** %127, align 8
  %128 = load i8*, i8** @FAN_SAME, align 8
  %129 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %130 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = load i64, i64* @FAN_CPU, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  store i8* %128, i8** %133, align 8
  br label %134

134:                                              ; preds = %32, %29, %12
  ret void
}

declare dso_local %struct.bbc_cpu_temperature* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bbc_i2c_attach(%struct.bbc_i2c_bus*, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.bbc_cpu_temperature*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @bbc_i2c_writeb(i32, i32, i32) #1

declare dso_local i32 @get_current_temps(%struct.bbc_cpu_temperature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
