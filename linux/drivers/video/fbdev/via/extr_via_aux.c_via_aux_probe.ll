; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux.c_via_aux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux.c_via_aux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_aux_bus = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.via_aux_bus* @via_aux_probe(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.via_aux_bus*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.via_aux_bus*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = icmp ne %struct.i2c_adapter* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.via_aux_bus* null, %struct.via_aux_bus** %2, align 8
  br label %40

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.via_aux_bus* @kmalloc(i32 16, i32 %9)
  store %struct.via_aux_bus* %10, %struct.via_aux_bus** %4, align 8
  %11 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %12 = icmp ne %struct.via_aux_bus* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store %struct.via_aux_bus* null, %struct.via_aux_bus** %2, align 8
  br label %40

14:                                               ; preds = %8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %16 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %17 = getelementptr inbounds %struct.via_aux_bus, %struct.via_aux_bus* %16, i32 0, i32 1
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %17, align 8
  %18 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %19 = getelementptr inbounds %struct.via_aux_bus, %struct.via_aux_bus* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %22 = call i32 @via_aux_edid_probe(%struct.via_aux_bus* %21)
  %23 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %24 = call i32 @via_aux_vt1636_probe(%struct.via_aux_bus* %23)
  %25 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %26 = call i32 @via_aux_vt1632_probe(%struct.via_aux_bus* %25)
  %27 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %28 = call i32 @via_aux_vt1631_probe(%struct.via_aux_bus* %27)
  %29 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %30 = call i32 @via_aux_vt1625_probe(%struct.via_aux_bus* %29)
  %31 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %32 = call i32 @via_aux_vt1622_probe(%struct.via_aux_bus* %31)
  %33 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %34 = call i32 @via_aux_vt1621_probe(%struct.via_aux_bus* %33)
  %35 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %36 = call i32 @via_aux_sii164_probe(%struct.via_aux_bus* %35)
  %37 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  %38 = call i32 @via_aux_ch7301_probe(%struct.via_aux_bus* %37)
  %39 = load %struct.via_aux_bus*, %struct.via_aux_bus** %4, align 8
  store %struct.via_aux_bus* %39, %struct.via_aux_bus** %2, align 8
  br label %40

40:                                               ; preds = %14, %13, %7
  %41 = load %struct.via_aux_bus*, %struct.via_aux_bus** %2, align 8
  ret %struct.via_aux_bus* %41
}

declare dso_local %struct.via_aux_bus* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @via_aux_edid_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1636_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1632_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1631_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1625_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1622_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_vt1621_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_sii164_probe(%struct.via_aux_bus*) #1

declare dso_local i32 @via_aux_ch7301_probe(%struct.via_aux_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
