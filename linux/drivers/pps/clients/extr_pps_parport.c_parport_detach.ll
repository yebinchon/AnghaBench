; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__*, %struct.pardevice* }
%struct.TYPE_2__ = type { i32 (%struct.parport*)* }
%struct.pardevice = type { %struct.pps_client_pp*, i32 }
%struct.pps_client_pp = type { i32, i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@pps_client_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @parport_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.pps_client_pp*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = getelementptr inbounds %struct.parport, %struct.parport* %5, i32 0, i32 1
  %7 = load %struct.pardevice*, %struct.pardevice** %6, align 8
  store %struct.pardevice* %7, %struct.pardevice** %3, align 8
  %8 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %9 = icmp ne %struct.pardevice* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %12 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KBUILD_MODNAME, align 4
  %15 = call i64 @strcmp(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %43

18:                                               ; preds = %10
  %19 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %20 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %19, i32 0, i32 0
  %21 = load %struct.pps_client_pp*, %struct.pps_client_pp** %20, align 8
  store %struct.pps_client_pp* %21, %struct.pps_client_pp** %4, align 8
  %22 = load %struct.parport*, %struct.parport** %2, align 8
  %23 = getelementptr inbounds %struct.parport, %struct.parport* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %25, align 8
  %27 = load %struct.parport*, %struct.parport** %2, align 8
  %28 = call i32 %26(%struct.parport* %27)
  %29 = load %struct.pps_client_pp*, %struct.pps_client_pp** %4, align 8
  %30 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pps_unregister_source(i32 %31)
  %33 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %34 = call i32 @parport_release(%struct.pardevice* %33)
  %35 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %36 = call i32 @parport_unregister_device(%struct.pardevice* %35)
  %37 = load %struct.pps_client_pp*, %struct.pps_client_pp** %4, align 8
  %38 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ida_simple_remove(i32* @pps_client_index, i32 %39)
  %41 = load %struct.pps_client_pp*, %struct.pps_client_pp** %4, align 8
  %42 = call i32 @kfree(%struct.pps_client_pp* %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pps_unregister_source(i32) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.pps_client_pp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
