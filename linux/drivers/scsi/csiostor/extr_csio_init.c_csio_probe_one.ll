; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.csio_hw = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_lnode = type { i32 }

@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CSIO_HWF_ROOT_NO_RELAXED_ORDERING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to start FW, continuing in debug mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%u.%u.%u.%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"probe of device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @csio_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_hw*, align 8
  %10 = alloca %struct.csio_lnode*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @csio_is_t5(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @csio_is_t6(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %172

29:                                               ; preds = %18, %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @csio_pci_init(%struct.pci_dev* %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %166

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call %struct.csio_hw* @csio_hw_alloc(%struct.pci_dev* %36)
  store %struct.csio_hw* %37, %struct.csio_hw** %9, align 8
  %38 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %39 = icmp ne %struct.csio_hw* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %163

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @pcie_relaxed_ordering_enabled(%struct.pci_dev* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @CSIO_HWF_ROOT_NO_RELAXED_ORDERING, align 4
  %49 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %50 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %56 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, %struct.csio_hw* %55)
  %57 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %58 = call i32 @csio_hw_start(%struct.csio_hw* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %172

70:                                               ; preds = %61
  br label %146

71:                                               ; preds = %53
  %72 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %73 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %76 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @FW_HDR_FW_VER_MAJOR_G(i32 %77)
  %79 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %80 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @FW_HDR_FW_VER_MINOR_G(i32 %81)
  %83 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %84 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @FW_HDR_FW_VER_MICRO_G(i32 %85)
  %87 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %88 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @FW_HDR_FW_VER_BUILD_G(i32 %89)
  %91 = call i32 @sprintf(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %82, i32 %86, i32 %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %138, %71
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %95 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %141

98:                                               ; preds = %92
  %99 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  %102 = call %struct.csio_lnode* @csio_shost_init(%struct.csio_hw* %99, i32* %101, i32 1, i32* null)
  store %struct.csio_lnode* %102, %struct.csio_lnode** %10, align 8
  %103 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %104 = icmp ne %struct.csio_lnode* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %141

108:                                              ; preds = %98
  %109 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %110 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %118 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %120 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %119, i32 0, i32 1
  %121 = call i32 @spin_lock_irq(i32* %120)
  %122 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %123 = call i64 @csio_lnode_start(%struct.csio_lnode* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %125, %108
  %129 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %130 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock_irq(i32* %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %141

135:                                              ; preds = %128
  %136 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %137 = call i32 @csio_lnode_init_post(%struct.csio_lnode* %136)
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %92

141:                                              ; preds = %134, %105, %92
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %146

145:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %172

146:                                              ; preds = %144, %70
  %147 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %148 = call i32 @csio_lnodes_block_request(%struct.csio_hw* %147)
  %149 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %150 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %149, i32 0, i32 1
  %151 = call i32 @spin_lock_irq(i32* %150)
  %152 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %153 = call i32 @csio_hw_stop(%struct.csio_hw* %152)
  %154 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %155 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock_irq(i32* %155)
  %157 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %158 = call i32 @csio_lnodes_unblock_request(%struct.csio_hw* %157)
  %159 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %160 = call i32 @csio_lnodes_exit(%struct.csio_hw* %159, i32 0)
  %161 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %162 = call i32 @csio_hw_free(%struct.csio_hw* %161)
  br label %163

163:                                              ; preds = %146, %40
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = call i32 @csio_pci_exit(%struct.pci_dev* %164, i32* %7)
  br label %166

166:                                              ; preds = %163, %34
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 1
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %145, %66, %26
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @csio_is_t5(i32) #1

declare dso_local i32 @csio_is_t6(i32) #1

declare dso_local i32 @csio_pci_init(%struct.pci_dev*, i32*) #1

declare dso_local %struct.csio_hw* @csio_hw_alloc(%struct.pci_dev*) #1

declare dso_local i32 @pcie_relaxed_ordering_enabled(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.csio_hw*) #1

declare dso_local i32 @csio_hw_start(%struct.csio_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MAJOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MINOR_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_MICRO_G(i32) #1

declare dso_local i32 @FW_HDR_FW_VER_BUILD_G(i32) #1

declare dso_local %struct.csio_lnode* @csio_shost_init(%struct.csio_hw*, i32*, i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @csio_lnode_start(%struct.csio_lnode*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_init_post(%struct.csio_lnode*) #1

declare dso_local i32 @csio_lnodes_block_request(%struct.csio_hw*) #1

declare dso_local i32 @csio_hw_stop(%struct.csio_hw*) #1

declare dso_local i32 @csio_lnodes_unblock_request(%struct.csio_hw*) #1

declare dso_local i32 @csio_lnodes_exit(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_hw_free(%struct.csio_hw*) #1

declare dso_local i32 @csio_pci_exit(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
