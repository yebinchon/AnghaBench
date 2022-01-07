; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_pt_check_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_pt_check_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@PT_ADDR_INDX = common dso_local global i32 0, align 4
@PT_SIG_1_ADDR = common dso_local global i32 0, align 4
@PT_READ_INDX = common dso_local global i32 0, align 4
@PT_SIG_1_DATA = common dso_local global i8 0, align 1
@PT_SIG_2_ADDR = common dso_local global i32 0, align 4
@PT_SIG_2_DATA = common dso_local global i8 0, align 1
@PT_SIG_3_ADDR = common dso_local global i32 0, align 4
@PT_SIG_3_DATA = common dso_local global i8 0, align 1
@PT_SIG_4_ADDR = common dso_local global i32 0, align 4
@PT_SIG_4_DATA = common dso_local global i8 0, align 1
@PT4_P2_REG = common dso_local global i32 0, align 4
@PT4_P1_REG = common dso_local global i32 0, align 4
@PT2_P2_REG = common dso_local global i32 0, align 4
@PT2_P1_REG = common dso_local global i32 0, align 4
@PT1_P2_REG = common dso_local global i32 0, align 4
@PT1_P1_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_amd_pt_check_port(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(%struct.device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %13 = load i32, i32* @PT_ADDR_INDX, align 4
  %14 = load i32, i32* @PT_SIG_1_ADDR, align 4
  %15 = call i32 @pci_write_config_word(%struct.pci_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = load i32, i32* @PT_READ_INDX, align 4
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %16, i32 %17, i8* %6)
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @PT_SIG_1_DATA, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = load i32, i32* @PT_ADDR_INDX, align 4
  %28 = load i32, i32* @PT_SIG_2_ADDR, align 4
  %29 = call i32 @pci_write_config_word(%struct.pci_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = load i32, i32* @PT_READ_INDX, align 4
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i8* %6)
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @PT_SIG_2_DATA, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %131

39:                                               ; preds = %25
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load i32, i32* @PT_ADDR_INDX, align 4
  %42 = load i32, i32* @PT_SIG_3_ADDR, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = load i32, i32* @PT_READ_INDX, align 4
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %44, i32 %45, i8* %6)
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @PT_SIG_3_DATA, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %131

53:                                               ; preds = %39
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = load i32, i32* @PT_ADDR_INDX, align 4
  %56 = load i32, i32* @PT_SIG_4_ADDR, align 4
  %57 = call i32 @pci_write_config_word(%struct.pci_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = load i32, i32* @PT_READ_INDX, align 4
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %58, i32 %59, i8* %6)
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @PT_SIG_4_DATA, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %131

67:                                               ; preds = %53
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %113 [
    i32 17337, label %71
    i32 17338, label %71
    i32 17339, label %85
    i32 17340, label %99
  ]

71:                                               ; preds = %67, %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 6
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* @PT4_P2_REG, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 7
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %7, align 1
  br label %84

79:                                               ; preds = %71
  %80 = load i32, i32* @PT4_P1_REG, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %7, align 1
  br label %84

84:                                               ; preds = %79, %74
  br label %114

85:                                               ; preds = %67
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @PT2_P2_REG, align 4
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 3
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %7, align 1
  br label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @PT2_P1_REG, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 5
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %7, align 1
  br label %98

98:                                               ; preds = %93, %88
  br label %114

99:                                               ; preds = %67
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 3
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @PT1_P2_REG, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 4
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %7, align 1
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* @PT1_P1_REG, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 4
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %7, align 1
  br label %112

112:                                              ; preds = %107, %102
  br label %114

113:                                              ; preds = %67
  store i32 0, i32* %3, align 4
  br label %131

114:                                              ; preds = %112, %98, %84
  %115 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %116 = load i32, i32* @PT_ADDR_INDX, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @pci_write_config_word(%struct.pci_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %120 = load i32, i32* @PT_READ_INDX, align 4
  %121 = call i32 @pci_read_config_byte(%struct.pci_dev* %119, i32 %120, i8* %6)
  %122 = load i8, i8* %6, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %7, align 1
  %125 = call zeroext i8 @BIT(i8 zeroext %124)
  %126 = zext i8 %125 to i32
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %114, %113, %66, %52, %38, %24
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local zeroext i8 @BIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
