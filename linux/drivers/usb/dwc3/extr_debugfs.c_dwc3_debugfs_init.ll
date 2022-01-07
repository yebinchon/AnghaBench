; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_3__*, %struct.dentry*, i32, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DWC3_LSP_MUX_UNSELECTED = common dso_local global i32 0, align 4
@dwc3_regs = common dso_local global i32 0, align 4
@DWC3_GLOBALS_REGS_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"lsp_dump\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@dwc3_lsp_fops = common dso_local global i32 0, align 4
@CONFIG_USB_DWC3_DUAL_ROLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@dwc3_mode_fops = common dso_local global i32 0, align 4
@CONFIG_USB_DWC3_GADGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@dwc3_testmode_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"link_state\00", align 1
@dwc3_link_state_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_debugfs_init(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_3__* @kzalloc(i32 16, i32 %4)
  %6 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 0
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %7, align 8
  %8 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %91

13:                                               ; preds = %1
  %14 = load i32, i32* @DWC3_LSP_MUX_UNSELECTED, align 4
  %15 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @dwc3_regs, align 4
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @dwc3_regs, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DWC3_GLOBALS_REGS_START, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_name(i32 %39)
  %41 = call %struct.dentry* @debugfs_create_dir(i32 %40, i32* null)
  store %struct.dentry* %41, %struct.dentry** %3, align 8
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 1
  store %struct.dentry* %42, %struct.dentry** %44, align 8
  %45 = load i32, i32* @S_IRUGO, align 4
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @debugfs_create_regset32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %45, %struct.dentry* %46, %struct.TYPE_3__* %49)
  %51 = load i32, i32* @S_IRUGO, align 4
  %52 = load i32, i32* @S_IWUSR, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %56 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53, %struct.dentry* %54, %struct.dwc3* %55, i32* @dwc3_lsp_fops)
  %57 = load i32, i32* @CONFIG_USB_DWC3_DUAL_ROLE, align 4
  %58 = call i64 @IS_ENABLED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %13
  %61 = load i32, i32* @S_IRUGO, align 4
  %62 = load i32, i32* @S_IWUSR, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.dentry*, %struct.dentry** %3, align 8
  %65 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %66 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %63, %struct.dentry* %64, %struct.dwc3* %65, i32* @dwc3_mode_fops)
  br label %67

67:                                               ; preds = %60, %13
  %68 = load i32, i32* @CONFIG_USB_DWC3_DUAL_ROLE, align 4
  %69 = call i64 @IS_ENABLED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @CONFIG_USB_DWC3_GADGET, align 4
  %73 = call i64 @IS_ENABLED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @S_IRUGO, align 4
  %77 = load i32, i32* @S_IWUSR, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.dentry*, %struct.dentry** %3, align 8
  %80 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %81 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %78, %struct.dentry* %79, %struct.dwc3* %80, i32* @dwc3_testmode_fops)
  %82 = load i32, i32* @S_IRUGO, align 4
  %83 = load i32, i32* @S_IWUSR, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.dentry*, %struct.dentry** %3, align 8
  %86 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %87 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %84, %struct.dentry* %85, %struct.dwc3* %86, i32* @dwc3_link_state_fops)
  %88 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %89 = load %struct.dentry*, %struct.dentry** %3, align 8
  %90 = call i32 @dwc3_debugfs_create_endpoint_dirs(%struct.dwc3* %88, %struct.dentry* %89)
  br label %91

91:                                               ; preds = %12, %75, %71
  ret void
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @debugfs_create_regset32(i8*, i32, %struct.dentry*, %struct.TYPE_3__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.dwc3*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dwc3_debugfs_create_endpoint_dirs(%struct.dwc3*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
