; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_pci.c_isst_if_mbox_proc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_pci.c_isst_if_mbox_proc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_mbox_cmd = type { i32, i32, i32, i32, i32 }
%struct.isst_if_device = type { i32 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @isst_if_mbox_proc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isst_if_mbox_proc_cmd(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_if_mbox_cmd*, align 8
  %9 = alloca %struct.isst_if_device*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.isst_if_mbox_cmd*
  store %struct.isst_if_mbox_cmd* %13, %struct.isst_if_mbox_cmd** %8, align 8
  %14 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %15 = call i64 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %22 = call i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @EPERM, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %93

31:                                               ; preds = %24, %20
  %32 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %33 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.pci_dev* @isst_if_get_pci_dev(i32 %34, i32 1, i32 30, i32 1)
  store %struct.pci_dev* %35, %struct.pci_dev** %10, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %93

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %43 = call %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev* %42)
  store %struct.isst_if_device* %43, %struct.isst_if_device** %9, align 8
  %44 = load %struct.isst_if_device*, %struct.isst_if_device** %9, align 8
  %45 = icmp ne %struct.isst_if_device* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %93

49:                                               ; preds = %41
  %50 = load %struct.isst_if_device*, %struct.isst_if_device** %9, align 8
  %51 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %54 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %55 = call i32 @isst_if_mbox_cmd(%struct.pci_dev* %53, %struct.isst_if_mbox_cmd* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %58
  %62 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %63 = call i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %76 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @isst_store_cmd(i32 %68, i32 %71, i32 %74, i32 1, i32 %77, i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %65, %61, %58, %49
  %83 = load %struct.isst_if_device*, %struct.isst_if_device** %9, align 8
  %84 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %4, align 8
  br label %93

91:                                               ; preds = %82
  %92 = load i32*, i32** %6, align 8
  store i32 0, i32* %92, align 4
  store i64 0, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %88, %46, %38, %28, %17
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i64 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd*) #1

declare dso_local i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.pci_dev* @isst_if_get_pci_dev(i32, i32, i32, i32) #1

declare dso_local %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isst_if_mbox_cmd(%struct.pci_dev*, %struct.isst_if_mbox_cmd*) #1

declare dso_local i32 @isst_store_cmd(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
