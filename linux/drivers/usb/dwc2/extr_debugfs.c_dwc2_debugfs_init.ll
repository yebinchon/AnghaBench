; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_dwc2_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_dwc2_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.dentry*, %struct.TYPE_3__*, i32, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"params\00", align 1
@params_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"hw_params\00", align 1
@hw_params_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@dr_mode_fops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dwc2_regs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_debugfs_init(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_name(i32 %8)
  %10 = call %struct.dentry* @debugfs_create_dir(i32 %9, i32* null)
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 0
  store %struct.dentry* %11, %struct.dentry** %13, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %14, %struct.dwc2_hsotg* %15, i32* @params_fops)
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %17, %struct.dwc2_hsotg* %18, i32* @hw_params_fops)
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %20, %struct.dwc2_hsotg* %21, i32* @dr_mode_fops)
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %24 = call i32 @dwc2_hsotg_create_debug(%struct.dwc2_hsotg* %23)
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_3__* @devm_kzalloc(i32 %27, i32 12, i32 %28)
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %30, i32 0, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %1
  %40 = load i32, i32* @dwc2_regs, align 4
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @dwc2_regs, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %52 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %60 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @debugfs_create_regset32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %58, %struct.TYPE_3__* %61)
  store i32 0, i32* %2, align 4
  br label %69

63:                                               ; preds = %36
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 0
  %66 = load %struct.dentry*, %struct.dentry** %65, align 8
  %67 = call i32 @debugfs_remove_recursive(%struct.dentry* %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %39
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.dwc2_hsotg*, i32*) #1

declare dso_local i32 @dwc2_hsotg_create_debug(%struct.dwc2_hsotg*) #1

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @debugfs_create_regset32(i8*, i32, %struct.dentry*, %struct.TYPE_3__*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
