; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, i32, %struct.w1_f19_data* }
%struct.w1_f19_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__, i32, %struct.w1_slave*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2c_speed = common dso_local global i32 0, align 4
@i2c_stretch = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@w1_f19_i2c_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"w1-\00", align 1
@w1_f19_i2c_adapter_quirks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_f19_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f19_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.w1_f19_data*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  store %struct.w1_f19_data* null, %struct.w1_f19_data** %4, align 8
  %5 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %6 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.w1_f19_data* @devm_kzalloc(i32* %6, i32 64, i32 %7)
  store %struct.w1_f19_data* %8, %struct.w1_f19_data** %4, align 8
  %9 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %10 = icmp ne %struct.w1_f19_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %16 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %17 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %16, i32 0, i32 2
  store %struct.w1_f19_data* %15, %struct.w1_f19_data** %17, align 8
  %18 = load i32, i32* @i2c_speed, align 4
  switch i32 %18, label %28 [
    i32 100, label %19
    i32 400, label %22
    i32 900, label %25
  ]

19:                                               ; preds = %14
  %20 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %21 = call i32 @__w1_f19_set_i2c_speed(%struct.w1_slave* %20, i32 0)
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %24 = call i32 @__w1_f19_set_i2c_speed(%struct.w1_slave* %23, i32 1)
  br label %31

25:                                               ; preds = %14
  %26 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %27 = call i32 @__w1_f19_set_i2c_speed(%struct.w1_slave* %26, i32 2)
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %30 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25, %22, %19
  %32 = load i32, i32* @i2c_stretch, align 4
  %33 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %34 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %37 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 8
  %39 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %40 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32* @w1_f19_i2c_algorithm, i32** %41, align 8
  %42 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %43 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %44 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store %struct.w1_slave* %42, %struct.w1_slave** %45, align 8
  %46 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %47 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %52 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %56 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcat(i32 %54, i32 %57)
  %59 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %60 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %59, i32 0, i32 0
  %61 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %62 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32* %60, i32** %64, align 8
  %65 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %66 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* @w1_f19_i2c_adapter_quirks, i32** %67, align 8
  %68 = load %struct.w1_f19_data*, %struct.w1_f19_data** %4, align 8
  %69 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %68, i32 0, i32 1
  %70 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %31, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.w1_f19_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @__w1_f19_set_i2c_speed(%struct.w1_slave*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
