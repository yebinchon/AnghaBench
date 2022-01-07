; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.parport*)* }
%struct.pardev_cb = type { i32, i32, %struct.pps_client_pp* }
%struct.pps_client_pp = type { i32, i32, i32, i32 }
%struct.pps_source_info = type { i8*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@PPS_OFFSETASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETCLEAR = common dso_local global i32 0, align 4
@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@PPS_ECHOCLEAR = common dso_local global i32 0, align 4
@PPS_CANWAIT = common dso_local global i32 0, align 4
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"memory allocation failed, not attaching\0A\00", align 1
@pps_client_index = common dso_local global i32 0, align 4
@parport_irq = common dso_local global i32 0, align 4
@PARPORT_FLAG_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't register with %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"couldn't claim %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"couldn't register PPS source\0A\00", align 1
@clear_wait = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"attached to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @parport_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardev_cb, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pps_client_pp*, align 8
  %6 = alloca %struct.pps_source_info, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %7 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %6, i32 0, i32 1
  %9 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %10 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PPS_ECHOASSERT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PPS_ECHOCLEAR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PPS_CANWAIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 8
  %22 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %6, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %6, i32 0, i32 3
  %24 = load i32, i32* @THIS_MODULE, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %6, i32 0, i32 4
  %26 = load i32, i32* @KBUILD_MODNAME, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.pps_client_pp* @kzalloc(i32 16, i32 %27)
  store %struct.pps_client_pp* %28, %struct.pps_client_pp** %5, align 8
  %29 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %30 = icmp ne %struct.pps_client_pp* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %118

33:                                               ; preds = %1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @ida_simple_get(i32* @pps_client_index, i32 0, i32 0, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = call i32 @memset(%struct.pardev_cb* %3, i32 0, i32 16)
  %37 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %38 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 2
  store %struct.pps_client_pp* %37, %struct.pps_client_pp** %38, align 8
  %39 = load i32, i32* @parport_irq, align 4
  %40 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @PARPORT_FLAG_EXCL, align 4
  %42 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.parport*, %struct.parport** %2, align 8
  %44 = load i32, i32* @KBUILD_MODNAME, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @parport_register_dev_model(%struct.parport* %43, i32 %44, %struct.pardev_cb* %3, i32 %45)
  %47 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %48 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %50 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %33
  %54 = load %struct.parport*, %struct.parport** %2, align 8
  %55 = getelementptr inbounds %struct.parport, %struct.parport* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %113

58:                                               ; preds = %33
  %59 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %60 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @parport_claim_or_block(i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.parport*, %struct.parport** %2, align 8
  %66 = getelementptr inbounds %struct.parport, %struct.parport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %108

69:                                               ; preds = %58
  %70 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %71 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @pps_register_source(%struct.pps_source_info* %6, i32 %74)
  %76 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %77 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %79 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %103

85:                                               ; preds = %69
  %86 = load i32, i32* @clear_wait, align 4
  %87 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %88 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.parport*, %struct.parport** %2, align 8
  %90 = getelementptr inbounds %struct.parport, %struct.parport* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %92, align 8
  %94 = load %struct.parport*, %struct.parport** %2, align 8
  %95 = call i32 %93(%struct.parport* %94)
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %98 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.parport*, %struct.parport** %2, align 8
  %100 = getelementptr inbounds %struct.parport, %struct.parport* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %118

103:                                              ; preds = %83
  %104 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %105 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @parport_release(i32 %106)
  br label %108

108:                                              ; preds = %103, %64
  %109 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %110 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @parport_unregister_device(i32 %111)
  br label %113

113:                                              ; preds = %108, %53
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @ida_simple_remove(i32* @pps_client_index, i32 %114)
  %116 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %117 = call i32 @kfree(%struct.pps_client_pp* %116)
  br label %118

118:                                              ; preds = %113, %85, %31
  ret void
}

declare dso_local %struct.pps_client_pp* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local i32 @parport_register_dev_model(%struct.parport*, i32, %struct.pardev_cb*, i32) #1

declare dso_local i64 @parport_claim_or_block(i32) #1

declare dso_local i32 @pps_register_source(%struct.pps_source_info*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.pps_client_pp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
