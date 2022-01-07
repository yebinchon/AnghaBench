; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_copy_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_copy_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tcpc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, %struct.tcpc_config*)* @tcpm_copy_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_copy_caps(%struct.tcpm_port* %0, %struct.tcpc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca %struct.tcpc_config*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store %struct.tcpc_config* %1, %struct.tcpc_config** %5, align 8
  %6 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %7 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %8 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %11 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @tcpm_validate_caps(%struct.tcpm_port* %6, i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %17 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %18 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %21 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @tcpm_validate_caps(%struct.tcpm_port* %16, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %15
  %29 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %30 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %33 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %36 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @tcpm_copy_pdos(i32 %31, i32 %34, i32 %37)
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %45 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %48 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @tcpm_copy_pdos(i32 %43, i32 %46, i32 %49)
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %52 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %54 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %57 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %60 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tcpm_copy_vdos(i32 %55, i32 %58, i32 %61)
  %63 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %64 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %66 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %69 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %71 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %74 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %77 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %80 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %83 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.tcpc_config*, %struct.tcpc_config** %5, align 8
  %89 = getelementptr inbounds %struct.tcpc_config, %struct.tcpc_config* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %92 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %28, %25
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @tcpm_validate_caps(%struct.tcpm_port*, i32, i32) #1

declare dso_local i8* @tcpm_copy_pdos(i32, i32, i32) #1

declare dso_local i32 @tcpm_copy_vdos(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
