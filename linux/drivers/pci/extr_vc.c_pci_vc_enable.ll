; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_VC_RES_CTRL = common dso_local global i32 0, align 4
@PCI_CAP_VC_PER_VC_SIZEOF = common dso_local global i32 0, align 4
@PCI_VC_RES_STATUS = common dso_local global i32 0, align 4
@PCI_VC_RES_CTRL_ID = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_VC9 = common dso_local global i64 0, align 8
@PCI_EXT_CAP_ID_VC = common dso_local global i32 0, align 4
@PCI_VC_PORT_CAP1 = common dso_local global i32 0, align 4
@PCI_VC_CAP1_EVCC = common dso_local global i32 0, align 4
@PCI_VC_RES_CTRL_ENABLE = common dso_local global i32 0, align 4
@PCI_VC_RES_STATUS_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"VC%d negotiation stuck pending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @pci_vc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vc_enable(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %19, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_is_pcie(%struct.pci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pcie_downstream_port(%struct.pci_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %3
  br label %185

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PCI_VC_RES_CTRL, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PCI_VC_RES_STATUS, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i32 %44, i32* %15)
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @PCI_VC_RES_CTRL_ID, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %49, i32 %50, i32* %16)
  %52 = load i32, i32* %16, align 4
  %53 = call i64 @PCI_EXT_CAP_ID(i32 %52)
  %54 = load i64, i64* @PCI_EXT_CAP_ID_VC9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %28
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i64 @pci_is_root_bus(%struct.TYPE_2__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %28
  br label %155

63:                                               ; preds = %56
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.pci_dev*, %struct.pci_dev** %67, align 8
  %69 = load i32, i32* @PCI_EXT_CAP_ID_VC, align 4
  %70 = call i32 @pci_find_ext_capability(%struct.pci_dev* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %155

74:                                               ; preds = %63
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PCI_VC_PORT_CAP1, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @pci_read_config_dword(%struct.pci_dev* %79, i32 %82, i32* %17)
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @PCI_VC_CAP1_EVCC, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %126, %74
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @PCI_VC_RES_CTRL, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @PCI_VC_RES_STATUS, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @PCI_CAP_VC_PER_VC_SIZEOF, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.pci_dev*, %struct.pci_dev** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @pci_read_config_dword(%struct.pci_dev* %111, i32 %112, i32* %18)
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @PCI_VC_RES_CTRL_ID, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %92
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.pci_dev*, %struct.pci_dev** %123, align 8
  store %struct.pci_dev* %124, %struct.pci_dev** %19, align 8
  br label %129

125:                                              ; preds = %92
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %87

129:                                              ; preds = %119, %87
  %130 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %131 = icmp ne %struct.pci_dev* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %155

133:                                              ; preds = %129
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %18, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %18, align 4
  %143 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @pci_write_config_dword(%struct.pci_dev* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %138, %133
  %148 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %149 = load i32, i32* %18, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %18, align 4
  %151 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %18, align 4
  %154 = call i32 @pci_write_config_dword(%struct.pci_dev* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %132, %73, %62
  %156 = load i32, i32* @PCI_VC_RES_CTRL_ENABLE, align 4
  %157 = load i32, i32* %15, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @pci_write_config_dword(%struct.pci_dev* %159, i32 %160, i32 %161)
  %163 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @PCI_VC_RES_STATUS_NEGO, align 4
  %166 = call i32 @pci_wait_for_pending(%struct.pci_dev* %163, i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %155
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @pci_err(%struct.pci_dev* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %155
  %173 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %174 = icmp ne %struct.pci_dev* %173, null
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @PCI_VC_RES_STATUS_NEGO, align 4
  %179 = call i32 @pci_wait_for_pending(%struct.pci_dev* %176, i32 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %175
  %182 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @pci_err(%struct.pci_dev* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %27, %181, %175, %172
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_downstream_port(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @PCI_EXT_CAP_ID(i32) #1

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_wait_for_pending(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
