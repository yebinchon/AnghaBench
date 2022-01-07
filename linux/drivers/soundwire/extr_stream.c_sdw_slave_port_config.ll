; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_slave_port_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_slave_port_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { i32 }
%struct.sdw_slave_runtime = type { i32 }
%struct.sdw_port_config = type { i32 }
%struct.sdw_port_runtime = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*, %struct.sdw_slave_runtime*, %struct.sdw_port_config*, i32)* @sdw_slave_port_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_slave_port_config(%struct.sdw_slave* %0, %struct.sdw_slave_runtime* %1, %struct.sdw_port_config* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_slave*, align 8
  %7 = alloca %struct.sdw_slave_runtime*, align 8
  %8 = alloca %struct.sdw_port_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_port_runtime*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %6, align 8
  store %struct.sdw_slave_runtime* %1, %struct.sdw_slave_runtime** %7, align 8
  store %struct.sdw_port_config* %2, %struct.sdw_port_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %19 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %18, i32 0, i32 0
  %20 = load %struct.sdw_port_config*, %struct.sdw_port_config** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.sdw_port_runtime* @sdw_port_alloc(i32* %19, %struct.sdw_port_config* %20, i32 %21)
  store %struct.sdw_port_runtime* %22, %struct.sdw_port_runtime** %10, align 8
  %23 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %10, align 8
  %24 = icmp ne %struct.sdw_port_runtime* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %30 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %29, i32 0, i32 0
  %31 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %10, align 8
  %32 = call i32 @sdw_is_valid_port_range(i32* %30, %struct.sdw_port_runtime* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %10, align 8
  %37 = call i32 @kfree(%struct.sdw_port_runtime* %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %28
  %40 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %10, align 8
  %41 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %40, i32 0, i32 0
  %42 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %43 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %13

48:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %35, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.sdw_port_runtime* @sdw_port_alloc(i32*, %struct.sdw_port_config*, i32) #1

declare dso_local i32 @sdw_is_valid_port_range(i32*, %struct.sdw_port_runtime*) #1

declare dso_local i32 @kfree(%struct.sdw_port_runtime*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
