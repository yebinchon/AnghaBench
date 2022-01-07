; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_disable_acs_redir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_disable_acs_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@disable_acs_redir_param = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"PCI: Can't parse disable_acs_redir parameter: %s\0A\00", align 1
@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"cannot disable ACS redirect for this hardware as it does not have ACS capabilities\0A\00", align 1
@PCI_ACS_CTRL = common dso_local global i64 0, align 8
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_EC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"disabled ACS redirect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_disable_acs_redir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_disable_acs_redir(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i8*, i8** @disable_acs_redir_param, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  %11 = load i8*, i8** @disable_acs_redir_param, align 8
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %41, %10
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @pci_dev_str_match(%struct.pci_dev* %17, i8* %18, i8** %4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** @disable_acs_redir_param, align 8
  %24 = call i32 @pr_info_once(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %44

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %44

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 59
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 44
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35, %30
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %12

44:                                               ; preds = %40, %28, %22, %12
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %86

48:                                               ; preds = %44
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_dev_specific_disable_acs_redir(%struct.pci_dev* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %86

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %56 = call i32 @pci_find_ext_capability(%struct.pci_dev* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_warn(%struct.pci_dev* %60, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %86

62:                                               ; preds = %53
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @PCI_ACS_CTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @pci_read_config_word(%struct.pci_dev* %63, i64 %67, i32* %6)
  %69 = load i32, i32* @PCI_ACS_RR, align 4
  %70 = load i32, i32* @PCI_ACS_CR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PCI_ACS_EC, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @PCI_ACS_CTRL, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @pci_write_config_word(%struct.pci_dev* %77, i64 %81, i32 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = call i32 @pci_info(%struct.pci_dev* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %62, %59, %52, %47, %9
  ret void
}

declare dso_local i32 @pci_dev_str_match(%struct.pci_dev*, i8*, i8**) #1

declare dso_local i32 @pr_info_once(i8*, i8*) #1

declare dso_local i32 @pci_dev_specific_disable_acs_redir(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
