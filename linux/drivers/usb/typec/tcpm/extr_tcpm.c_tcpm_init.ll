; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, i32*, i32*)*, i64 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)* }

@PORT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @tcpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_init(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %8, align 8
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 %9(%struct.TYPE_4__* %12)
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = call i32 @tcpm_reset_port(%struct.tcpm_port* %14)
  %16 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %17 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %19, align 8
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i64 %20(%struct.TYPE_4__* %23)
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %33 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %37 = call i32 @tcpm_default_state(%struct.tcpm_port* %36)
  %38 = call i32 @tcpm_set_state(%struct.tcpm_port* %35, i32 %37, i32 0)
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_4__*, i32*, i32*)*, i64 (%struct.TYPE_4__*, i32*, i32*)** %42, align 8
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %45 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i64 %43(%struct.TYPE_4__* %46, i32* %3, i32* %4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @_tcpm_cc_change(%struct.tcpm_port* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %34
  %55 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %56 = load i32, i32* @PORT_RESET, align 4
  %57 = call i32 @tcpm_set_state(%struct.tcpm_port* %55, i32 %56, i32 0)
  ret void
}

declare dso_local i32 @tcpm_reset_port(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_default_state(%struct.tcpm_port*) #1

declare dso_local i32 @_tcpm_cc_change(%struct.tcpm_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
