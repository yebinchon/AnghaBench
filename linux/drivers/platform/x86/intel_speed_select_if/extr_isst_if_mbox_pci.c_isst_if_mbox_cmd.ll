; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_pci.c_isst_if_mbox_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_pci.c_isst_if_mbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.isst_if_mbox_cmd = type { i32, i32, i32, i32, i32 }

@OS_MAILBOX_RETRY_COUNT = common dso_local global i32 0, align 4
@PUNIT_MAILBOX_INTERFACE = common dso_local global i32 0, align 4
@PUNIT_MAILBOX_BUSY_BIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PUNIT_MAILBOX_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.isst_if_mbox_cmd*)* @isst_if_mbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_if_mbox_cmd(%struct.pci_dev* %0, %struct.isst_if_mbox_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.isst_if_mbox_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.isst_if_mbox_cmd* %1, %struct.isst_if_mbox_cmd** %5, align 8
  %9 = load i32, i32* @OS_MAILBOX_RETRY_COUNT, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PUNIT_MAILBOX_INTERFACE, align 4
  %13 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %119

18:                                               ; preds = %10
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PUNIT_MAILBOX_BUSY_BIT, align 4
  %21 = call i32 @BIT_ULL(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %10, label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %119

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @PUNIT_MAILBOX_DATA, align 4
  %40 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_write_config_dword(%struct.pci_dev* %38, i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %119

48:                                               ; preds = %37
  %49 = load i32, i32* @PUNIT_MAILBOX_BUSY_BIT, align 4
  %50 = call i32 @BIT_ULL(i32 %49)
  %51 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GENMASK_ULL(i32 13, i32 0)
  %55 = and i32 %53, %54
  %56 = shl i32 %55, 16
  %57 = or i32 %50, %56
  %58 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %57, %61
  %63 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load i32, i32* @PUNIT_MAILBOX_INTERFACE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @pci_write_config_dword(%struct.pci_dev* %67, i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %48
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %119

75:                                               ; preds = %48
  %76 = load i32, i32* @OS_MAILBOX_RETRY_COUNT, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %113, %75
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = load i32, i32* @PUNIT_MAILBOX_INTERFACE, align 4
  %80 = call i32 @pci_read_config_dword(%struct.pci_dev* %78, i32 %79, i32* %7)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %119

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PUNIT_MAILBOX_BUSY_BIT, align 4
  %88 = call i32 @BIT_ULL(i32 %87)
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %113

94:                                               ; preds = %85
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 255
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %119

101:                                              ; preds = %94
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = load i32, i32* @PUNIT_MAILBOX_DATA, align 4
  %104 = call i32 @pci_read_config_dword(%struct.pci_dev* %102, i32 %103, i32* %7)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %119

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %5, align 8
  %112 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %8, align 4
  br label %117

113:                                              ; preds = %91
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %77, label %117

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %107, %98, %83, %73, %46, %35, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
