; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntbm_msi_setup_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntbm_msi_setup_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.msi_desc = type { %struct.ntb_msi_devres*, i32 }
%struct.ntb_msi_devres = type { %struct.msi_desc*, %struct.ntb_msi_desc*, %struct.ntb_dev* }
%struct.ntb_msi_desc = type { i32 }

@ntbm_msi_callback_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ntb_msi_write_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, %struct.msi_desc*, %struct.ntb_msi_desc*)* @ntbm_msi_setup_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntbm_msi_setup_callback(%struct.ntb_dev* %0, %struct.msi_desc* %1, %struct.ntb_msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca %struct.msi_desc*, align 8
  %7 = alloca %struct.ntb_msi_desc*, align 8
  %8 = alloca %struct.ntb_msi_devres*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %6, align 8
  store %struct.ntb_msi_desc* %2, %struct.ntb_msi_desc** %7, align 8
  %9 = load i32, i32* @ntbm_msi_callback_release, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ntb_msi_devres* @devres_alloc(i32 %9, i32 24, i32 %10)
  store %struct.ntb_msi_devres* %11, %struct.ntb_msi_devres** %8, align 8
  %12 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %13 = icmp ne %struct.ntb_msi_devres* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %19 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %20 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %19, i32 0, i32 2
  store %struct.ntb_dev* %18, %struct.ntb_dev** %20, align 8
  %21 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %22 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %23 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %22, i32 0, i32 0
  store %struct.msi_desc* %21, %struct.msi_desc** %23, align 8
  %24 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %7, align 8
  %25 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %26 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %25, i32 0, i32 1
  store %struct.ntb_msi_desc* %24, %struct.ntb_msi_desc** %26, align 8
  %27 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %28 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %27, i32 0, i32 0
  %29 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %30 = call i32 @devres_add(i32* %28, %struct.ntb_msi_devres* %29)
  %31 = load i32, i32* @ntb_msi_write_msg, align 4
  %32 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %33 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %32, i32 0, i32 0
  %34 = load %struct.msi_desc*, %struct.msi_desc** %33, align 8
  %35 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %37 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %38 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %37, i32 0, i32 0
  %39 = load %struct.msi_desc*, %struct.msi_desc** %38, align 8
  %40 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %39, i32 0, i32 0
  store %struct.ntb_msi_devres* %36, %struct.ntb_msi_devres** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ntb_msi_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @devres_add(i32*, %struct.ntb_msi_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
